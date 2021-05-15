import 'package:flutter/material.dart';
// custom 스타일 import
import 'package:weplay_app/model/constant.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainBackground,
      child: Container(
        height: 70,
        child: TabBar(
          labelColor: downDark,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 20
                ,
                )
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 20,
                )
            ),
            Tab(
              icon: Icon(
                Icons.notifications,
                size: 20,
                )
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                size: 20,
                )
            ),
          ],
        ),
      ),
    );
  }
}