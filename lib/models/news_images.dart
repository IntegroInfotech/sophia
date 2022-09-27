import 'dart:convert';

class NewsImagesResponse {
  NewsImagesResponse({
    required this.newsImages,
    required this.success,
    required this.message,
  });

  List<Newsimage> newsImages;
  int success;
  String message;

  factory NewsImagesResponse.fromJson(String str) => NewsImagesResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NewsImagesResponse.fromMap(Map<String, dynamic> json) => NewsImagesResponse(
    newsImages: List<Newsimage>.from(json["newsimages"].map((x) => Newsimage.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "newsimages": List<dynamic>.from(newsImages.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class Newsimage {
  Newsimage({
    required this.id,
    required this.newsId,
    required this.image,
    required this.updatedAt,
  });

  String id;
  String newsId;
  String image;
  DateTime updatedAt;

  factory Newsimage.fromJson(String str) => Newsimage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Newsimage.fromMap(Map<String, dynamic> json) => Newsimage(
    id: json["id"],
    newsId: json["news_id"],
    image: json["image"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "news_id": newsId,
    "image": image,
    "updated_at": updatedAt.toIso8601String(),
  };
}
