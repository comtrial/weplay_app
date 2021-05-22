import 'package:flutter/material.dart';
import 'package:weplay_app/model/constant.dart';
import 'package:weplay_app/widget/player.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({Key key}) : super(key: key);

  Widget _player() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 180,
      width: 330,
      child: PlayVideo(),
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    'https://pbs.twimg.com/profile_images/600556005462650881/BQr5YI4D_400x400.jpg')
                .image,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "상어가족~~~~~~~",
                        maxLines: 2,
                        style: kTitleStyle,
                      ),
                    ),
                    IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 18,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "상어맨",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(" . "),
                    Text(
                      "조회수",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(" . "),
                    Text(
                      "2021-02-05",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
      child: Column(
        children: [
          SizedBox(height: 20),
          _player(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}
