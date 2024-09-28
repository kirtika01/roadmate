import 'package:flutter/material.dart';
import 'package:hts/screens/about.dart';
import 'package:hts/screens/map_screen.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Road Mate', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.white)),
        backgroundColor: const Color.fromRGBO(242, 99, 99, 1.0),
      ),
      backgroundColor: Colors.black,
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 8, // Set the elevation here
                child: SizedBox(
                  width: 300, // Set the width you want
                  height: 250, // Set the height you want
                  child: Lottie.asset('assets/1.json'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const MapScreen()));
              },
              child: Expanded(
                child: Container(
                  //1st Container
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color.fromRGBO(242, 99, 99, 1.0).withOpacity(.999),
                      const Color.fromRGBO(242, 99, 99, 0.2).withOpacity(.8),
                      const Color.fromRGBO(242, 99, 99, 0.003).withOpacity(.2),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Open map",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              //1st Container
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(242, 99, 99, 1.0).withOpacity(.999),
                  const Color.fromRGBO(242, 99, 99, 0.2).withOpacity(.8),
                  const Color.fromRGBO(242, 99, 99, 0.003).withOpacity(.2),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Random",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AboutPage()));
                },
              child: Expanded(
                child: Container(
                  //1st Container
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color.fromRGBO(242, 99, 99, 1.0).withOpacity(.999),
                      const Color.fromRGBO(242, 99, 99, 0.2).withOpacity(.8),
                      const Color.fromRGBO(242, 99, 99, 0.003).withOpacity(.2),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About app",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // TextField(
            //   controller: _searchController,
            //   decoration: InputDecoration(
            //     labelText: 'Search',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(30.0), // Set the border radius
            //         borderSide: const BorderSide(color: Colors.grey), // Optional: Border color
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(30.0), // Same radius for focused state
            //         borderSide: const BorderSide(color: Colors.blue), // Change border color on focus
            //       ),
            //     suffixIcon: const Icon(Icons.search),
            //   ),
            //   onSubmitted: (value) {
            //     // Handle search action
            //     print("Searching for: $value");
            //   },
            // ),

          ],
        ),
      ),
    );
  }
}