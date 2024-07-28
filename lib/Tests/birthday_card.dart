import 'package:flutter/material.dart';

class Birthday_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Column(
            children: [
              Expanded(
                child: Image.network(
                  "https://hdwpro.com/wp-content/uploads/2016/07/Happy-Birthday-Card.jpg",
                  fit: BoxFit.fill, // لتغطية الصورة كاملةً بدون تشويه
                ),
              ),

            ],
          ),
          Center(child: Text("Happy Birthday",style:  TextStyle(fontSize: 100,color: Colors.blue),)),
        ]
      ),
    );
  }
}
