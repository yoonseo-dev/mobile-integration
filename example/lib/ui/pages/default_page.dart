import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('예제 화면'), leading: Icon(Icons.home)),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.amber)),
          Expanded(child: Container(color: Colors.blueAccent)),
          Container(color: Colors.lightGreen),
        ],
      ),
    );
  }
}
