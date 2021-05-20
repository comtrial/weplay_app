import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  final String title;
  final String channel_title;
  final String views;
  final String date;
  final DocumentReference reference;

  Video.fromMap(Map<String, dynamic> map, {this.reference})
      : title = map['title'],
        channel_title = map['channel_title'],
        views = map['views'],
        date = map['date'];

  // firebase와 연동하는 코드
  Video.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  @override
  String toString() => "Video<$title>";
}
