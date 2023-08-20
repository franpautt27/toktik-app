import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;
  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.views,
    required this.likes,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        likes: json["likes"] ?? 0,
        name: json["name"] ?? "No name",
        videoUrl: json["videoUrl"],
        views: json["views"] ?? 0,
      );

  VideoPost toVideoPostEntity() => VideoPost(
        caption: name,
        videoUrl: videoUrl,
        views: views,
        likes: likes,
      );
}
