import 'package:flutter/material.dart';

class Container_For_All_Widgets extends StatelessWidget {
   Container_For_All_Widgets({this.column});
Column? column;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, // عرض ثابت للحاوية
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            offset: const Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child:column ,
    );
  }
}
