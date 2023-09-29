import 'package:assignment_8/news_feed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('News Feed'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return NewsFeed(orientation: orientation);
          },
        ),
      ),
    );
  }
}