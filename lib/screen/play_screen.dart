import 'package:flutter/material.dart';
import 'package:weplay_app/model/constant.dart';
import 'package:weplay_app/screen/search_screen.dart';
import 'package:weplay_app/widget/player_widget.dart';
import 'package:weplay_app/widget/practice.dart';
import 'package:weplay_app/widget/video_widget.dart';
import 'package:weplay_app/widget/video_widget_small.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackground,
      body: Column(
        children: [
          Container(child: PlayerWidget()),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute<Null>(
                              fullscreenDialog: true,
                              builder: (BuildContext context) {
                                return Practice();
                              }));
                        },
                        child: SearchedVideo1(),
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
