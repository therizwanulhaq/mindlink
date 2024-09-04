import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("yahoo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: "Text",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: "Image",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "Video",
          ),
        ],
      ),
    );
  }
}
