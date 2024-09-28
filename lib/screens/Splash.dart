import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    // Delay mechanism for splash screen
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the full screen size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image covering the full screen
          SizedBox(
            width: size.width, // Full width of the screen
            height: size.height, // Full height of the screen
            child: Image.asset(
              "assets/images/splash.jpg",
              fit: BoxFit.cover, // Ensure the image covers the entire area
            ),
          ),
          // Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.65),
                    Colors.black.withOpacity(0.3),
                  ],
                ),
              ),
            ),
          ),
          // Text content
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RoadMate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Stay Informed, Drive Safely!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
