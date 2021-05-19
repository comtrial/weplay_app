import 'package:flutter/material.dart';
import 'package:weplay_app/model/constant.dart';
import 'package:weplay_app/model/model_video.dart';
import 'dart:io';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Video> videos = [
    Video.fromMap({
      'title': "동영상 제목",
      'channel_title': '채널명',
      'views': '24만회',
      'date': '2020-04-20'
    })
  ];

  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  _SearchScreenState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    // double width = screenSize.width;
    // double height = screenSize.height;
    return Container(
      padding: EdgeInsets.fromLTRB(5, 44, 5, 10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                ),
                color: Colors.black,
                onPressed: () {},
              ),
              Container(
                width: 320,
                height: 50,
                child: TextField(
                  focusNode: focusNode,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: downDark,
                    fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
                    decoration: TextDecoration.none,
                  ),
                  autofocus: true,
                  cursorColor: Colors.white,
                  controller: _filter,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white60,
                      size: 20,
                    ),
                    suffixIcon: focusNode.hasFocus
                        ? IconButton(
                            icon: Icon(
                              Icons.cancel,
                              size: 20,
                              color: Colors.white60,
                            ),
                            onPressed: () {
                              setState(() {
                                _filter.clear();
                                _searchText = "";
                              });
                            },
                          )
                        : Container(),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                      fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
                      decoration: TextDecoration.none,
                    ),
                    hintText: ' 동영상 검색어 입력',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
          SearchedVideo(),
          SearchedVideo(),
          SearchedVideo(),
          SearchedVideo(),
          SearchedVideo(),
          SearchedVideo(),
        ],
      ),
    );
  }
}

class SearchedVideo extends StatefulWidget {
  @override
  _SearchedVideoState createState() => _SearchedVideoState();
}

class _SearchedVideoState extends State<SearchedVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: 360,
      height: 110,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                width: 150,
                child: Image.network(
                  'https://i.ytimg.com/vi/T_J8tbROUik/default.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      child: Text(
                        '이건 제목입다이니다이건 제목입다이니다이건 제목입다이니dssdssddsdsd다',
                        maxLines: 3,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 20,
                      child: Text(
                        '박지환의 브이로그 조회수: 40억회 8년전',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: downDark,
                          fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
