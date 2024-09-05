import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindlink/data/posts.dart';
import 'package:mindlink/models/post.dart';
import 'package:transparent_image/transparent_image.dart'; // Import for transparent image

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
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(imagePosts[index].avatar),
                backgroundColor: Colors.grey[200],
              ),
              title: Text(
                imagePosts[index].username,
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

            // FadeInImage with transparent placeholder
            FadeInImage.memoryNetwork(
              placeholder:
                  kTransparentImage, // Transparent image from the package
              image: imagePosts[index].mediaUrl!, // Actual image URL from post
              fit: BoxFit
                  .contain, // Maintains aspect ratio and fits within the screen width
              width: MediaQuery.of(context)
                  .size
                  .width, // Fit image to device width
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
