import 'package:flutter/material.dart';
import 'package:toptik/transit_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '读琴',
      debugShowCheckedModeBanner: false,
      home: TransitPage(),
    );
  }
}
