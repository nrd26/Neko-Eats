import 'package:app_prakyath/Screens/control.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Screens/login/login.dart';
import 'package:app_prakyath/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      Splash()
      // Control(),
    );
  }
}


