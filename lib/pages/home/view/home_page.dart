import 'package:flutter/material.dart';
import 'package:testflutter/util/emoticon_face.dart';

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
            Padding(
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
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      _exercisesHeading(),
                      SizedBox(
                        height: 20,
                      ),
                      // list
                      Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                        padding: EdgeInsets.all(16),
                                        color: Colors.orange,
                                        child: Icon(Icons.favorite,
                                        color: Colors.white,)),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '말하기 스킬들',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '16 Exercises',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
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
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
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
}
