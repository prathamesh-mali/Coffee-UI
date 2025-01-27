// Author: Prathamesh Mali
// Github: https://github.com/prathamesh-mali

import 'package:coffee_app_ui/features/bottomNavBar/navgationBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 13, 10, 21),
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0.0,
          color: Color.fromARGB(255, 13, 10, 21),
          elevation: 0,
        ),
      ),
      home: BottomNavBar(),
    );
  }
}
