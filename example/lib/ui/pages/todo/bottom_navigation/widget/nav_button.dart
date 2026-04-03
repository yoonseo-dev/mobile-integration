import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final String text;
  const NavButton({
    super.key,
    this.selected = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: selected ? Process.done.primaryColor : Colors.white,
        borderRadius: .circular(50),
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Icon(icon, color: selected ? Colors.white : Colors.grey),
          Text(
            text,
            style: TextStyle(color: selected ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }
}
