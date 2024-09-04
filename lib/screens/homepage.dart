import 'package:flutter/material.dart';
import 'package:mindlink/screens/image_post_screen.dart';
import 'package:mindlink/screens/text_post_screen.dart';
import 'package:mindlink/screens/video_post_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    const TextPostScreen(),
    const ImagePostScreen(),
    const VideoPostScreen(),
  ];

  final List<String> _pageTitles = [
    "Text Post",
    "Image Post",
    "Video Post",
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_selectedPageIndex]),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectedPage,
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
