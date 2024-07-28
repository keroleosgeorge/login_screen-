import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'https://th.bing.com/th/id/OIP.GPFEY6kfgxbsja6gmrW6rwHaE7?w=264&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://th.bing.com/th/id/OIP.9Izv-aszItToTtEqRMSE0QHaE6?w=265&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://th.bing.com/th/id/OIP.HLuY60jzx5puuKjbqmWRRwHaEK?w=274&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://th.bing.com/th/id/OIP.nyLAzWYdvc-wb9ntq1cU7QHaHa?w=1080&h=1080&rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.GPFEY6kfgxbsja6gmrW6rwHaE7?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    ];

    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(images[index]),fit: BoxFit.fill),
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
