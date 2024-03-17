import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveString(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}

Future<void> saveInt(String key, int value) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt(key, value);
}

Future<void> saveDouble(String key, double value) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setDouble(key, value);
}

Future<void> saveBool(String key, bool value) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool(key, value);
}