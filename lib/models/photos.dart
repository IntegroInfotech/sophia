
import 'package:meta/meta.dart';
import 'dart:convert';

class PhotosResponse {
  PhotosResponse({
    required this.sophiaPhotos,
    required this.success,
    required this.message,
  });

  List<SophiaPhoto> sophiaPhotos;
  int success;
  String message;

  factory PhotosResponse.fromJson(String str) => PhotosResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PhotosResponse.fromMap(Map<String, dynamic> json) => PhotosResponse(
    sophiaPhotos: List<SophiaPhoto>.from(json["sophia_photos"].map((x) => SophiaPhoto.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "sophia_photos": List<dynamic>.from(sophiaPhotos.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class SophiaPhoto {
  SophiaPhoto({
    required this.id,
    required this.title,
    required this.image,
    required this.updatedAt,
  });

  String id;
  String title;
  String image;
  DateTime updatedAt;

  factory SophiaPhoto.fromJson(String str) => SophiaPhoto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SophiaPhoto.fromMap(Map<String, dynamic> json) => SophiaPhoto(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "image": image,
    "updated_at": updatedAt.toIso8601String(),
  };
}
