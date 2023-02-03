import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'Podcast.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Container(
            width: 30,
            child: Image.asset('assets/images/bell.png'),
          )
        ],
      ),
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
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
                  margin: EdgeInsets.only(top: 10),
                  child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
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
                      ))),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30, bottom: 30),
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
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset('assets/images/downArrow.png'),
                      )
                    ]),
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
            ]),
          ),
          Container(
            child: SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xfff5AF19),
                              Color(0xfff12711),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      width: 100,
                      margin: EdgeInsets.only(left: 20, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () => {},
                        child: Text(
                          'Education',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff623DEF),
                              Color(0xff340FD1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () => {},
                        child: Text(
                          'Society',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff43EF1D),
                              Color(0xff0D80F2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () => {},
                        child: Text(
                          'Sports',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffE9228D),
                              Color(0xffF12711),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () => {},
                        child: Text(
                          'Films',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
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
          PodcastListView(),
        ],
      ),
    );
  }
}

class PodcastListView extends StatelessWidget {
  final List<Podcast> podcasts = <Podcast>[
    Podcast("assets/images/Rectangle1.png", "DEC 30, 2020",
        "The Year in MoGraph - 2020", "3 hr 31 min"),
    Podcast('assets/images/Rectangle2.png', 'DEC 2, 2020',
        'Episode 197: The World of Lettering', '42 min'),
    Podcast('assets/images/Rectangle3.png', 'DEC 18, 2020',
        'How to Create YouTube Video Ads That Convert', '52 min'),
    Podcast('assets/images/Rectangle4.png', 'DEC 15, 2020',
        'Airbnb\'s Brian Chesky: Designing for trust', '46 min'),
    Podcast('assets/images/Rectangle5.png', 'DEC 09, 2020',
        'Sounds Worth Saving', '46 min'),
  ];

  void debug() {
    print(podcasts.elementAt(0).image);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: ListView.separated(
            itemCount: podcasts.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => print(index.toString()),
                  child: Container(
                    margin: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            podcasts.elementAt(index).image,
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Align(
                                      child: Text(
                                        podcasts.elementAt(index).date,
                                        style: TextStyle(
                                            color: Color(0xccffffff),
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        podcasts.elementAt(index).duration,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    podcasts.elementAt(index).name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )),
                        Spacer(),
                        Container(
                          child: ImageIcon(
                            AssetImage(
                              'assets/images/three_dot.png',
                            ),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
