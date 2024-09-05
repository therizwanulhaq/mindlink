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
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Color.fromARGB(123, 158, 158, 158), width: 1),
            ),
          ),
          child: Column(
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
                      Icons.share,
                      size: 20,
                    )),
              ),
              const SizedBox(height: 10),
              VideoPlayerWidget(url: videoPosts[index].mediaUrl!),
            ],
          ),
        );
      },
    );
  }
}
