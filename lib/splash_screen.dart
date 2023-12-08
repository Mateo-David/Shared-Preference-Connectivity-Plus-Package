  import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/home_screen.dart';
import 'package:shared_preference/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KeyLogin = "Login";


  @override
  void initState() {
    super.initState();

    whereToGo();
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Icon(
        Icons.facebook,
        size: 150,
        color: Colors.blue,
      ),
    ));
  }

  void whereToGo() {
    Timer(const Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();

      var isLoggedIn = prefs.getBool(KeyLogin);

      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      }
    });
  }
}
