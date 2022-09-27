import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/screens/news_detail_page.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;

  const NewsCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsDetailPage(
                  imageUrl: imageUrl,
                  date:date,
                  title: title,
                  description: description,
                ),
              ),
            );
          },
          backgroundColor: Constants.primaryColor,
          child: const Icon(Icons.arrow_forward_ios),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Constants.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 12.0),
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
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
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
                                    child: Text(
                                      description,
                                      maxLines: 4,
                                      style: const TextStyle(
                                        color: Constants.primaryColorBlue,
                                        fontFamily: Constants.fontTitle,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
