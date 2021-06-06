import 'package:basketball_app/core/routes/route_names.dart';
import 'package:basketball_app/core/services/locator.dart';
import 'package:basketball_app/core/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String? title;
  final String? navPath;
  const NavBarItem({Key? key, this.title, this.navPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(navPath!);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        child: Text(title!, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}

List<NavBarItem> navbarItems = <NavBarItem>[
  NavBarItem(title: 'HOME', navPath: HomeRoute),
  NavBarItem(title: 'ABOUT', navPath: AboutRoute),
  NavBarItem(title: 'EVENTS', navPath: EventsRoute),
  NavBarItem(title: 'ACHIEVEMENTS', navPath: AchievementsRoute),
  NavBarItem(title: 'GALLERY', navPath: GalleryRoute),
  NavBarItem(title: 'TEAM', navPath: TeamRoute),
];
