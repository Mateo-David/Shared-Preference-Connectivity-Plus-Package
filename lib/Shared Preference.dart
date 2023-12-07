import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  TextEditingController nameTextEditingController = TextEditingController();
  var newValue = "No Value Available";

  static String KeyName = "name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameTextEditingController,
              decoration: InputDecoration(
                  label: Text("Name"),
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();

                prefs.setString(
                    KeyName, nameTextEditingController.text.toString());
              },
              child: Text(
                "Save",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // setState(() {
              // Text(
              //   newValue,
              //   style: TextStyle(fontSize: 16, color: Colors.black),
              // );
            // }),
          ],
        ),
      ),
    );
  }
}
