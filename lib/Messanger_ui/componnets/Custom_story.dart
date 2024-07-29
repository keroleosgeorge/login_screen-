import 'package:flutter/material.dart';

import 'Custom_CircileAvtar.dart';

class CustomStory extends StatelessWidget {
  const CustomStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(//conatiner for horizontal listview to علشان تحجم المكان
      height: 120, // Set a fixed height for the horizontal ListView container
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          elevation: 5,
          margin: const EdgeInsets.symmetric(vertical: 10), // Reduced vertical margin
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 80,
            // padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircileAvtar(
                  radius: 20,
                ),
                const SizedBox(height: 5),
                const Text(
                  "namenamenamenamename",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 6,
      ),
    );
  }
}
