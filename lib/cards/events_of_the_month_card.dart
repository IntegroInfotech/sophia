import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';

class EventsOfTheMonthCard extends StatelessWidget {

  final String title;
  final String date;

  const EventsOfTheMonthCard({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 170,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 85,
                width: 85,
                color: Constants.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: double.infinity,
                          child: Image.network(
                            "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: CustomText(
                                      title: date,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      color: Constants.primaryColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: CustomText(
                                      title: title,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.primaryColor,
                                    ),
                                  ),
                                ),
                                const Divider(
                                  height: 1,
                                  color: Constants.primaryColor,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) =>
                                                  const Color(0xff712632))),
                                  onPressed: () {
                                    // final Event event = Event(
                                    //   title: title,
                                    //   startDate: DateTime(/* Some date here */),
                                    //   endDate: DateTime(/* Some date here */),
                                    // );
                                    // Add2Calendar.addEvent2Cal(event);
                                  },
                                  child: const CustomText(
                                    title: "Add To Calander",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
