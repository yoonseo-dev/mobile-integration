# 모바일통합구현1

2026년 3학년 1학기 - 모바일통합구현1

---

### 1주차

---

### 2주차

Todo 앱의 기본적인 틀(Home화면)의 UI를 구현해 봄.

```
StatelessWidget vs StatefullWidget

StatelessWidget : 상태를 변경할 필요가 없는 위젯 BuildContext에만 의존.
StatfullWidget : 상태를 변경할 수 있는 위젯. StatelessWidget과 달리 내부 클럭 기반 상태 또는 시스템 상태에 따라 동적으로 변경될 수 있는 구성
```

`SafeArea : 운영체제의 간섭을 피하기 위해 자식 위젯을 충분한 여백을 두고 안쪽으로 배치하는 위젯`

```
위젯 간 간격주기

1. Spacer()
2. Row -> mainAxisAlignment: .spaceBetween`
```

`DefaultTextStyle : code Action에서 Widget으로 감싸기를 이용하면 텍스트에 기본으로 넣어줄 스타일을 따로 빼서 정해놓을 수 있다.`

`Container 꾸미리 -> decoration의 BoxDecoration 사용`

```
주의 : Container에는 decoration과 color 옵션을 동시에 사용하지 못한다. decoration안에 있는 color 옵션을 사용하자.
```

---

### 3주차

---

### 4주차

- widget/process_badge.dart
- widget/circle_check_box.dart
- bottom_navigation/bottom_navigation.dart
- bottom_navigation/widget/nav_bottom.dart
- enum/process.dart
