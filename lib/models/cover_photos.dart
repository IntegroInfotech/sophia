import 'dart:convert';

class CoverPhotoResponse {
  CoverPhotoResponse({
    required this.sophiaCoverPhoto,
    required this.success,
    required this.message,
  });

  List<SophiaCoverPhoto> sophiaCoverPhoto;
  int success;
  String message;

  factory CoverPhotoResponse.fromJson(String str) => CoverPhotoResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CoverPhotoResponse.fromMap(Map<String, dynamic> json) => CoverPhotoResponse(
    sophiaCoverPhoto: List<SophiaCoverPhoto>.from(json["sophia_coverphoto"].map((x) => SophiaCoverPhoto.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "sophia_coverphoto": List<dynamic>.from(sophiaCoverPhoto.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class SophiaCoverPhoto {
  SophiaCoverPhoto({
    required this.id,
    required this.image,
    required this.updatedAt,
  });

  String id;
  String image;
  DateTime updatedAt;

  factory SophiaCoverPhoto.fromJson(String str) => SophiaCoverPhoto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SophiaCoverPhoto.fromMap(Map<String, dynamic> json) => SophiaCoverPhoto(
    id: json["id"],
    image: json["image"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "image": image,
    "updated_at": updatedAt.toIso8601String(),
  };
}