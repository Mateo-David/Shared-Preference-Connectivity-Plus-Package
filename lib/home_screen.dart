import 'package:flutter/material.dart';
import 'package:shared_preference/login_screen.dart';
import 'package:shared_preference/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,actions: [
          IconButton(onPressed: ()async{
             Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                       final prefs = await SharedPreferences.getInstance();
                  prefs.setBool(SplashScreenState.KeyLogin, false);
          }, icon:const Icon(Icons.logout))
        ],
      ),
      body: Center(child: Icon(Icons.home,size: 150,),),
    );
  }
}
