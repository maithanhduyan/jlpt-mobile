class KanjiBasic {
  final int id;
  final String name;
  final String content;
  final int stroke;
  final String note;

  KanjiBasic({this.id, this.name, this.content, this.stroke, this.note});

  factory KanjiBasic.fromJson(Map<String, dynamic> json) {
    return KanjiBasic(
      id: json['id'] as int,
      name: json['name'] as String,
      content: json['content'] as String,
      stroke: json['stroke'] as int,
      note: json['note'] as String,
    );
  }
}
