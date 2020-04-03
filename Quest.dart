import 'package:flutter/material.dart';
import 'dart:math';


main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      child: new Test()         //запускаем основаной класс
    )
  )
);


class Test extends StatefulWidget {             //создание класса в котором будет происходить вся работа приложения
  _TestState createState() => _TestState();
}



class _TestState extends State<Test> {



  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();               //объявление рандомайзера цвета



  int index = 0;



  void changeIndex() {
    setState(() => index = random.nextInt(3));      //рандoмайзер
  }



  @override
  Widget build(BuildContext context) {
    return
       GestureDetector(
        onTap: () => changeIndex(),             //изменение индекса цвета при клике
          child: Container(
              child: Center(                    //отцентровка текста
                child: Text(                    //текст
                'Hey there',
                 style: TextStyle(              //форматирование текста
                  color: Color(0xFFFFFFFF),
                   fontSize: 32.0,)
                  ),
                ),
           decoration: BoxDecoration(
           color: colors[index],                //цвет фона
           )
         )
      );
  }
}
