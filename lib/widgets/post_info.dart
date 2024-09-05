import 'package:flutter/material.dart';

class PostInfo extends StatelessWidget {
  final String avatar;
  final String name;
  final String username;
  const PostInfo({
    super.key,
    required this.avatar,
    required this.name,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      leading: CircleAvatar(
        radius: 23,
        backgroundImage: NetworkImage(avatar),
        backgroundColor: Colors.grey[200],
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        "@$username",
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 20,
          )),
    );
  }
}
