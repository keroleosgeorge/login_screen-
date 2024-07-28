import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/test.dart';


class Test2 extends StatelessWidget {
  const Test2({super.key, required this.name});
  
final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:const Icon( Icons.arrow_back),onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => const Test())),),
      ),
      body: ListView.builder(
        itemBuilder:(context, index) {
       return Card(
         color: Colors.blue,
           shape: OutlineInputBorder(

             borderRadius: BorderRadius.circular(20),
           ),
           child: ListTile(
         leading: Text(name),

         style: ListTileStyle.list,
       )) ;
      },
        itemCount: 10,
      ),
    );
  }
}
