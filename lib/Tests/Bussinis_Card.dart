import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Card_bussinis extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bussiness Card',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Color(0xff26435F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100),
                 border: Border.all(color: Colors.white,width: 1),
             )
             ,child: CircleAvatar(radius: 90,backgroundColor: Color(0xff26435F),
           backgroundImage: AssetImage('assets/7535647.jpg'),),
         ),
          SizedBox(height: 30,),
          Text('Bussiness Card',style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: 'Edu Australia VIC WA NT Hand'),),
          SizedBox(height: 5,),
          Text('Flutter Developer',style: TextStyle(color: Colors.blueGrey,fontSize: 10,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
         Container(
           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),),
           margin: EdgeInsets.all(15),
           padding:EdgeInsets.all(7) ,
           child: Row(children: [
             Icon(Icons.phone,color: Colors.black,),
             SizedBox(width: 10,),
             Text('1234567890',style: TextStyle(color: Colors.black,fontSize: 10),),
           ],),
         ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),),
            margin: EdgeInsets.all(15),
            padding:EdgeInsets.all(7) ,
            child: Row(children: [
              Icon(Icons.email,color: Colors.black,),
              SizedBox(width: 10,),
              Text('george@.com',style: TextStyle(color: Colors.black,fontSize: 10),),
            ],),
          ),
        ]
      ),
    );
  }
}
