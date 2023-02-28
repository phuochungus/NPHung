import 'package:flutter/material.dart';

class MediaControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          customBorder: CircleBorder(),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/shuffle.png'),
          ),
          onTap: () {},
        ),
        InkWell(
          customBorder: CircleBorder(),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/skip-back.png'),
          ),
          onTap: () {},
        ),
        InkWell(
          customBorder: CircleBorder(),
          child: Container(
            height: 50,
            width: 50,
            child: Image.asset('assets/images/play.png'),
          ),
          onTap: () {},
        ),
        InkWell(
          customBorder: CircleBorder(),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/skip-forward.png'),
          ),
          onTap: () {},
        ),
        InkWell(
          customBorder: CircleBorder(),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/sync.png'),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
