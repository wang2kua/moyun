import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesService extends ChangeNotifier {
  static const _key = 'favorite_poems';
  final Set<String> _favorites = {};
  bool _loaded = false;

  bool isFavorite(String id) => _favorites.contains(id);
  int get count => _favorites.length;

  Future<void> load() async {
    if (_loaded) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      _favorites.addAll(prefs.getStringList(_key) ?? []);
    } catch (_) {
      // Web 热重载可能失败，忽略
    }
    _loaded = true;
    notifyListeners();
  }

  Future<void> toggle(String id) async {
    if (_favorites.contains(id)) {
      _favorites.remove(id);
    } else {
      _favorites.add(id);
    }
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_key, _favorites.toList());
    } catch (_) {}
  }
}

final favoritesService = FavoritesService();
