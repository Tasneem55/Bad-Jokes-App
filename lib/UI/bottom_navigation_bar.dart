import 'package:booking_app/UI/booking.dart';
import 'package:booking_app/UI/home.dart';
import 'package:booking_app/UI/profile.dart';
import 'package:booking_app/UI/search.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final screens = [
    const Home(),
    const Search(),
    const Booking(),
    const Profile()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: screens
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF1AB65C),
          unselectedItemColor: const Color(0xff7D7D7D),
          iconSize: 28,
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_books_sharp,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
