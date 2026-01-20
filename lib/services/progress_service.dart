import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressService extends ChangeNotifier {
  static const _learnedKey = 'learned_poems';
  static const _dailyKey = 'daily_poem_date';
  static const _dailyIdKey = 'daily_poem_id';
  static const _checkInKey = 'check_in_dates';
  static const _todayLearnedKey = 'today_learned_date';
  static const _todayRecitedKey = 'today_recited_date';
  static const _studyStartKey = 'study_start_time';
  static const _studyDurationKey = 'study_duration_date';
  
  final Set<String> _learned = {};
  final Set<String> _checkInDates = {};
  String? _dailyPoemId;
  String? _dailyDate;
  String? _todayLearnedDate;
  String? _todayRecitedDate;
  String? _studyDurationDate;
  int _studyStartTime = 0;
  bool _loaded = false;

  Set<String> get learned => _learned;
  int get learnedCount => _learned.length;
  bool isLearned(String id) => _learned.contains(id);
  String? get dailyPoemId => _dailyPoemId;
  String? get dailyDate => _dailyDate;
  Set<String> get checkInDates => _checkInDates;
  int get checkInStreak => _calculateStreak();
  bool get isCheckedInToday => _checkInDates.contains(_today());
  
  // 今日打卡条件
  bool get hasLearnedToday => _todayLearnedDate == _today();
  bool get hasRecitedToday => _todayRecitedDate == _today();
  bool get hasStudied5Min => _studyDurationDate == _today();
  bool get canCheckIn => hasLearnedToday || hasRecitedToday || hasStudied5Min;
  
  int get studySeconds {
    if (_studyStartTime == 0) return 0;
    return DateTime.now().millisecondsSinceEpoch ~/ 1000 - _studyStartTime;
  }

  Future<void> load() async {
    if (_loaded) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      _learned.addAll(prefs.getStringList(_learnedKey) ?? []);
      _dailyDate = prefs.getString(_dailyKey);
      _dailyPoemId = prefs.getString(_dailyIdKey);
      _checkInDates.addAll(prefs.getStringList(_checkInKey) ?? []);
      _todayLearnedDate = prefs.getString(_todayLearnedKey);
      _todayRecitedDate = prefs.getString(_todayRecitedKey);
      _studyDurationDate = prefs.getString(_studyDurationKey);
    } catch (_) {}
    _loaded = true;
    _startStudyTimer();
    notifyListeners();
  }
  
  void _startStudyTimer() {
    _studyStartTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  }
  
  Future<void> checkStudyDuration() async {
    if (_studyDurationDate == _today()) return;
    if (studySeconds >= 300) { // 5分钟 = 300秒
      _studyDurationDate = _today();
      notifyListeners();
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(_studyDurationKey, _today());
      } catch (_) {}
    }
  }

  Future<void> markLearned(String id) async {
    final isNew = !_learned.contains(id);
    _learned.add(id);
    if (isNew) {
      _todayLearnedDate = _today();
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList(_learnedKey, _learned.toList());
        await prefs.setString(_todayLearnedKey, _today());
      } catch (_) {}
    }
    notifyListeners();
  }
  
  Future<void> markRecitedToday() async {
    if (_todayRecitedDate == _today()) return;
    _todayRecitedDate = _today();
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_todayRecitedKey, _today());
    } catch (_) {}
  }

  Future<void> unmarkLearned(String id) async {
    if (!_learned.contains(id)) return;
    _learned.remove(id);
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_learnedKey, _learned.toList());
    } catch (_) {}
  }

  Future<void> setDailyPoem(String id) async {
    final today = _today();
    _dailyDate = today;
    _dailyPoemId = id;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_dailyKey, today);
      await prefs.setString(_dailyIdKey, id);
    } catch (_) {}
  }

  Future<void> checkIn() async {
    final today = _today();
    if (_checkInDates.contains(today)) return;
    _checkInDates.add(today);
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_checkInKey, _checkInDates.toList());
    } catch (_) {}
  }

  String _today() => DateTime.now().toIso8601String().substring(0, 10);

  int _calculateStreak() {
    if (_checkInDates.isEmpty) return 0;
    final sorted = _checkInDates.toList()..sort((a, b) => b.compareTo(a));
    int streak = 0;
    var date = DateTime.now();
    for (var i = 0; i < sorted.length; i++) {
      final checkDate = sorted[i];
      final expected = date.toIso8601String().substring(0, 10);
      if (checkDate == expected) {
        streak++;
        date = date.subtract(const Duration(days: 1));
      } else {
        break;
      }
    }
    return streak;
  }
}

final progressService = ProgressService();
