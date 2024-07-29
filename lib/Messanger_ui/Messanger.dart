import 'package:flutter/material.dart';
import '../componnets_login/Custom_Container_Textfromfield.dart';
import '../componnets_login/Custom_Text_form_Field.dart';
import 'componnets/Custom_CircileAvtar.dart';
import 'componnets/Custom_chats.dart';
import 'componnets/Custom_story.dart';

class Messanger extends StatelessWidget {
  const Messanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CustomCircileAvtar(
              radius: 20,
            ),
            const SizedBox(width: 10),
            const Text("Chats"),
          ],
        ),
        titleSpacing: 20,
        actions: [
          IconButton(onPressed: () {},
              icon: const CircleAvatar(child: Icon(Icons.camera_alt_outlined))),
          IconButton(
              onPressed: () {}, icon: const CircleAvatar(child: Icon(Icons.edit))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              CustomContainerTextfromfield(
                color: Colors.black54.withOpacity(0.1),
                child: CustomTextFormField(
                  icon: Icons.search,
                  labelText: 'Search',
                ),
              ),

              const SizedBox(height: 10), // Reduced space between search and first ListView

              const CustomStory(),

              const SizedBox(height: 10), // Reduced space between the two ListViews

              const CustomChats(),
            ],
          ),
        ),
      ),
    );
  }
}
