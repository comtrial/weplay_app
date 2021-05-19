class Video {
  final String title;
  final String channel_title;
  final String views;
  final String date;

  Video.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        channel_title = map['channel_title'],
        views = map['views'],
        date = map['date'];

  @override
  String toString() => "Video<$title>";
}