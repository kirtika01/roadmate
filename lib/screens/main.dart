import 'package:flutter/material.dart';
import 'package:hts/screens/Splash.dart';
import 'package:hts/screens/map_screen.dart';
import 'home_page.dart'; // Import the HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Home Page with Search Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(), // Use the HomePage widget
      debugShowCheckedModeBanner: false,
    );
  }
}