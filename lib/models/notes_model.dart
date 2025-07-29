import 'dart:io';

class NotesModel {
  final String title;
  final String content;
  final File? image;
  final String? color;
  final DateTime createdAt;

  NotesModel({
    required this.title,
    required this.content,
    this.image,
    this.color,
    required this.createdAt,
  });

  NotesModel.fromJson(Map<String, dynamic> json)
    : title = json['title'],
      content = json['content'],
      image = json['image'] != null ? File(json['image']) : null,
      color = json['color'],
      createdAt = DateTime.parse(json['createdAt']);

  Map<String, dynamic> toJson() => {
    'title': title,
    'content': content,
    'image': image?.path,
    'color': color,
    'createdAt': createdAt.toIso8601String(),
  };
}

