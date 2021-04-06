import 'package:flutter/material.dart';
import 'package:jisho/ui/home_screen.dart';

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
