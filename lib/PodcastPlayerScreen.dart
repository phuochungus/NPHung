import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:first_app/main.dart';
import 'package:first_app/podcast.dart';
import 'package:first_app/podcastListView.dart';
import 'package:first_app/utils.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

class PodcastPlayerScreen extends StatefulWidget {
  static String routeName = '/podcast-player';
  Podcast currentPodcast;
  List<Podcast> favPodcasts;
  PodcastPlayerScreen(this.currentPodcast, {this.favPodcasts});

  @override
  State<StatefulWidget> createState() {
    return PodcastPlayerScreenSate(currentPodcast);
  }
}

class PodcastPlayerScreenSate extends State<PodcastPlayerScreen> {
  List<Podcast> favoritePodcastEpisodes = List.empty();
  Podcast currentPodcast;
  PodcastPlayerScreenSate(this.currentPodcast);

  @override
  Widget build(BuildContext context) {
    Utils.setContext(context);
    favoritePodcastEpisodes = widget.favPodcasts;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 15,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              customBorder: CircleBorder(),
              child: Icon(
                Icons.settings_outlined,
                size: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              customBorder: CircleBorder(),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          Utils.getResponsiveWidth(16),
          20,
          Utils.getResponsiveWidth(16),
          20,
        ),
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
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            customBorder: CircleBorder(),
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/heart.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                    clipBehavior: Clip.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: Utils.getResponsiveHeight(32),
                    top: Utils.getResponsiveHeight(32),
                  ),
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
                  padding: EdgeInsets.only(
                    bottom: Utils.getResponsiveHeight(20),
                  ),
                  child: MediaControl(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: Utils.getResponsiveHeight(28),
                  ),
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
              padding: EdgeInsets.only(
                bottom: Utils.getResponsiveHeight(16),
              ),
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
              child: ListView.separated(
                itemCount: favoritePodcastEpisodes.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) => Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => {
                          setState(
                            () =>
                                currentPodcast = favoritePodcastEpisodes[index],
                          )
                        },
                        child: PodcastItem(favoritePodcastEpisodes[index]),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: Utils.getResponsiveHeight(60),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
