import 'package:flutter/material.dart';

class CustomButtonwithoutcontainer  extends StatelessWidget {
 CustomButtonwithoutcontainer({super.key,required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 30),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.blue.shade200),
        fixedSize: const MaterialStatePropertyAll(Size(300, 50)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        elevation: const MaterialStatePropertyAll(10),
        shadowColor: MaterialStatePropertyAll(Colors.blue.shade900),
      ),
    );
  }
}
