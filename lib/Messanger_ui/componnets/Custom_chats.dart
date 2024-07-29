import 'package:flutter/material.dart';

import 'Custom_Listtile.dart';

class CustomChats extends StatelessWidget {
  const CustomChats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 10,
        itemBuilder: (context, index) => Card(
        elevation: 5,
        shadowColor: Colors.grey.shade500,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
        color: Colors.grey.shade300, width: 2.5),
        ),
        child: const CustomListTile(),
        ),
        );
  }
}
