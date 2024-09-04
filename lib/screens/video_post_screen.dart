import 'package:flutter/material.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';
import 'package:mindlink/widgets/video_player.dart';

class VideoPostScreen extends StatelessWidget {
  const VideoPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> videoPosts =
        posts.where((post) => post.type == 'video').toList();

    return ListView.builder(
      itemCount: videoPosts.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.amber,
          width: double.infinity,
          child: Column(
            children: [
              Text(videoPosts[index].content),
              VideoPlayerWidget(url: videoPosts[index].mediaUrl!),
            ],
          ),
        );
      },
    );
  }
}
