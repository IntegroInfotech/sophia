import 'package:http/http.dart' as http;
import 'package:sophia/models/cover_photos.dart';
import 'package:sophia/models/events_of_the_month.dart';
import 'package:sophia/models/news.dart';
import 'package:sophia/models/notifications.dart';
import 'package:sophia/models/photos.dart';

class ApiService {
  static const String baseUrl =
      'https://sophiahighschool.org/sophia_app/';

  final String newsApi = '$baseUrl/sophia_news.php';
  final String notificationApi = '$baseUrl/sophia_notification.php';
  final String coverPhotosApi = '$baseUrl/sophia_coverphoto.php';
  final String event_of_monthApi = '$baseUrl/sophia_event_of_month.php';
  final String photosApi = '$baseUrl/sophia_photos.php';

  Future<List<SophiaNews>> fetchNews() async {
    try {
      http.Response response = await http.get(Uri.parse(newsApi));
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonData = NewsResponse.fromJson(json).sophiaNews;
        return jsonData;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<List<SophiaNotification>> fetchNotifications() async {
    try {
      http.Response response = await http.get(Uri.parse(notificationApi));
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonData = NotificationsResponse.fromJson(json).sophiaNotification;
        return jsonData;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<List<SophiaCoverPhoto>> fetchCoverPhotos() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          coverPhotosApi,
        ),
      );
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonData = CoverPhotoResponse.fromJson(json).sophiaCoverPhoto;
        return jsonData;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<List<SophiaEventOfTheMonth>> fetchEventOfTheMonth() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          event_of_monthApi,
        ),
      );
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonData = EventsOfTheMonthResponse.fromJson(json).sophiaEventOfTheMonth;
        return jsonData;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<List<SophiaPhoto>> fetchPhotos() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          photosApi,
        ),
      );
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonData = PhotosResponse.fromJson(json).sophiaPhotos;
        return jsonData;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }
}
