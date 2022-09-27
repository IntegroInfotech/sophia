import 'dart:convert';

class NotificationsResponse {
  NotificationsResponse({
    required this.sophiaNotification,
    required this.success,
    required this.message,
  });

  List<SophiaNotification> sophiaNotification;
  int success;
  String message;

  factory NotificationsResponse.fromJson(String str) => NotificationsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NotificationsResponse.fromMap(Map<String, dynamic> json) => NotificationsResponse(
    sophiaNotification: List<SophiaNotification>.from(json["sophia_notification"].map((x) => SophiaNotification.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "sophia_notification": List<dynamic>.from(sophiaNotification.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class SophiaNotification {
  SophiaNotification({
    required this.id,
    required this.url,
    required this.title,
    required this.weblink,
    required this.date,
    required this.description,
    required this.updatedAt,
  });

  String id;
  String url;
  String title;
  String weblink;
  String date;
  String description;
  DateTime updatedAt;

  factory SophiaNotification.fromJson(String str) => SophiaNotification.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SophiaNotification.fromMap(Map<String, dynamic> json) => SophiaNotification(
    id: json["id"],
    url: json["url"],
    title: json["title"],
    weblink: json["weblink"],
    date:json["date"],
    description: json["description"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "url": url,
    "title": title,
    "weblink": weblink,
    "date": date,
    "description": description,
    "updated_at": updatedAt.toIso8601String(),
  };
}
