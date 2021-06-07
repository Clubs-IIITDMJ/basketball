import 'package:basketball_app/ui/screens/team/team_page_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TeamContentMobile(),
      tablet: TeamContentDesktop(),
      desktop: TeamContentDesktop(),
    );
  }
}
