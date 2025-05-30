import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());


  var test = TestClass(x: 2, y: 3);
  print(test.x);

  var newTest = test.copyWith(30, 40);
  print(newTest.x);
}

class TestClass{
  int x;
  int y;

  TestClass({required this.x, required this.y});

  TestClass copyWith(int? x, int? y){
    return TestClass(x:x??this.x, y:y??this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}