import 'package:meta/meta.dart';
import 'dart:convert';

class NewsResponse {
  NewsResponse({
    required this.sophiaNews,
    required this.success,
    required this.message,
  });

  List<SophiaNews> sophiaNews;
  int success;
  String message;

  factory NewsResponse.fromJson(String str) => NewsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NewsResponse.fromMap(Map<String, dynamic> json) => NewsResponse(
    sophiaNews: List<SophiaNews>.from(json["sophia_news"].map((x) => SophiaNews.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "sophia_news": List<dynamic>.from(sophiaNews.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class SophiaNews {
  SophiaNews({
    required this.id,
    required this.image,
    required this.title,
    required this.date,
    required this.description,
    required this.updatedAt,
  });

  String id;
  String image;
  String title;
  String date;
  String description;
  DateTime updatedAt;

  factory SophiaNews.fromJson(String str) => SophiaNews.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SophiaNews.fromMap(Map<String, dynamic> json) => SophiaNews(
    id: json["id"],
    image: json["image"],
    title: json["title"],
    date: json["date"],
    description: json["description"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "image": image,
    "title": title,
    "date": date,
    "description": description,
    "updated_at": updatedAt.toIso8601String(),
  };
}
