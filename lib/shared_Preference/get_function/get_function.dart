import 'package:shared_preferences/shared_preferences.dart';

Future<String> getString(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString(key);
  return value ?? ''; // Return empty string if key doesn't exist
}

Future<int> getInt(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getInt(key);
  return value ?? 0; // Return 0 if key doesn't exist
}

Future<double> getDouble(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getDouble(key);
  return value ?? 0.0; // Return 0.0 if key doesn't exist
}

Future<bool> getBool(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getBool(key);
  return value ?? false; // Return false if key doesn't exist
}
