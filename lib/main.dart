import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'models/poem.dart';
import 'data/poems_data.dart';
import 'pages/poem_detail_page.dart';
import 'services/favorites_service.dart';
import 'services/progress_service.dart';
import 'services/tts_service.dart';
import 'services/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([favoritesService.load(), progressService.load(), ttsService.init(), settingsService.load()]);
  runApp(const MoyunApp());
}

class MoyunApp extends StatefulWidget {
  const MoyunApp({super.key});

  @override
  State<MoyunApp> createState() => _MoyunAppState();
}

class _MoyunAppState extends State<MoyunApp> {
  @override
  void initState() {
    super.initState();
    settingsService.addListener(_refresh);
  }

  @override
  void dispose() {
    settingsService.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '墨韵',
      theme: ThemeData(primarySwatch: Colors.brown, useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(primarySwatch: Colors.brown, useMaterial3: true, brightness: Brightness.dark),
      themeMode: settingsService.darkMode ? ThemeMode.dark : ThemeMode.light,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _searchQuery = '';
  String? _filterDynasty;
  String? _filterAuthor;
  String? _filterTag;
  Timer? _studyTimer;

  @override
  void initState() {
    super.initState();
    favoritesService.addListener(_refresh);
    progressService.addListener(_refresh);
    _initDailyPoem();
    _startStudyTimer();
  }

  @override
  void dispose() {
    _studyTimer?.cancel();
    favoritesService.removeListener(_refresh);
    progressService.removeListener(_refresh);
    super.dispose();
  }
  
  void _startStudyTimer() {
    _studyTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      progressService.checkStudyDuration();
    });
  }

  void _refresh() => setState(() {});

  void _initDailyPoem() {
    final today = DateTime.now().toIso8601String().substring(0, 10);
    if (progressService.dailyDate != today) {
      final poem = allPoems[Random().nextInt(allPoems.length)];
      progressService.setDailyPoem(poem.id);
    }
  }

  Poem? get dailyPoem {
    final id = progressService.dailyPoemId;
    if (id == null) return null;
    return allPoems.cast<Poem?>().firstWhere((p) => p?.id == id, orElse: () => null);
  }

  List<Poem> get filteredPoems {
    return allPoems.where((p) {
      if (_searchQuery.isNotEmpty) {
        final q = _searchQuery.toLowerCase();
        if (!p.title.toLowerCase().contains(q) &&
            !p.author.toLowerCase().contains(q) &&
            !p.content.toLowerCase().contains(q) &&
            !p.tags.any((t) => t.toLowerCase().contains(q))) {
          return false;
        }
      }
      if (_filterDynasty != null && p.dynasty != _filterDynasty) return false;
      if (_filterAuthor != null && p.author != _filterAuthor) return false;
      if (_filterTag != null && !p.tags.contains(_filterTag)) return false;
      return true;
    }).toList();
  }

  List<Poem> get favoritePoems => allPoems.where((p) => favoritesService.isFavorite(p.id)).toList();

  Map<int, List<Poem>> get poemsByGrade {
    final map = <int, List<Poem>>{};
    for (var p in allPoems) {
      map.putIfAbsent(p.grade, () => []).add(p);
    }
    return Map.fromEntries(map.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));
  }

  Set<String> get allDynasties => allPoems.map((p) => p.dynasty).toSet();
  Set<String> get allAuthors => allPoems.map((p) => p.author).toSet();
  Set<String> get allTags => allPoems.expand((p) => p.tags).toSet();

  String _gradeLabel(int grade) => grade <= 6 ? '小学$grade年级' : '初中';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('墨韵 - 古诗词学习'),
        actions: [
          IconButton(
            icon: Icon(settingsService.darkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: settingsService.toggleDarkMode,
            tooltip: settingsService.darkMode ? '浅色模式' : '深色模式',
          ),
        ],
      ),
      body: [_buildHomeView(), _buildSearchView(), _buildFavoritesView()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索'),
          BottomNavigationBarItem(
            icon: Badge(
              isLabelVisible: favoritesService.count > 0,
              label: Text('${favoritesService.count}'),
              child: const Icon(Icons.favorite),
            ),
            label: '收藏',
          ),
        ],
      ),
    );
  }

  Widget _buildHomeView() {
    final daily = dailyPoem;
    return ListView(
      children: [
        if (daily != null) _buildDailyCard(daily),
        _buildProgressCard(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('小学阶段', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ...poemsByGrade.entries.where((e) => e.key <= 6).map((e) => _buildGradeTile(e.key, e.value)),
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('初中阶段', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        _buildMiddleSchoolTile(),
      ],
    );
  }

  Widget _buildMiddleSchoolTile() {
    final poems = middlePoems;
    final learnedCount = poems.where((p) => progressService.isLearned(p.id)).length;
    return ExpansionTile(
      title: Text('初中必背古诗词 ($learnedCount/${poems.length}首)'),
      children: poems.map((p) => _buildPoemTile(p)).toList(),
    );
  }

  Widget _buildDailyCard(Poem poem) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => PoemDetailPage(poems: [poem], initialIndex: 0))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.wb_sunny, color: Colors.orange),
                  const SizedBox(width: 8),
                  const Text('每日一诗', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text(DateTime.now().toIso8601String().substring(0, 10), style: const TextStyle(fontSize: 12)),
                ],
              ),
              const SizedBox(height: 12),
              Text(poem.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text('${poem.dynasty} · ${poem.author}'),
              const SizedBox(height: 8),
              Text(
                poem.content.split('\n').take(2).join('\n'),
                style: const TextStyle(fontSize: 16, height: 1.6),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressCard() {
    final learned = progressService.learnedCount;
    final total = allPoems.length;
    final percent = total > 0 ? learned / total : 0.0;
    final streak = progressService.checkInStreak;
    final isCheckedIn = progressService.isCheckedInToday;
    final canCheckIn = progressService.canCheckIn;
    final hasLearned = progressService.hasLearnedToday;
    final hasRecited = progressService.hasRecitedToday;
    final hasStudied = progressService.hasStudied5Min;
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.trending_up, color: Colors.green),
                const SizedBox(width: 8),
                const Text('学习进度', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('$learned / $total 首'),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(value: percent, minHeight: 8, borderRadius: BorderRadius.circular(4)),
            const SizedBox(height: 8),
            Text('已掌握 ${(percent * 100).toStringAsFixed(1)}%', style: const TextStyle(fontSize: 12)),
            const Divider(height: 24),
            Row(
              children: [
                Icon(Icons.local_fire_department, color: isCheckedIn ? Colors.orange : Colors.grey),
                const SizedBox(width: 8),
                Text('连续打卡 $streak 天', style: const TextStyle(fontSize: 14)),
                const Spacer(),
                FilledButton.icon(
                  onPressed: isCheckedIn ? null : (canCheckIn ? progressService.checkIn : () => _showCheckInTip(context)),
                  icon: Icon(isCheckedIn ? Icons.check : Icons.touch_app),
                  label: Text(isCheckedIn ? '已打卡' : '打卡'),
                  style: FilledButton.styleFrom(
                    backgroundColor: isCheckedIn ? Colors.grey : (canCheckIn ? Colors.orange : Colors.grey[400]),
                  ),
                ),
              ],
            ),
            if (!isCheckedIn) ...[
              const SizedBox(height: 12),
              Text(
                '打卡条件（完成任一即可）：',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children: [
                  _buildConditionChip('学习新诗', hasLearned),
                  _buildConditionChip('完成背诵', hasRecited),
                  _buildConditionChip('学习5分钟', hasStudied),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
  
  Widget _buildConditionChip(String label, bool done) {
    return Chip(
      avatar: Icon(done ? Icons.check_circle : Icons.circle_outlined, 
                   size: 18, color: done ? Colors.green : Colors.grey),
      label: Text(label, style: TextStyle(fontSize: 12, color: done ? Colors.green : Colors.grey)),
      backgroundColor: done ? Colors.green[50] : null,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
    );
  }
  
  void _showCheckInTip(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('请先完成任一打卡条件：学习新诗 / 完成背诵 / 学习5分钟'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget _buildGradeTile(int grade, List<Poem> poems) {
    final learnedInGrade = poems.where((p) => progressService.isLearned(p.id)).length;
    final hasSemester = poems.any((p) => p.semester != null);
    
    if (hasSemester) {
      final sem1 = poems.where((p) => p.semester == 1).toList();
      final sem2 = poems.where((p) => p.semester == 2).toList();
      return ExpansionTile(
        title: Text('${_gradeLabel(grade)} ($learnedInGrade/${poems.length}首)'),
        children: [
          if (sem1.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text('📚 ${grade}年级上册', style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            ...sem1.asMap().entries.map((e) => _buildPoemTileWithIndex(e.value, e.key + 1)),
          ],
          if (sem2.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text('📚 ${grade}年级下册', style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            ...sem2.asMap().entries.map((e) => _buildPoemTileWithIndex(e.value, sem1.length + e.key + 1)),
          ],
        ],
      );
    }
    return ExpansionTile(
      title: Text('${_gradeLabel(grade)} ($learnedInGrade/${poems.length}首)'),
      children: poems.asMap().entries.map((e) => _buildPoemTileWithIndex(e.value, e.key + 1)).toList(),
    );
  }

  Widget _buildPoemTileWithIndex(Poem p, int index) {
    final isLearned = progressService.isLearned(p.id);
    return ListTile(
      leading: SizedBox(
        width: 40,
        child: Center(
          child: isLearned 
            ? const Icon(Icons.check_circle, color: Colors.green, size: 20)
            : Text('$index', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      ),
      title: Text(p.title),
      subtitle: Text('${p.dynasty}·${p.author}'),
      trailing: favoritesService.isFavorite(p.id) ? const Icon(Icons.favorite, color: Colors.red, size: 16) : null,
      onTap: () {
        final poems = filteredPoems;
        final index = poems.indexOf(p);
        Navigator.push(context, MaterialPageRoute(builder: (_) => PoemDetailPage(poems: poems, initialIndex: index)));
      },
    );
  }

  Widget _buildSearchView() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration: const InputDecoration(
              hintText: '搜索诗词、作者、主题...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (v) => setState(() => _searchQuery = v),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              _buildFilterChip('朝代', _filterDynasty, allDynasties, (v) => setState(() => _filterDynasty = v)),
              const SizedBox(width: 8),
              _buildFilterChip('作者', _filterAuthor, allAuthors, (v) => setState(() => _filterAuthor = v)),
              const SizedBox(width: 8),
              _buildFilterChip('主题', _filterTag, allTags, (v) => setState(() => _filterTag = v)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: filteredPoems.isEmpty
              ? const Center(child: Text('没有找到相关诗词'))
              : ListView(children: filteredPoems.map((p) => _buildPoemTile(p)).toList()),
        ),
      ],
    );
  }

  Widget _buildFavoritesView() {
    if (favoritePoems.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('还没有收藏的诗词', style: TextStyle(color: Colors.grey)),
            Text('点击诗词详情页的 ❤ 添加收藏', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      );
    }
    return ListView(children: favoritePoems.map((p) => _buildPoemTile(p)).toList());
  }

  Widget _buildFilterChip(String label, String? value, Set<String> options, Function(String?) onChanged) {
    return PopupMenuButton<String?>(
      child: Chip(
        label: Text(value ?? label),
        deleteIcon: value != null ? const Icon(Icons.close, size: 18) : null,
        onDeleted: value != null ? () => onChanged(null) : null,
      ),
      itemBuilder: (_) => options.map((o) => PopupMenuItem(value: o, child: Text(o))).toList(),
      onSelected: onChanged,
    );
  }

  Widget _buildPoemTile(Poem p) {
    final isLearned = progressService.isLearned(p.id);
    return ListTile(
      leading: Icon(
        isLearned ? Icons.check_circle : Icons.circle_outlined,
        color: isLearned ? Colors.green : Colors.grey,
      ),
      title: Text(p.title),
      subtitle: Text('${p.dynasty} · ${p.author}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (favoritesService.isFavorite(p.id)) const Icon(Icons.favorite, color: Colors.red, size: 16),
          const SizedBox(width: 8),
          Text(_gradeLabel(p.grade), style: const TextStyle(fontSize: 12)),
        ],
      ),
      onTap: () {
        final poems = filteredPoems;
        final index = poems.indexOf(p);
        Navigator.push(context, MaterialPageRoute(builder: (_) => PoemDetailPage(poems: poems, initialIndex: index)));
      },
    );
  }
}
