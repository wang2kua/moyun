class Poem {
  final String id;
  final String title;
  final String author;
  final String dynasty;
  final String content;
  final String? pinyin;
  final String? translation;
  final String? annotation;
  final List<String> tags;
  final int grade;
  final String type;
  final int? semester;

  Poem({
    required this.id,
    required this.title,
    required this.author,
    required this.dynasty,
    required this.content,
    this.pinyin,
    this.translation,
    this.annotation,
    this.tags = const [],
    required this.grade,
    required this.type,
    this.semester,
  });

  factory Poem.fromJson(Map<String, dynamic> json) => Poem(
        id: json['id'],
        title: json['title'],
        author: json['author'],
        dynasty: json['dynasty'],
        content: json['content'],
        translation: json['translation'],
        annotation: json['annotation'],
        tags: List<String>.from(json['tags'] ?? []),
        grade: json['grade'],
        type: json['type'],
      );
}
