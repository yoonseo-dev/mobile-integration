import 'package:example/enum/process.dart';
import 'package:example/ui/pages/todo/widget/circle_check_box.dart';
import 'package:example/ui/pages/todo/widget/process_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (
        title: "운동하기",
        filter: "건강",
        time: DateTime.now(),
        process: Process.done,
      ),
      (
        title: "저녁식사",
        filter: "건강",
        time: DateTime.now(),
        process: Process.todo,
      ),
      (
        title: "공부하기 ",
        filter: "개인",
        time: DateTime.now(),
        process: Process.doing,
      ),
    ];
    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];
        return Container(
          padding: .symmetric(horizontal: 20, vertical: 18),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: .circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
              CircleCheckBox(value: data.process == .done),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '${data.filter} · ${DateFormat('HH:mm').format(data.time)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              //Procees Badge
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}
