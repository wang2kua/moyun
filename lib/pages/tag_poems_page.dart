import 'package:flutter/material.dart';
import '../models/poem.dart';
import '../data/poems_data.dart';
import '../services/favorites_service.dart';
import '../services/progress_service.dart';
import 'poem_detail_page.dart';

class TagPoemsPage extends StatelessWidget {
  final String tag;
  const TagPoemsPage({super.key, required this.tag});

  List<Poem> get poems => allPoems.where((p) => p.tags.contains(tag)).toList();

  @override
  Widget build(BuildContext context) {
    final list = poems;
    return Scaffold(
      appBar: AppBar(title: Text('「$tag」相关诗词 (${list.length}首)')),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final p = list[index];
          final isLearned = progressService.isLearned(p.id);
          final isFav = favoritesService.isFavorite(p.id);
          return ListTile(
            leading: Icon(
              isLearned ? Icons.check_circle : Icons.circle_outlined,
              color: isLearned ? Colors.green : Colors.grey,
            ),
            title: Text(p.title),
            subtitle: Text('${p.dynasty} · ${p.author}'),
            trailing: isFav ? const Icon(Icons.favorite, color: Colors.red, size: 16) : null,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PoemDetailPage(poems: list, initialIndex: index)),
            ),
          );
        },
      ),
    );
  }
}
