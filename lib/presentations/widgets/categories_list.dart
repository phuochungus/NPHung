import 'package:flutter/material.dart';

import '../../business_logics/utilities/utils.dart';

class CatagoriesList extends StatelessWidget {
  final List<String> catagories = [
    'Education',
    'Society',
    'Sports',
    'Films',
  ];

  final List<List<Color>> catagoryColors = [
    [
      Color(0xfff5AF19),
      Color(0xfff12711),
    ],
    [
      Color(0xff623DEF),
      Color(0xff340FD1),
    ],
    [
      Color(0xff43EF1D),
      Color(0xff0D80F2),
    ],
    [
      Color(0xffE9228D),
      Color(0xffF12711),
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: catagories.length,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gradient: LinearGradient(
              colors: catagoryColors[index],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        width: Utils.getResponsiveWidth(95),
        margin: EdgeInsets.only(
          left: index == 0
              ? Utils.getResponsiveWidth(16)
              : Utils.getResponsiveWidth(8),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          onPressed: () => {},
          child: Text(
            catagories[index],
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
