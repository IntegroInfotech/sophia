import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/screens/nav_menu.dart';
import 'package:sophia/screens/home_screen.dart';
import 'package:sophia/screens/news_screen.dart';
import 'package:sophia/screens/notifications_screen.dart';
import 'package:sophia/screens/open_url.dart';
import 'package:sophia/screens/web_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOPHIA',
      theme: ThemeData(),
      home: const MyHomePage(title: 'SOPHIA HIGH SCHOOL'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      print("currentIndex is : $index");
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      if (selectedIndex == 3) {
        openUrl(context,
            url: "https://sophiahighschool.org/", color: Constants.primaryColor);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomText(
          title: widget.title,
          color: Colors.white,
          fontFamily: Constants.fontTitle,
        ),
        backgroundColor: Constants.primaryColor,
        centerTitle: true,
      ),
      drawer: const NavMenu(),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            allowImplicitScrolling: true,
            onPageChanged: (index) {
              pageChanged(index);
            },
            children: const [
              HomeScreen(),
              NewsScreen(),
              NotificationScreen(),
              //WebScreen(),
            ],
          ),
          Positioned(
            bottom: 0,
            height: 15,
            left: 0,
            right: 0,
            child: Container(
              height: 15,
              color: Constants.primaryColor,
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Constants.primaryColorBlue,
          ),
          Icon(
            Icons.newspaper,
            size: 30,
            color: Constants.primaryColorBlue,
          ),
          Icon(Icons.notifications_active_outlined,
              size: 30, color: Constants.primaryColorBlue),
          Icon(
            Icons.computer,
            size: 30,
            color: Constants.primaryColorBlue,
          ),
        ],
        height: 50.0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Constants.primaryColor,
        animationCurve: Curves.ease,
        animationDuration: const Duration(milliseconds: 600),
        onTap:_onItemTapped,
        letIndexChange: (index) => true,
        index: selectedIndex,
      ),
    );
  }
}
