import 'package:flutter/material.dart';

class  CustomCircileAvtar extends StatelessWidget {
  CustomCircileAvtar ({super.key,required this.radius});

  double radius ;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        CircleAvatar(
          backgroundImage: const NetworkImage("https://i.pravatar.cc/300"),
          radius: radius,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
