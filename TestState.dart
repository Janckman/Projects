import 'package:flutter/material.dart';
import 'dart:math';
import 'Test.dart';

class TestState extends State<Test> {

  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
          onTap: () => changeIndex(),
          child: Container(
              child: Center(
                child: Text(
                    'Hey there',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 32.0,)
                ),
              ),
              decoration: BoxDecoration(
                color: colors[index],
              )
          )
      );
  }
}