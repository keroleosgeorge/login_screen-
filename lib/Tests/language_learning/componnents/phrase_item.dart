import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/language_learning/models/phrase_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.item});

  final phrasemodel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding:  EdgeInsets.all(10),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.purpleAccent.shade100,
      ),
      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment:   CrossAxisAlignment.start,
              children: [
                Text(item.english),
                SizedBox(
                  height: 50,
                ),
                Text(item.japanese),
              ],
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(item.audio),
                );
              },
              icon: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
                size: 20,
              )),
        ],
      ),
    );
  }
}
