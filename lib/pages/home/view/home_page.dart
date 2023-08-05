import 'package:flutter/material.dart';
import 'package:testflutter/util/emoticon_face.dart';
import 'package:testflutter/util/exercise_tile.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
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
            _header(),
            const SizedBox(
              height: 25,
            ),
            _list()
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          _topHeader(),
          const SizedBox(
            height: 25,
          ),
          _customSearchBar(),
          const SizedBox(
            height: 25,
          ),
          _howDoYouFeel(),
          const SizedBox(
            height: 25,
          ),
          _emoticonFaces()
        ],
      ),
    );
  }

  Widget _list() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(25),
        color: Colors.grey[200],
        child: Center(
          child: Column(
            children: [
              _exercisesHeading(),
              const SizedBox(
                height: 20,
              ),
              _exercisesList()
            ],
          ),
        ),
      ),
    );
  }

  Widget _topHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 안녕 민우
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('안녕 민우!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8,
            ),
            Text(
              '2023년 7월 31일',
              style: TextStyle(color: Colors.blue[200]),
            )
          ],
        ),

        // Notification
        Container(
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(12),
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _customSearchBar() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Search',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _howDoYouFeel() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'How do you feel?',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.more_horiz, color: Colors.white)
      ],
    );
  }

  Widget _emoticonFaces() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // bad
        Column(
          children: [
            EmoticonFace(
              emoticonFace: '😩',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Bad',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        // fine
        Column(
          children: [
            EmoticonFace(
              emoticonFace: '🙂',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Fine',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        // well
        Column(
          children: [
            EmoticonFace(
              emoticonFace: '😊',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Well',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        // exellent
        Column(
          children: [
            EmoticonFace(
              emoticonFace: '🥰',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Excellent',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }

  Widget _exercisesHeading() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Excercises',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Icon(Icons.more_horiz)
      ],
    );
  }

  Widget _exercisesList() {
    return Expanded(
      child: ListView(
        children: const [
          ExerciseTile(
            icon: Icons.favorite,
            exerciseName: '말하기 스킬들',
            numberOfExercises: 16,
            color: Colors.orange,
          ),
          ExerciseTile(
            icon: Icons.person,
            exerciseName: '읽기 스킬들',
            numberOfExercises: 8,
            color: Colors.green,
          ),
          ExerciseTile(
            icon: Icons.star,
            exerciseName: '쓰기 스킬들',
            numberOfExercises: 20,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
