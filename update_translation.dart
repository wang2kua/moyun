import 'dart:io';
import 'package:moyun/data/poems_data.dart';

void main() async {
  print('=== 墨韵诗词译文更新工具 ===\n');
  
  final needsUpdate = allPoems.where((p) {
    if (p.translation?.isEmpty ?? true) return true;
    final cLen = p.content.replaceAll(RegExp(r'[\n ]'), '').length;
    final tLen = p.translation!.replaceAll(RegExp(r'[\n ]'), '').length;
    return tLen < cLen;
  }).toList();
  
  print('需要更新译文的诗词: ${needsUpdate.length}首\n');
  
  for (var p in needsUpdate) {
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('ID: ${p.id}');
    print('标题: ${p.title}');
    print('作者: ${p.author}');
    print('\n原文:\n${p.content}');
    if (p.translation?.isNotEmpty ?? false) {
      print('\n当前译文:\n${p.translation}');
    }
    print('\n请输入新译文 (输入空行结束):');
    
    final lines = <String>[];
    while (true) {
      final line = stdin.readLineSync();
      if (line == null || line.trim().isEmpty) break;
      lines.add(line);
    }
    
    if (lines.isNotEmpty) {
      final newTranslation = lines.join('\n');
      print('\n更新为:\n$newTranslation');
      print('\n确认更新? (y/n): ');
      final confirm = stdin.readLineSync();
      if (confirm?.toLowerCase() == 'y') {
        print('✅ 已记录更新 (需手动修改 poems_data.dart)');
        print('   translation: \'\'\'$newTranslation\'\'\',');
      }
    }
    print('');
  }
  
  print('✅ 完成!');
}
