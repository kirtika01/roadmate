import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 99, 99, 1.0),
      ),
      backgroundColor: const Color.fromRGBO(242, 99, 99, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'RoadMate',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Version: 1.0.0',
              style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'RoadMate is a road safety and connectivity optimization app. It provides real-time updates on road conditions, traffic data, and offers solutions for enhancing rural road connectivity. Our goal is to keep drivers informed and improve road safety in rural and hilly areas of India.',
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Features:',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              '- Real-time road condition monitoring\n'
                  '- Road safety alerts\n'
                  '- Rural and hilly area road connectivity optimization\n'
                  '- Machine learning-based analysis for road upgrades\n'
                  '- Interactive maps for road planning',
              style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Button color
                ),
                child: const Text('Back', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
