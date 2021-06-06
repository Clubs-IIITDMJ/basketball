import 'package:basketball_app/ui/screens/home/home_content.dart';
import 'package:basketball_app/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.width < 425 ? 20 : 40;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: padding),
        alignment: Alignment.topCenter,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                tablet: HomeContentDesktop(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
