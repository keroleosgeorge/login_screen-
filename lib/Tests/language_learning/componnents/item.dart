import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/language_learning/models/item_model.dart';

class comitem extends StatelessWidget {
  const comitem({super.key, required this.item, required this.color,required this.colors});

  final itemmodel item;
  final Color color;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(-2, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow:  [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(-2, -2),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
              color: colors,
            ),

            child: Image.asset(item.photo, width: 50),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.english,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                item.japanese,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ],
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
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
