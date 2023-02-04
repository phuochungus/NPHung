import 'package:first_app/HomeScreen.dart';
import 'package:first_app/PodcastPlayerScreen.dart';
import 'package:flutter/material.dart';
import 'test.dart';

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
      theme: ThemeData(
          textTheme: TextTheme(
        headlineSmall: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w600),
      )),
      title: 'Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PodcastPlayerScreen.routeName: (context) => PodcastPlayerScreen(),
      },
    );
  }
}
