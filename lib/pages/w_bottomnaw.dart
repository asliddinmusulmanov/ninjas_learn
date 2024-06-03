import 'package:flutter/material.dart';
import 'package:ninjas_learn/pages/favourite_page.dart';
import 'package:ninjas_learn/pages/home_page.dart';
import 'package:ninjas_learn/pages/profile_page.dart';
import 'package:ninjas_learn/pages/search_page.dart';

class WBottomNav extends StatefulWidget {
  const WBottomNav({super.key});

  @override
  State<WBottomNav> createState() => _WBottomNavState();
}

class _WBottomNavState extends State<WBottomNav> {
  List<Widget> pages = [
    const HomePage(),
    const FavouritePage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;
  void ontap(index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff91C788),
        unselectedItemColor: const Color(0xff999999),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedLabelStyle: const TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: currentIndex,
        onTap: ontap,
      ),
    );
  }
}
