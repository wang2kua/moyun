import 'package:moyun/data/poems_data.dart';

void main() {
  print('=== 墨韵诗词数据完整性检查 ===\n');
  
  final issues = <String, List<String>>{
    '缺少拼音': [],
    '拼音不全': [],
    '缺少译文': [],
    '译文过短': [],
    '缺少注释': [],
  };
  
  for (var p in allPoems) {
    final id = '${p.id} - ${p.title}';
    
    if (p.pinyin?.isEmpty ?? true) {
      issues['缺少拼音']!.add('$id (${p.author})');
    } else {
      final cLines = p.content.split('\n').where((l) => l.trim().isNotEmpty).length;
      final pLines = p.pinyin!.split('\n').where((l) => l.trim().isNotEmpty).length;
      if (pLines < cLines - 1) issues['拼音不全']!.add('$id: 内容${cLines}行, 拼音${pLines}行');
    }
    
    if (p.translation?.isEmpty ?? true) {
      issues['缺少译文']!.add('$id (${p.author})');
    } else {
      final cLen = p.content.replaceAll(RegExp(r'[\n ]'), '').length;
      final tLen = p.translation!.replaceAll(RegExp(r'[\n ]'), '').length;
      if (tLen < cLen) issues['译文过短']!.add('$id: 原文${cLen}字, 译文${tLen}字');
    }
    
    if (p.annotation?.isEmpty ?? true) issues['缺少注释']!.add('$id (${p.author})');
  }
  
  print('📊 统计: 总诗词数 ${allPoems.length}');
  issues.forEach((k, v) => print('$k: ${v.length}'));
  print('');
  
  issues.forEach((title, items) {
    if (items.isNotEmpty) {
      print('${title.contains('不全') || title.contains('过短') ? '⚠️' : '❌'} $title (${items.length}首):');
      items.forEach((i) => print('  $i'));
      print('');
    }
  });
  
  print('✅ 检查完成!');
}
