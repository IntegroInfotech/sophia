import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/notification_card.dart';
import 'package:sophia/models/notifications.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ApiService apiService=ApiService();

    return FutureBuilder<List<SophiaNotification>>(
      future: apiService.fetchNotifications(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            print(snapshot.data);
            final sophiaNews = snapshot.data ?? [];
            return AlignedGridView.count(
              itemCount: sophiaNews.length,
              crossAxisCount: 1,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              itemBuilder: (BuildContext context, int index) {
                return NotificationCard(
                  date: sophiaNews[index].date,
                  title: sophiaNews[index].title,
                  description:sophiaNews[index].description ,
                  webLink:sophiaNews[index].weblink ,
                );
              },
            );
          }
        } else {
          print(snapshot.connectionState);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
