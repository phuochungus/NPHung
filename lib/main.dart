import 'package:first_app/Home.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xff192038);

void main() {
  runApp(MyApp());
}

void answerQuestion() {
  print('Answer chosen');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: HomeScreen(),
    );
  }
}
