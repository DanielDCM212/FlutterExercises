import 'package:flutter/material.dart';
// import 'package:exercise_2/src/pages/home_page.dart';
import 'package:exercise_2/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
