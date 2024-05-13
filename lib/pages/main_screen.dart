import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/history_screen.dart';
import 'package:food_delivery_app/pages/home_screen.dart';
import 'package:food_delivery_app/pages/profile_screen.dart';
import 'package:food_delivery_app/pages/search_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final selectedPage = [
    HomeScreen(),
    SearchItem(),
    ProfileScreen(),
    HistoryScreen(),
  ];
  indexSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedPage[selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(splashFactory: NoSplash.splashFactory),
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          selectedIndex: selectedIndex,
          onDestinationSelected: indexSelected,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 25,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Color.fromRGBO(255, 75, 58, 1),
                size: 30,
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.heart_broken_outlined,
                size: 25,
              ),
              selectedIcon: Icon(
                Icons.heart_broken,
                color: Color.fromRGBO(255, 75, 58, 1),
                size: 30,
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_outline,
                size: 25,
              ),
              selectedIcon: Icon(
                Icons.person,
                color: Color.fromRGBO(255, 75, 58, 1),
                size: 30,
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.lock_clock_outlined,
                size: 25,
              ),
              selectedIcon: Icon(
                Icons.lock_clock,
                color: Color.fromRGBO(255, 75, 58, 1),
                size: 30,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
