import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  Color get secondaryColor => switch (this) {
    .done => Color(0x208b5cf6),
    .doing => Color(0x2014b8a6),
    .todo => Color(0x20f472b6),
  };

  Color get primaryColor => switch (this) {
    .done => Color(0xff8b5cf6),
    .doing => Color(0xff14b8a6),
    .todo => Color(0xfff472b6),
  };

  String get title => switch (this) {
    .done => '완료',
    .doing => '진행중',
    .todo => '예정',
  };

  //   if (this == .todo) {
  //     return Color(0x208b5cf6);
  //   } else if (this == .doing) {
  //     return Color(0x2014b8a6);
  //   }
  //   return Color(0x20f472b6);
  // }

  //Ramda
  // return this == .done
  //     ? Color(0x20f472b6)
  //     : this == .doing
  //     ? Color(0x2014b8a6)
  //     : Color(0x208b5cf6);
}
