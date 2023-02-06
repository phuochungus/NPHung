import 'package:first_app/homeScreen.dart';
import 'package:first_app/podcastPlayerScreen.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xff192038);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PodcastPlayerScreen.routeName: (context) => PodcastPlayerScreen2(),
      },
    );
  }
}
