import 'package:flutter/material.dart';
import 'Login_ui/login_screen.dart';
import 'Messanger_ui/Messanger.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:  false,

      home: Messanger(),
    );
  }
}

