import 'package:flutter/material.dart';
import 'Test.dart';

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      child: new Test()
    )
  )
);

