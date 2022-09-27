import 'dart:convert';

class EventsOfTheMonthResponse {
  EventsOfTheMonthResponse({
   required this.sophiaEventOfTheMonth,
   required this.success,
   required this.message,
  });

  List<SophiaEventOfTheMonth> sophiaEventOfTheMonth;
  int success;
  String message;

  factory EventsOfTheMonthResponse.fromJson(String str) => EventsOfTheMonthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EventsOfTheMonthResponse.fromMap(Map<String, dynamic> json) => EventsOfTheMonthResponse(
    sophiaEventOfTheMonth: List<SophiaEventOfTheMonth>.from(json["sophia_event_of_the_month"].map((x) => SophiaEventOfTheMonth.fromMap(x))),
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "sophia_event_of_the_month": List<dynamic>.from(sophiaEventOfTheMonth.map((x) => x.toMap())),
    "success": success,
    "message": message,
  };
}

class SophiaEventOfTheMonth {
  SophiaEventOfTheMonth({
   required this.id,
   required this.title,
   required this.date,
   required this.updatedAt,
  });

  String id;
  String title;
  String date;
  DateTime updatedAt;

  factory SophiaEventOfTheMonth.fromJson(String str) => SophiaEventOfTheMonth.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SophiaEventOfTheMonth.fromMap(Map<String, dynamic> json) => SophiaEventOfTheMonth(
    id: json["id"],
    title: json["title"],
    date: json["date"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "date": date,
    "updated_at": updatedAt.toIso8601String(),
  };
}
