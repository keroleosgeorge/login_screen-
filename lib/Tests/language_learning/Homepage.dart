import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Family_screen.dart';
import 'Numbers_screen.dart';
import 'Phrases_Screen.dart';
import 'componnents/Home_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Language Learning",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown.shade900,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeContainer(
            color: Colors.orangeAccent.shade200,
            text: "Numbers",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NumbersScreen()));
            },
          ),
          HomeContainer(
            color: Colors.green.shade400,
            text: "Family Members",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FamilyScreen()));
            },
          ),
          HomeContainer(
            color: Colors.purpleAccent.shade100,
            text: "Colors",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ColorsScreen()));
            },
          ),
          HomeContainer(
            color: Colors.blueAccent.shade100,
            text: "Phrases",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PhrasesScreen()));
            },
          ),
        ],
      ),
    );
  }
}
