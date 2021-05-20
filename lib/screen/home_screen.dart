import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weplay_app/widget/custom_appbar.dart';
import 'package:weplay_app/widget/video_widget.dart';
import 'package:get/get.dart';
import 'package:weplay_app/model/model_video.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<QuerySnapshot> streamData;
  @override
  void initState() {
    super.initState();
    streamData = firestore.collection('video_data').snapshots();
  }

  Widget _fetchData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('video_data').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildBody(context, snapshot.data.docs);
      },
    ); // StreamBuilder
  }

  // 데이터베이스에서 video를 videos에 리스트형태로 변환.
  Widget _buildBody(BuildContext context, List<DocumentSnapshot> snapshot) {
    List<Video> videos = snapshot.map((d) => Video.fromSnapshot(d)).toList();
    print(videos);
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
                    Get.toNamed("/detail/RhEzrNTSW7c");
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

  @override
  Widget build(BuildContext context) {
    return _fetchData(context);
  }
}
