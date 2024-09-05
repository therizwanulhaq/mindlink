import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';
import 'package:mindlink/widgets/post_info.dart';
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostInfo(
                avatar: videoPosts[index].avatar,
                name: videoPosts[index].name,
                username: videoPosts[index].username),
            VideoPlayerWidget(url: videoPosts[index].mediaUrl!),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 10),
                Icon(FontAwesomeIcons.heart),
                SizedBox(width: 16),
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 16),
                Icon(FontAwesomeIcons.paperPlane),
                Spacer(),
                Icon(FontAwesomeIcons.bookmark),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, bottom: 3),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(text: "Liked by "),
                    TextSpan(
                        text: "pink_guy ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "and "),
                    TextSpan(
                        text: "324,443 others",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Text(
                  videoPosts[index].username,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Text(videoPosts[index].content),
              ],
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
