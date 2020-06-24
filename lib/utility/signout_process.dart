import 'package:flutter/material.dart';
import 'package:jamefood/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Null> signOutProcess(BuildContext context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.clear();
  //exit(0);
  MaterialPageRoute pageRoute = MaterialPageRoute(
    builder: (context) => Home(),
  );
  Navigator.pushAndRemoveUntil(context, pageRoute, (route) => false);
}
