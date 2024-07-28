import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {

    CustumButton({super.key,required this.child});

    Widget? child;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            offset: Offset.zero,
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset.zero,
            blurRadius: 5,
          ),
        ],
      ),
      child: child,
    );
  }
}
