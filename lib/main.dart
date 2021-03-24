import 'package:flutter/material.dart';
import 'package:jisho/network_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    getWordData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
