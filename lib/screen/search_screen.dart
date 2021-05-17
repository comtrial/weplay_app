import 'package:flutter/material.dart';
import 'package:weplay_app/model/constant.dart';
import 'dart:io';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    // double width = screenSize.width;
    // double height = screenSize.height;
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 310,
                height: 50,
                child: Container(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
