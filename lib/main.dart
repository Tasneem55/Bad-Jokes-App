import 'package:booking_app/UI/all_hotels.dart';
import 'package:booking_app/UI/bottom_navigation_bar.dart';
import 'package:booking_app/UI/login.dart';
import 'package:booking_app/UI/login_with_fga.dart';
import 'package:booking_app/UI/popular.dart';
import 'package:booking_app/UI/sign_up.dart';
import 'package:flutter/material.dart';
import 'UI/home.dart';
import 'UI/recommended.dart';
import 'UI/trending.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginWithFGA(),
        "/login" : (context)=> const Login(),
        "/signup" : (context)=> const  SignUp(),
        "/home" : (context)=> const  Home(),
        "/bottom_navigation_bar" : (context)=> const  BottomNavigationBarScreen(),
        "/all_hotels" : (context)=> const  AllHotels(),
        "/recommended" : (context)=> const  Recommended(),
        "/popular" : (context)=> const  Popular(),
        "/trending" : (context)=> const  Trending(),

      },
    );
  }
}
