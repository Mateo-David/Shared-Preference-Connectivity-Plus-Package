import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preference/connectivity%20plus/dependency_injection.dart';
import 'package:shared_preference/shared_Preference/get_function/get_function.dart';
import 'package:shared_preference/shared_Preference/remove_function/remove_function.dart';
import 'package:shared_preference/shared_Preference/save_function/save_function.dart';
import 'package:shared_preference/splash_screen.dart';

void main() async {
  await saveString('username', 'flutter_user');
  await saveInt('points', 100);
  await saveDouble('score', 3.14);
  await saveBool('isLoggedIn', true);

  final username = await getString('username');
  final points = await getInt('points');
  final score = await getDouble('score');
  final isLoggedIn = await getBool('isLoggedIn');

  print(username); // Prints "flutter_user"
  print(points); // Prints 100
  print(score); // Prints 3.14
  print(isLoggedIn); // Prints true

  await removeData('username');
}


// void main() {
//   runApp(const MyApp());
//   DependencyInjection.init();
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Shared Preference',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: SplashScreen(),
//     );
//   }
// }
