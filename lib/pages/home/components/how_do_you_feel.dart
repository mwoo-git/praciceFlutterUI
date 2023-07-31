import 'package:flutter/material.dart';

class HowDoYouFeel extends StatelessWidget {
  const HowDoYouFeel({super.key});

  @override
  Widget build(BuildContext context) {
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
}