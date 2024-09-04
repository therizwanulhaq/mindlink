import 'package:flutter/material.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';

class TextPostScreen extends StatelessWidget {
  const TextPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> textPosts =
        posts.where((post) => post.type == 'text').toList();

    return ListView.builder(
      itemCount: textPosts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(textPosts[index].content),
        );
      },
    );
  }
}
