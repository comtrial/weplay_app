import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weplay_app/screen/play_screen.dart';
import 'package:weplay_app/widget/custom_appbar.dart';
import 'package:weplay_app/widget/video_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        fullscreenDialog: true,
                        builder: (BuildContext context) {
                          return PlayScreen();
                        }));
                  },
                  child: VideoWidget(),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
