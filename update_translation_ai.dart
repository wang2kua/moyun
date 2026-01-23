import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:moyun/data/poems_data.dart';

Future<String?> generateTranslation(String title, String author, String content) async {
  final apiKey = Platform.environment['OPENAI_API_KEY'];
  if (apiKey == null) {
    print('❌ 请设置环境变量 OPENAI_API_KEY');
    return null;
  }
  
  final prompt = '''请将以下古诗词翻译成现代汉语白话文，要求：
1. 逐句翻译，保持原文结构
2. 语言通俗易懂，适合中小学生理解
3. 只输出译文，不要其他说明

标题：$title
作者：$author
原文：
$content''';
  
  try {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        'model': 'gpt-4o-mini',
        'messages': [{'role': 'user', 'content': prompt}],
        'temperature': 0.7,
      }),
    );
    
    if (response.statusCode == 200) {
      final data = jsonDecode(utf8.decode(response.bodyBytes));
      return data['choices'][0]['message']['content'].trim();
    }
  } catch (e) {
    print('❌ API 调用失败: $e');
  }
  return null;
}

void main() async {
  print('=== 墨韵诗词译文更新工具 (AI 生成) ===\n');
  
  final needsUpdate = allPoems.where((p) {
    if (p.translation?.isEmpty ?? true) return true;
    final cLen = p.content.replaceAll(RegExp(r'[\n ]'), '').length;
    final tLen = p.translation!.replaceAll(RegExp(r'[\n ]'), '').length;
    return tLen < cLen;
  }).toList();
  
  print('需要更新译文的诗词: ${needsUpdate.length}首\n');
  
  for (var p in needsUpdate) {
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('[${p.id}] ${p.title} - ${p.author}');
    print('\n原文:\n${p.content}');
    
    print('\n🤖 正在生成译文...');
    final translation = await generateTranslation(p.title, p.author, p.content);
    
    if (translation != null) {
      print('\n生成的译文:\n$translation');
      print('\n使用此译文? (y/n/e=编辑): ');
      final choice = stdin.readLineSync()?.toLowerCase();
      
      String? finalTranslation = translation;
      if (choice == 'e') {
        print('请输入修改后的译文 (输入空行结束):');
        final lines = <String>[];
        while (true) {
          final line = stdin.readLineSync();
          if (line == null || line.trim().isEmpty) break;
          lines.add(line);
        }
        if (lines.isNotEmpty) finalTranslation = lines.join('\n');
      }
      
      if (choice == 'y' || choice == 'e') {
        print('\n✅ 更新代码:');
        print('   translation: \'\'\'$finalTranslation\'\'\',');
      }
    }
    print('');
  }
  
  print('✅ 完成!');
}
