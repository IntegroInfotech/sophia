import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/screens/about_us.dart';
import 'package:sophia/screens/open_url.dart';
import 'package:sophia/screens/photos_page.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: 350,
        color: Constants.primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsPage(
                              appBarTitle: "About Us",
                              title: Constants.aboutUsTitle,
                              description: Constants.aboutUsDescription,
                              image:
                                  "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                            ),
                          ),
                        );
                      },
                      child: const CustomText(
                        title: "ABOUT US",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
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
                                            "https://sophiahighschool.org/scholastic.php",
                                        color: Constants.primaryColor),
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                        child: CustomText(
                                            title: 'SCHOLASTIC',
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
                                            "https://sophiahighschool.org/non_scholastic.php",
                                        color: Constants.primaryColor),
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                        child: CustomText(
                                          title: 'NON-SCHOLASTIC',
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
                      child: const CustomText(
                        title: "FACILITIES",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsPage(
                              appBarTitle: "OUR VALUES",
                              title: Constants.ourValuesTitle,
                              description: Constants.ourValuesDescription,
                              image:
                                  "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                            ),
                          ),
                        );
                      },
                      child: const CustomText(
                        title: "OUR VALUES",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsPage(
                              appBarTitle: "OUR STRATEGY",
                              title: Constants.ourStrategyTitle,
                              description: Constants.ourStrategyDescription,
                              image:
                                  "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                            ),
                          ),
                        );
                      },
                      child: const CustomText(
                        title: "OUR STRATEGY",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsPage(
                              appBarTitle: "OUR MISSION",
                              title: Constants.ourMissionTitle,
                              description: Constants.ourMissionDescription,
                              image:
                                  "http://testlink4clients.com/sophiahighschool/images/gallery/gallery%20(4).jpg",
                            ),
                          ),
                        );
                      },
                      child: const CustomText(
                        title: "OUR MISSION",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => openUrl(context, url: "https://sophiahighschool.org/careers.php", color: Constants.primaryColor),
                      child: const CustomText(
                        title: "CAREERS",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: const [
                  Expanded(
                    child: CustomText(
                      title: "NOTICE BOARD",
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhotosPage(),
                          ),
                        );
                      },
                      child: const CustomText(
                        title: "PHOTO GALLERY",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: const [
                  Expanded(
                    child: CustomText(
                      title: "GET IN TOUCH",
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
