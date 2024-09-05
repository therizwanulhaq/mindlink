import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        return Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 1, color: Color.fromARGB(129, 196, 196, 196)))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(textPosts[index].avatar),
                  backgroundColor: Colors.grey[200],
                ),
                title: Text(
                  textPosts[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "@${textPosts[index].username}",
                  style: const TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      size: 20,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 62),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textPosts[index].content,
                    ),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.heart, size: 15),
                        const SizedBox(width: 16),
                        const Icon(FontAwesomeIcons.comment, size: 15),
                        const SizedBox(width: 16),
                        const Icon(FontAwesomeIcons.retweet, size: 15),
                        const Spacer(),
                        const Icon(FontAwesomeIcons.bookmark, size: 15),
                        const SizedBox(width: 16),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              size: 15,
                            )),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
