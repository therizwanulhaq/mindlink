import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';
import 'package:mindlink/widgets/post_info.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagePostScreen extends StatelessWidget {
  const ImagePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> imagePosts =
        posts.where((post) => post.type == 'image').toList();

    return ListView.builder(
      itemCount: imagePosts.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostInfo(
                avatar: imagePosts[index].avatar,
                name: imagePosts[index].name,
                username: imagePosts[index].username),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: imagePosts[index].mediaUrl!,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
            ),
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
                  imagePosts[index].username,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Text(imagePosts[index].content),
              ],
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
