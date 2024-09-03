import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/language_learning/models/item_model.dart';
import 'componnents/item.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  final List<itemmodel> items = [
    itemmodel(photo: 'assets/images/numbers/number_one.png', english: 'One', japanese: 'Ichi', audio: 'assets/audios/numbers/number_one_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_two.png', english: 'Two', japanese: 'Ni', audio: 'assets/audios/numbers/number_two_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_three.png', english: 'Three', japanese: 'San', audio: 'assets/audios/numbers/number_three_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_four.png', english: 'Four', japanese: 'Yon', audio: 'assets/audios/numbers/number_four_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_five.png', english: 'Five', japanese: 'Go', audio: 'assets/audios/numbers/number_five_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_six.png', english: 'Six', japanese: 'Roku', audio: 'assets/audios/numbers/number_six_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_seven.png', english: 'Seven', japanese: 'Nana', audio: 'assets/audios/numbers/number_seven_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_eight.png', english: 'Eight', japanese: 'Hachi', audio: 'assets/audios/numbers/number_eight_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_nine.png', english: 'Nine', japanese: 'Kyu', audio: 'assets/audios/numbers/number_nine_sound.mp3'),
    itemmodel(photo: 'assets/images/numbers/number_ten.png', english: 'Ten', japanese: 'Juu', audio: 'assets/audios/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        itemBuilder: (context, index) {
          return comitem(
            colors: Colors.orange.shade100,
            item: items[index],
            color: Colors.orangeAccent.shade100,
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
