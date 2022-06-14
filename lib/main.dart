import 'package:flutter/material.dart';

import 'package:karanganbunga/screen/home_screen.dart';
import 'package:karanganbunga/screen/splash_screen.dart';

import 'package:karanganbunga/screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name

      title: 'Karangan bunga',

      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),

    );
  }
}
