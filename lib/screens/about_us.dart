import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';

class AboutUsPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String appBarTitle;

  const AboutUsPage(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            title: appBarTitle,
            color: Colors.white,
          ),
          backgroundColor: Constants.primaryColor,
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        child: ListView(
                          children: [
                            Container(
                              height: 250,
                              width: double.infinity,
                              child: Image.network(
                                image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
