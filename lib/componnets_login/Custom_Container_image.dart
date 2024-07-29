import 'package:flutter/material.dart';

class CustomContainerImage extends StatelessWidget {
   CustomContainerImage({super.key,required this.child,required this.circle});
  bool circle;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return  circle ?Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            offset: const Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: child,
    ) : Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.lightBlue,
        borderRadius:   BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade900.withOpacity(0.5),
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            offset: const Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
