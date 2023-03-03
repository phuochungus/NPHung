import 'package:flutter/material.dart';

import '../../business_logics/utilities/utils.dart';
import '../../data/DTO/podcast.dart';

class Item extends StatelessWidget {
  final Function()? onPressHandler;

  final Podcast podcast;
  Item({
    required this.onPressHandler,
    required this.podcast,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onPressHandler,
            child: PodcastItem(podcast),
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
    );
  }
}

class PodcastItem extends StatelessWidget {
  final Podcast podcast;
  PodcastItem(this.podcast);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.asset(
            podcast.image,
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        podcast.date,
                        style: TextStyle(
                          color: Color(0xccffffff),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    // SizedBox(width: 30),
                    Container(
                      child: Text(
                        podcast.duration,
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
                  podcast.name,
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
    );
  }
}
