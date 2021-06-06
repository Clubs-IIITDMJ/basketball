import 'package:flutter/material.dart';
import 'package:basketball_app/ui/widgets/navigation_bar/navigation_bar_content.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarDesktop(),
    );
  }
}
