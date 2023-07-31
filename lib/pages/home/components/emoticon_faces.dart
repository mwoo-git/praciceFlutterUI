import 'package:flutter/material.dart';
import 'package:testflutter/util/emoticon_face.dart';

class EmoticonFaces extends StatelessWidget {
  const EmoticonFaces({super.key});

  @override
  Widget build(BuildContext context) {
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
}
