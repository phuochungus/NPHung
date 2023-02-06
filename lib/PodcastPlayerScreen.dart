import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:first_app/Podcast.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class PodcastPlayerScreen extends StatelessWidget {
  List<Podcast> favoritePodcastEpisodes;

  static String routeName = '/podcast-player';

  String _name, _duration;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Podcast>;
    final currentPodcast = routeArgs['selectedPodcast'];

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.settings_outlined)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -50,
                        child: Image.asset('assets/images/Rectangle1mini.png'),
                      ),
                      Image.asset(
                        'assets/images/Rectangle1HD.png',
                        height: 250,
                        width: 250,
                      ),
                    ],
                    clipBehavior: Clip.none,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 30),
                  child: Text(
                    currentPodcast.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: MediaControl(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ProgressBar(
                    thumbGlowRadius: 15,
                    thumbColor: Colors.white,
                    progressBarColor: Color(0xffFF3D71),
                    baseBarColor: Color(0x4DFFFFFF),
                    progress: Duration(minutes: 5),
                    total: Duration(minutes: 10),
                    timeLabelTextStyle: TextStyle(color: Color(0x99FFFFFF)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Favorite Podcast Episodes',
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
            Flexible(
              child: PodcastListView(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBarr(),
    );
  }
}

class MediaControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Image.asset('assets/images/shuffle.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset('assets/images/skip-back.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset('assets/images/play.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset('assets/images/skip-forward.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset('assets/images/sync.png'),
          onTap: () {},
        ),
      ],
    );
  }
}

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
