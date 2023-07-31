import 'package:flutter/material.dart';
import 'package:testflutter/pages/home/components/emoticon_faces.dart';
import 'package:testflutter/pages/home/components/how_do_you_feel.dart';
import 'package:testflutter/pages/home/components/top_header.dart';
import 'package:testflutter/pages/home/components/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  TopHeader(),
                  SizedBox(
                    height: 25,
                  ),
                  CustomSearchBar(),
                  SizedBox(
                    height: 25,
                  ),
                  HowDoYouFeel(),
                  SizedBox(
                    height: 25,
                  ),
                  EmoticonFaces()
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
              ),
            )
          ],
        ),
      ),
    );
  }
}
