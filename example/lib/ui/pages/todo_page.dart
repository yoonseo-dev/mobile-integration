import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:example/ui/pages/todo/widget/title_content.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(24),
          child: Column(
            children: [
              //타이틀 상단
              Header(),
              ProgressCard(),
            ],
          ),
        ),
      ),
    );
  }
}
