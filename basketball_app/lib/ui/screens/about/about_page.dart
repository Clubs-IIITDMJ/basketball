import 'package:flutter/material.dart';
import 'package:basketball_app/ui/screens/about/about_page_content.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return ScreenTypeLayout(
            mobile: AboutContentMobile(),
            desktop: AboutContentDesktop(),
          );
        },
      ),
    );
  }
}
