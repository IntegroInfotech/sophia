import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/news_card.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/models/news.dart';
import 'package:sophia/screens/cover_photos_page.dart';
import 'package:sophia/screens/events_of_the_month_page.dart';
import 'package:sophia/screens/open_url.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService apiServices = ApiService();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(75),
                  bottomLeft: Radius.circular(75),
                ),
                color: Constants.primaryColor,
              ),
              clipBehavior: Clip.hardEdge,
              child: const CoverPhotosPage(),
            ),
            Container(
              height: 10,
              color: Colors.transparent,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 16,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                            onTap: () => openUrl(context,
                                url:
                                "https://sophiahighschool.org/isc.php",
                                color: Constants.primaryColor),
                            child: const SizedBox(
                              height: 50,
                              child: Center(
                                child: CustomText(
                                    title: 'ISC',
                                    color: Constants.primaryColor),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: () => openUrl(context,
                                url:
                                "https://sophiahighschool.org/high_school.php",
                                color: Constants.primaryColor),
                            child: const SizedBox(
                              height: 50,
                              child: Center(
                                child: CustomText(
                                  title: 'High School',
                                  color: Constants.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: () => openUrl(context,
                                url:
                                "https://sophiahighschool.org/middle_school.php",
                                color: Constants.primaryColor),
                            child: const SizedBox(
                              height: 50,
                              child: Center(
                                child: CustomText(
                                  title: 'Middle School',
                                  color: Constants.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: () => openUrl(context,
                                url:
                                "https://sophiahighschool.org/primary_school.php",
                                color: Constants.primaryColor),
                            child: const SizedBox(
                              height: 50,
                              child: Center(
                                child: CustomText(
                                  title: 'primary School',
                                  color: Constants.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: () => openUrl(context,
                                url:
                                "https://sophiahighschool.org/nursery.php",
                                color: Constants.primaryColor),
                            child: const SizedBox(
                              height: 50,
                              child: Center(
                                child: CustomText(
                                  title: 'Nursery',
                                  color: Constants.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Card(
                            color: Colors.white,
                            elevation: 6,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.admin_panel_settings_outlined,
                                    color: Constants.primaryColor,
                                    size: 35,
                                  ),
                                  CustomText(
                                    title: "Admissions",
                                    color: Constants.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Card(
                            elevation: 6,
                            color: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const EventsOfTheMonthPage(),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.event,
                                      color: Constants.primaryColor,
                                      size: 35,
                                    ),
                                    CustomText(
                                      title: "Events",
                                      color: Constants.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Card(
                            elevation: 6,
                            color: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.login,
                                  color: Constants.primaryColor,
                                  size: 35,
                                ),
                                CustomText(
                                  title: "Login",
                                  color: Constants.primaryColor,
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 16,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            GestureDetector(
                              onTap: () => openUrl(context,
                                  url:
                                      "https://sophiahighschool.org/alumni1.php",
                                  color: Constants.primaryColor),
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: CustomText(
                                      title: 'Alumni',
                                      color: Constants.primaryColor),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () => openUrl(context,
                                  url:
                                      "https://sophiahighschool.org/alumni_reg.php",
                                  color: Constants.primaryColor),
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: CustomText(
                                    title: 'Registration',
                                    color: Constants.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const SizedBox(
                  height: 70,
                  child: Card(
                    elevation: 6,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: CustomText(
                        title: "Alumni",
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0, top: 16),
                      child: CustomText(
                        textAlign: TextAlign.left,
                        title: "Latest News",
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Constants.primaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: FutureBuilder<List<SophiaNews>>(
                future: apiServices.fetchNews(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      print(snapshot.data);
                      final sophiaNews = snapshot.data ?? [];
                      final news = sophiaNews.take(1);
                      return AlignedGridView.count(
                        itemCount: news.length,
                        crossAxisCount: 1,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: NewsCard(
                              date: sophiaNews[index].date,
                              title: sophiaNews[index].title,
                              description: sophiaNews[index].description,
                              imageUrl: sophiaNews[index].image,
                            ),
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
            ),
          ],
        ),
      ],
    );
  }
}
