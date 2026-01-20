import 'package:flutter/material.dart';
import '../models/poem.dart';
import '../services/favorites_service.dart';
import '../services/progress_service.dart';
import '../services/tts_service.dart';
import '../services/settings_service.dart';
import 'recite_mode_page.dart';
import 'tag_poems_page.dart';

class PoemDetailPage extends StatefulWidget {
  final List<Poem> poems;
  final int initialIndex;
  const PoemDetailPage({super.key, required this.poems, this.initialIndex = 0});

  @override
  State<PoemDetailPage> createState() => _PoemDetailPageState();
}

class _PoemDetailPageState extends State<PoemDetailPage> {
  bool _isSpeaking = false;
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _currentIndex);
    favoritesService.addListener(_refresh);
    progressService.addListener(_refresh);
    settingsService.addListener(_refresh);
  }

  @override
  void dispose() {
    _pageController.dispose();
    favoritesService.removeListener(_refresh);
    progressService.removeListener(_refresh);
    settingsService.removeListener(_refresh);
    ttsService.stop();
    super.dispose();
  }

  void _refresh() => setState(() {});

  Poem get _currentPoem => widget.poems[_currentIndex];

  Future<void> _toggleSpeak() async {
    if (_isSpeaking) {
      await ttsService.stop();
      setState(() => _isSpeaking = false);
    } else {
      setState(() => _isSpeaking = true);
      await ttsService.speak(_currentPoem.content, onComplete: () {
        if (mounted) setState(() => _isSpeaking = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final poem = _currentPoem;
    final isFav = favoritesService.isFavorite(poem.id);
    final isLearned = progressService.isLearned(poem.id);
    final fontSize = settingsService.fontSize;

    return Scaffold(
      appBar: AppBar(
        title: Text(poem.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.text_decrease),
            onPressed: fontSize > 14 ? settingsService.decrease : null,
            tooltip: '缩小字体',
          ),
          IconButton(
            icon: const Icon(Icons.text_increase),
            onPressed: fontSize < 32 ? settingsService.increase : null,
            tooltip: '放大字体',
          ),
          IconButton(
            icon: Icon(_isSpeaking ? Icons.stop_circle : Icons.volume_up),
            onPressed: _toggleSpeak,
            tooltip: _isSpeaking ? '停止朗读' : '朗读',
          ),
          IconButton(
            icon: Icon(isLearned ? Icons.check_circle : Icons.check_circle_outline, 
                       color: isLearned ? Colors.green : null),
            onPressed: () => isLearned ? progressService.unmarkLearned(poem.id) : progressService.markLearned(poem.id),
            tooltip: isLearned ? '取消已学' : '标记已学',
          ),
          IconButton(
            icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: isFav ? Colors.red : null),
            onPressed: () => favoritesService.toggle(poem.id),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ReciteModePage(poem: poem))),
        icon: const Icon(Icons.school),
        label: const Text('背诵'),
      ),
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.poems.length,
        onPageChanged: (index) {
          ttsService.stop();
          setState(() {
            _currentIndex = index;
            _isSpeaking = false;
          });
        },
        itemBuilder: (context, index) {
          final p = widget.poems[index];
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text('${p.dynasty} · ${p.author}', style: TextStyle(fontSize: fontSize * 0.8, color: Colors.grey[600]))),
                const SizedBox(height: 16),
                Center(child: Text(p.content, style: TextStyle(fontSize: fontSize, height: 2), textAlign: TextAlign.center)),
                if (p.pinyin != null) ...[
                  const SizedBox(height: 16),
                  Center(child: Text(p.pinyin!, style: TextStyle(fontSize: fontSize * 0.7, height: 2, color: Colors.grey[600]), textAlign: TextAlign.center)),
                ],
                const SizedBox(height: 24),
                if (p.annotation != null) ...[
                  Text('【注释】', style: TextStyle(fontSize: fontSize * 0.8, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(p.annotation!, style: TextStyle(fontSize: fontSize * 0.7, height: 1.8)),
                  const SizedBox(height: 16),
                ],
                if (p.translation != null) ...[
                  Text('【译文】', style: TextStyle(fontSize: fontSize * 0.8, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(p.translation!, style: TextStyle(fontSize: fontSize * 0.7, height: 1.8)),
                  const SizedBox(height: 16),
                ],
                Wrap(spacing: 8, children: p.tags.map((tag) => ActionChip(
                  label: Text(tag),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => TagPoemsPage(tag: tag))),
                )).toList()),
                const SizedBox(height: 80),
                if (index < widget.poems.length - 1)
                  Center(child: Text('← 左滑查看下一首', style: TextStyle(color: Colors.grey[400], fontSize: 12))),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
