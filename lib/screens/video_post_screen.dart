import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(videoPosts[index].avatar),
                backgroundColor: Colors.grey[200],
              ),
              title: Text(
                videoPosts[index].username,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    size: 20,
                  )),
            ),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                "Liked by pink_guy, joji and 528,331 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
