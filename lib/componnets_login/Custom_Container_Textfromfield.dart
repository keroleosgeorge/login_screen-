import 'package:flutter/material.dart';

import 'Custom_Text_form_Field.dart';

class CustomContainerTextfromfield extends StatelessWidget {
  CustomContainerTextfromfield({required this.child,required this.color});

  CustomTextFormField child;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              offset: const Offset(3, 0),
              blurRadius: 6,
            ),
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              offset: const Offset(3, 0),
              blurRadius: 6,
            ),
          ],
        ),
        child: child,
    );
  }
}
