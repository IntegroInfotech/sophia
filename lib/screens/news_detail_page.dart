import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;

  const NewsDetailPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(title: "SOPHIA NEWS DETAILS", color: Colors.white),
        centerTitle: true,
        backgroundColor: Constants.primaryColor,
      ),
      body: ListView(
        children: [
          Image.network(
            imageUrl,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
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
              padding: const EdgeInsets.all(8.0),
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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: const TextStyle(
                  color: Constants.primaryColorBlue,
                  fontFamily: Constants.fontTitle,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Constants.primaryColor,
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
    );
  }
}
