import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Rectangle1mini.png',
        ),
      ],
    );
  }
}
