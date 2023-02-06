// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Podcast.dart';
import 'PodcastPlayerScreen.dart';
import 'Utils.dart';
import 'homeScreen.dart';

void navigateToPodcastPlayer(BuildContext context, Podcast selectedPodcast) {
  Navigator.of(context).pushNamed(
    PodcastPlayerScreen.routeName,
    arguments: {'selectedPodcast': selectedPodcast},
  );
}

class PodcastListView extends StatelessWidget {
  List<Podcast> podcasts = <Podcast>[
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

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: podcasts.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => navigateToPodcastPlayer(context, podcasts[index]),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      podcasts.elementAt(index).image,
                      height: Utils.getResponsiveHeight(60),
                      width: Utils.getResponsiveWidth(60),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: Utils.getResponsiveWidth(8)),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                child: Text(
                                  podcasts.elementAt(index).date,
                                  style: TextStyle(
                                    color: Color(0xccffffff),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Text(
                                  podcasts.elementAt(index).duration,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            podcasts.elementAt(index).name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
    );
  }
}
