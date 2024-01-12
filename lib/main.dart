// ignore_for_file: unnecessary_const

import 'package:chamet_clone/components/gradient_icons.dart';
import 'package:chamet_clone/constants/colors.dart';
import 'package:chamet_clone/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          height: 50,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.transparent,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.live_tv_rounded,
                color: primaryColor,
                size: 30,
              ),
              icon: Icon(
                Icons.live_tv_rounded,
                size: 30,
                color: Colors.grey,
              ),
              label: "",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.people_alt_rounded,
                color: primaryColor,
                size: 30,
              ),
              icon: Icon(
                Icons.people_alt_outlined,
                color: Colors.grey,
                size: 30,
              ),
              label: "",
            ),
            NavigationDestination(
                icon: GradientIcon(
                  Icons.add_circle_sharp,
                  35.0,
                  LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFA648FE),
                      Color(0xFFFE5858),
                    ],
                  ),
                ),
                label: ""),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.explore_rounded,
                color: primaryColor,
                size: 30,
              ),
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.grey,
                size: 30,
              ),
              label: "",
            ),
            NavigationDestination(
              selectedIcon: Badge(
                offset: Offset(6, -8),
                label: Text('4',
                    style: TextStyle(
                      fontSize: 10,
                    )),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: primaryColor,
                ),
              ),
              icon: Badge(
                offset: Offset(6, -8),
                label: Text('4'),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              label: "",
            ),
          ],
        ),
        body: const Center(child: ProfilePage()),
      ),
    );
  }
}
