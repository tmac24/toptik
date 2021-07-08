import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('HomePage'));
  }
}
