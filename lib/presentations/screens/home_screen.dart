import 'package:flutter/material.dart';

import '../../business_logics/utilities/utils.dart';
import '../../data/DTO/podcast.dart';
import '../../main.dart';
import '../widgets/categories_list.dart';
import '../widgets/podcast_list_view.dart';
import '../widgets/custom_navigation_bar.dart';
import 'podcast_player_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';

  static void navigateToPodcastPlayer({
    required BuildContext context,
    required Podcast selectedPodcast,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PodcastPlayerScreen(
          selectedPodcast,
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  Podcast? previousSelectedPodcast = null;

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
                child: CatagoriesList(),
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
              child: PodcastListView(
                  onPressHandler: NavigationFunctionExecutor(
                      HomeScreen.navigateToPodcastPlayer)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
