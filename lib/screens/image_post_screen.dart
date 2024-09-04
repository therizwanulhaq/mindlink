import 'package:flutter/material.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';

class ImagePostScreen extends StatelessWidget {
  const ImagePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> imagePosts =
        posts.where((post) => post.type == 'image').toList();

    return ListView.builder(
      itemCount: imagePosts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(imagePosts[index].content),
          leading: Image.network(imagePosts[index].mediaUrl!),
        );
      },
    );
  }
}
