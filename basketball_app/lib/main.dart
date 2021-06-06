import 'package:basketball_app/core/services/locator.dart';
import 'package:basketball_app/ui/screens/layout/layout_template.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
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
      debugShowCheckedModeBanner: false,
      home: LayoutTemplate(),
    );
  }
}
