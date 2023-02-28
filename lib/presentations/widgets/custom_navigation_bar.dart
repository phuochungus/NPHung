import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../../business_logics/utilities/utils.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 20,
            offset: Offset(0, -8),
          )
        ],
      ),
      child: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        height: Utils.getResponsiveHeight(60),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color(0xffFF3D71),
        color: Color(0xff222B45),
        items: [
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/images/home.png',
              fit: BoxFit.fill,
              height: 25,
              width: 25,
            ),
            label: 'Home',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/images/trend.png',
              fit: BoxFit.fill,
              height: 25,
              width: 25,
            ),
            label: 'Trend',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/images/explore.png',
              fit: BoxFit.fill,
              height: 25,
              width: 25,
            ),
            label: 'Explore',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/images/chat.png',
              fit: BoxFit.fill,
              height: 25,
              width: 25,
            ),
            label: 'Chat',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.fill,
              height: 25,
              width: 25,
            ),
            label: 'Profile',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ],
        onTap: (index) => {},
      ),
    );
  }
}
