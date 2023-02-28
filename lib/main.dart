import 'package:flutter/material.dart';

import 'presentations/screens/home_screen.dart';

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
      },
    );
  }
}
