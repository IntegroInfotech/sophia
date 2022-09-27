import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/events_of_the_month_card.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/models/events_of_the_month.dart';

class EventsOfTheMonthPage extends StatelessWidget {
  const EventsOfTheMonthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService apiService = ApiService();

    return Scaffold(
      appBar: AppBar(
          title: const CustomText(
              title: "Events Of The Month", color: Colors.white),
          centerTitle: true,
          backgroundColor: Constants.primaryColor),
      body: FutureBuilder<List<SophiaEventOfTheMonth>>(
        future: apiService.fetchEventOfTheMonth(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              print(snapshot.data);
              final sophiaEventsOfTheMonth = snapshot.data ?? [];
              return AlignedGridView.count(
                itemCount: sophiaEventsOfTheMonth.length,
                crossAxisCount: 1,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                itemBuilder: (BuildContext context, int index) {
                  return EventsOfTheMonthCard(
                    title: sophiaEventsOfTheMonth[index].title,
                    date: sophiaEventsOfTheMonth[index].date,
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
      ),
    );
  }
}
