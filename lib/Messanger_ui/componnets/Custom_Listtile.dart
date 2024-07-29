import 'package:flutter/material.dart';

import 'Custom_CircileAvtar.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey.shade500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.grey.shade300,
          width: 2.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          children: [
            CustomCircileAvtar(
              radius: 30,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "time",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    color: Colors.grey,
                    height: 30, // Adjust this height as needed
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Text(
                          "name $index",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text("last message"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



