import 'package:flutter/material.dart';
import 'package:basketball_app/ui/screens/home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball IIITDMJ',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF040404),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
