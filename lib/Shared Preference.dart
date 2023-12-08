import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  TextEditingController nameTextEditingController = TextEditingController();
  String noValue = "No Value Available";

  static const String KeyName = "name";
 
  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameTextEditingController,
              decoration: const InputDecoration(
                  label: Text("Name"),
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();

                prefs.setString(
                    KeyName, nameTextEditingController.text.toString());
                nameTextEditingController.clear();
              },
              child: const Text(
                "Save",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              noValue,
              style:const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  void getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KeyName);
    noValue = getName ?? "No Value Available";
    setState(() {});
  }
}
