import 'package:basketball_app/core/services/locator.dart';
import 'package:basketball_app/ui/screens/layout/layout_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/models/navigator_index.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Index(),
      child: MaterialApp(
        title: 'Basketball IIITDMJ',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0XFF040404),
        ),
        debugShowCheckedModeBanner: false,
        home: LayoutTemplate(),
      ),
    );
  }
}
