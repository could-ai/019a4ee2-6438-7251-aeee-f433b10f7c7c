class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelName;
  final String channelAvatar;
  final String viewCount;
  final String uploadTime;
  final String duration;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelName,
    required this.channelAvatar,
    required this.viewCount,
    required this.uploadTime,
    required this.duration,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      thumbnailUrl: json['thumbnailUrl'] ?? '',
      channelName: json['channelName'] ?? '',
      channelAvatar: json['channelAvatar'] ?? '',
      viewCount: json['viewCount'] ?? '0',
      uploadTime: json['uploadTime'] ?? '',
      duration: json['duration'] ?? '',
    );
  }
}