// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:weplay_app/model/constant.dart';

// class SearchedVideo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
//       width: 360,
//       height: 110,
//       child: TextButton(
//         style: TextButton.styleFrom(
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10))),
//         ),
//         child: Container(
//           child: Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(6),
//                 width: 150,
//                 child: Image.network(
//                   'https://i.ytimg.com/vi/T_J8tbROUik/default.jpg',
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(6),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 170,
//                       child: Text(
//                         '이건 제목입다이니다이건 제목입다이니다이건 제목입다이니dssdssddsdsd다',
//                         maxLines: 3,
//                         softWrap: true,
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 160,
//                       height: 20,
//                       child: Text(
//                         '박지환의 브이로그 조회수: 40억회 8년전',
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w600,
//                           color: downDark,
//                           fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         onPressed: () {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:weplay_app/model/constant.dart';

class SearchedVideo1 extends StatelessWidget {
  const SearchedVideo1({Key key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 110,
      width: 330,
      decoration: BoxDecoration(
        image: DecorationImage(
            image:
                Image.network('https://i.ytimg.com/vi/T_J8tbROUik/default.jpg')
                    .image,
            fit: BoxFit.cover),
      ),
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
                        "제목입다이니다이건",
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
                      "하위하윙",
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
      margin: EdgeInsets.fromLTRB(12, 0, 12, 10),
      child: Column(
        children: [
          SizedBox(height: 14),
          _thumbnail(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}
