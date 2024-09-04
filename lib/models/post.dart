// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  final String id;
  final String username;
  final String avatar;
  final String content;
  final String type; // 'text', 'image', or 'video'
  final String? mediaUrl;

  Post({
    required this.id,
    required this.username,
    required this.avatar,
    required this.content,
    required this.type,
    this.mediaUrl,
  });
}
