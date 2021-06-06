import 'package:flutter/material.dart';
import 'package:musistic/Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musistic',
      theme: ThemeData(
        primaryColor: Color(0xFF004953),
        accentColor: Color(0xFF),
      ),
      home: HomePage(),
    );
  }
}
