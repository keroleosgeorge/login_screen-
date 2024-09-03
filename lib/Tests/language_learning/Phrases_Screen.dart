import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/language_learning/componnents/phrase_item.dart';
import 'models/phrase_model.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  final List<phrasemodel> itemss = [
    phrasemodel(japanese: 'Kimaska', english: 'Are you coming?', audio: 'assets/audios/phar/are_you_coming.wav'),
    phrasemodel(japanese: 'Koudoku suru koto wa wasure nai de kudasai', english: "Don't forget to subscribe", audio: 'assets/audios/phar/dont_forget_to_subscribe.wav'),
    phrasemodel(japanese: 'Anime ga daisuki', english: 'I love anime', audio: 'assets/audios/phar/i_love_anime.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        itemBuilder: (context, index) {
          return PhraseItem(item: itemss[index]);
        },
        itemCount: itemss.length,
      ),
    );
  }
}
