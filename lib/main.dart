// Author: Prathamesh Mali
// Github: https://github.com/prathamesh-mali

import 'package:coffee_app_ui/features/home/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0.0,
          color: Color.fromARGB(255, 13, 10, 21),
          elevation: 0,
        ),
      ),
      home: HomePage(),
    );
  }
}
