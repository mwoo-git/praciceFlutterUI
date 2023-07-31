import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
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
}