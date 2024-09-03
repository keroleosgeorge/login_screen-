import 'package:flutter/material.dart';
import 'componnents/item.dart';
import 'models/item_model.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});

  final List<itemmodel> items = [
    itemmodel(photo: 'assets/images/color/color_black.png', english: 'Black', japanese: 'Borako', audio: 'assets/audios/colors/black.wav'),
    itemmodel(photo: 'assets/images/color/color_brown.png', english: 'Brown', japanese: 'Kuro', audio: 'assets/audios/colors/brown.wav'),
    itemmodel(photo: 'assets/images/color/color_red.png', english: 'Red', japanese: 'Aka', audio: 'assets/audios/colors/red.wav'),
    itemmodel(photo: 'assets/images/color/color_green.png', english: 'Green', japanese: 'Midori', audio: 'assets/audios/colors/green.wav'),
    itemmodel(photo: 'assets/images/color/color_gray.png', english: 'Gray', japanese: 'Kuro', audio: 'assets/audios/colors/gray.wav'),
    itemmodel(photo: 'assets/images/color/color_white.png', english: 'White', japanese: 'Shiro', audio: 'assets/audios/colors/white.wav'),
    itemmodel(photo: 'assets/images/color/yellow.png', english: 'Yellow', japanese: 'Kiiro', audio: 'assets/audios/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple.shade800,
        elevation: 0,
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          itemBuilder: (context, index) {
            return comitem(
              colors: Colors.purpleAccent.shade200,
              item: items[index],
              color: Colors.purpleAccent.shade100,
            );
          },
          itemCount: items.length),
    );
  }
}
