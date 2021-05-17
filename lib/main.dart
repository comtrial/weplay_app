import 'package:flutter/material.dart';
import 'package:weplay_app/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Weplay',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: 
          TabBarView(
            //스크롤로 탭 간 전환 방지
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      )
    );
  }
}