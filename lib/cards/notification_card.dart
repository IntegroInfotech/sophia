import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/screens/open_url.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String webLink;

  const NotificationCard(
      {super.key, required this.title,
      required this.description,
      required this.date,
      required this.webLink});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Constants.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomText(
                                title: date,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
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
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: CustomText(
                                title: description,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: webLink,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => openUrl(context, url: webLink, color: Constants.primaryColor),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
