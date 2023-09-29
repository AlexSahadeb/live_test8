
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  final Orientation orientation;

  const NewsFeed({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    final isPortrait = orientation == Orientation.portrait;
    int itemCount = 10;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isPortrait ? 1 : 2, mainAxisSpacing: 20),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
