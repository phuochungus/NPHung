import 'package:first_app/main.dart';
import 'package:first_app/podcastListView.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'Utils.dart';

import 'podcast.dart';
import 'PodcastPlayerScreen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    Utils.setContext(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Welcome John Doe',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w700)),
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/bell.png'),
          )
        ],
      ),
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Utils.getResponsiveWidth(16),
                  right: Utils.getResponsiveWidth(16),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: Utils.getResponsiveHeight(24),
                      ),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Looking for podcast channels',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: Utils.getResponsiveHeight(8),
                        bottom: Utils.getResponsiveHeight(16),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            isDense: true,
                            prefixIcon: Image.asset('assets/images/search.png'),
                            hintStyle: TextStyle(
                              color: Color(0xff8F9BB3),
                            ),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            fillColor: Color(0xff222B45),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: Utils.getResponsiveHeight(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('Catagories',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w600)),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Align(
                                  heightFactor: 2.5,
                                  widthFactor: 2.5,
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/images/downArrow.png'),
                                ),
                              ),
                            ),
                          ]),
                          InkWell(
                            onTap: () {},
                            child: Align(
                              alignment: Alignment.center,
                              heightFactor: 1.5,
                              child: Text(
                                'View all',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Utils.getResponsiveHeight(115),
                child: Catagories(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Utils.getResponsiveWidth(16),
                  top: Utils.getResponsiveHeight(32),
                  right: Utils.getResponsiveWidth(16),
                ),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Best Podcast Episodes',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w600)),
                      Text(
                        'View all',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                Utils.getResponsiveWidth(16),
                Utils.getResponsiveHeight(16),
                Utils.getResponsiveWidth(16),
                Utils.getResponsiveHeight(32),
              ),
              child: PodcastListView(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBarr(),
    );
  }
}

class CurvedNavigationBarr extends StatelessWidget {
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

class Catagories extends StatelessWidget {
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
