import 'package:example/ui/pages/todo/bottom_navigation/widget/nav_button.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: .all(8),
      decoration: BoxDecoration(
        borderRadius: .circular(30),
        border: .all(color: Colors.grey[300]!),
      ),
      child: Row(
        children:
            [
                  (text: '홈', icons: Icons.home),
                  (text: '캘린더', icons: Icons.calendar_month),
                  (text: '통계', icons: Icons.bar_chart),
                  (text: '프로필', icons: Icons.person),
                ]
                .map(
                  (e) => Expanded(
                    child: NavButton(
                      selected: e.text == '홈',
                      icon: e.icons,
                      text: e.text,
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
