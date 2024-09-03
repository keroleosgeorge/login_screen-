import 'package:flutter/material.dart';
import 'componnents/item.dart';
import 'models/item_model.dart';

class FamilyScreen extends StatelessWidget {
  FamilyScreen({super.key});

  final List<itemmodel> items = [
    itemmodel(photo: 'assets/images/Family/family_daughter.png',
        english: 'Daughter',
        japanese: 'Musume',
        audio: 'assets/audios/familymem/daughter.wav'),

    itemmodel(photo: 'assets/images/Family/family_son.png',
        english: 'Son',
        japanese: 'Musuko',
        audio: 'assets/audios/familymem/son.wav'),

    itemmodel(photo: 'assets/images/Family/family_older_brother.png',
        english: 'Older Brother',
        japanese: 'Nisan',
        audio: 'assets/audios/familymem/older bother.wav'),

    itemmodel(photo: 'assets/images/Family/family_younger_brother.png',
        english: 'Younger Brother',
        japanese: 'Ototo',
        audio: 'assets/audios/familymem/younger brohter.wav'),

    itemmodel(photo: 'assets/images/Family/family_older_sister.png',
        english: 'Older Sister',
        japanese: 'Ane',
        audio: 'assets/audios/familymem/older sister.wav'),

    itemmodel(photo: 'assets/images/Family/family_younger_sister.png',
        english: 'Younger Sister',
        japanese: 'Nan',
        audio: 'assets/audios/familymem/younger sister.wav'),

    itemmodel(photo: 'assets/images/Family/family_grandfather.png',
        english: 'Grandfather',
        japanese: 'Ochisan',
        audio: 'assets/audios/familymem/grand father.wav'),

    itemmodel(photo: 'assets/images/Family/family_grandmother.png',
        english: 'Grandmother',
        japanese: 'Sopo',
        audio: 'assets/audios/familymem/grand mother.wav'),

    itemmodel(photo: 'assets/images/Family/family_mother.png',
        english: 'Mother',
        japanese: 'Haha',
        audio: 'assets/audios/familymem/mother.wav'),

    itemmodel(photo: 'assets/images/Family/family_father.png',
        english: 'Father',
        japanese: 'Chichi',
        audio: 'assets/audios/familymem/father.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade800,
        elevation: 0,
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          itemBuilder: (context, index) {
            return comitem(
              colors: Colors.greenAccent.shade400,
              item: items[index],
              color: Colors.greenAccent.shade200,
            );
          },
          itemCount: items.length),
    );
  }
}
