import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(24),
      decoration: BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: Column(
        children: [
          DefaultTextStyle(
            style: TextStyle(color: Colors.white),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('오늘의 진행률', style: TextStyle(fontSize: 18)),
                Text('60%', style: TextStyle(fontSize: 30, fontWeight: .bold)),
              ],
            ),
          ),
          Text('A'),
          Text('A'),
        ],
      ),
    );
  }
}
