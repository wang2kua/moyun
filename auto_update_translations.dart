import 'dart:convert';
import 'dart:io';
import 'package:moyun/data/poems_data.dart';

void main() async {
  print('=== 墨韵诗词译文自动更新 ===\n');
  
  // 1. 扫描需要更新的诗词
  final needsUpdate = allPoems.where((p) {
    if (p.translation?.isEmpty ?? true) return true;
    final cLen = p.content.replaceAll(RegExp(r'[\n ]'), '').length;
    final tLen = p.translation!.replaceAll(RegExp(r'[\n ]'), '').length;
    return tLen < cLen;
  }).toList();
  
  print('📊 需要更新: ${needsUpdate.length}首\n');
  
  if (needsUpdate.isEmpty) {
    print('✅ 无需更新');
    return;
  }
  
  // 2. 批量生成译文（使用 Delegate）
  print('🤖 正在生成译文...\n');
  final updates = <Map<String, String>>[];
  
  for (var p in needsUpdate) {
    final prompt = '''请将以下古诗词翻译成现代汉语白话文：
- 逐句翻译，保持原文结构
- 语言通俗易懂，适合中小学生
- 只输出译文内容

《${p.title}》${p.author}
${p.content}''';
    
    print('生成 [${p.id}] ${p.title}');
    // 这里模拟 LLM 调用，实际使用时替换为真实 API
    final translation = await _generateTranslation(prompt);
    
    updates.add({
      'id': p.id,
      'title': p.title,
      'translation': translation,
    });
  }
  
  // 3. 生成更新脚本
  print('\n📝 生成更新脚本...');
  final script = _generateUpdateScript(updates);
  await File('apply_translations.dart').writeAsString(script);
  
  print('✅ 完成！运行以下命令应用更新：');
  print('   dart apply_translations.dart');
}

Future<String> _generateTranslation(String prompt) async {
  // TODO: 调用实际的 LLM API
  // 这里返回占位符，实际使用时替换为 API 调用
  return '[待生成译文]';
}

String _generateUpdateScript(List<Map<String, String>> updates) {
  final buffer = StringBuffer();
  buffer.writeln("import 'dart:io';");
  buffer.writeln();
  buffer.writeln('void main() {');
  buffer.writeln("  final file = File('lib/data/poems_data.dart');");
  buffer.writeln('  var content = file.readAsStringSync();');
  buffer.writeln();
  
  for (var update in updates) {
    buffer.writeln("  // 更新 [${update['id']}] ${update['title']}");
    buffer.writeln("  content = content.replaceFirst(");
    buffer.writeln("    RegExp(r\"id: '${update['id']}',[\\s\\S]*?translation: '''[\\s\\S]*?'''\"),");
    buffer.writeln("    (match) => match.replaceFirst(");
    buffer.writeln("      RegExp(r\"translation: '''[\\s\\S]*?'''\"),");
    buffer.writeln("      \"translation: '''${update['translation']}'''\",");
    buffer.writeln("    ),");
    buffer.writeln("  );");
    buffer.writeln();
  }
  
  buffer.writeln('  file.writeAsStringSync(content);');
  buffer.writeln("  print('✅ 已更新 ${updates.length} 首诗词译文');");
  buffer.writeln('}');
  
  return buffer.toString();
}
