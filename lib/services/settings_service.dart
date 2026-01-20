import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService extends ChangeNotifier {
  static const _fontSizeKey = 'font_size';
  static const _darkModeKey = 'dark_mode';
  double _fontSize = 20.0;
  bool _darkMode = false;
  bool _loaded = false;

  double get fontSize => _fontSize;
  bool get darkMode => _darkMode;

  Future<void> load() async {
    if (_loaded) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      _fontSize = prefs.getDouble(_fontSizeKey) ?? 20.0;
      _darkMode = prefs.getBool(_darkModeKey) ?? false;
    } catch (_) {}
    _loaded = true;
    notifyListeners();
  }

  Future<void> setFontSize(double size) async {
    _fontSize = size.clamp(14.0, 32.0);
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_fontSizeKey, _fontSize);
    } catch (_) {}
  }

  void increase() => setFontSize(_fontSize + 2);
  void decrease() => setFontSize(_fontSize - 2);

  Future<void> toggleDarkMode() async {
    _darkMode = !_darkMode;
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_darkModeKey, _darkMode);
    } catch (_) {}
  }
}

final settingsService = SettingsService();
