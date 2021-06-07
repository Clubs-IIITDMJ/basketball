import 'package:basketball_app/core/models/navigator_index.dart';
import 'package:basketball_app/core/routes/route_names.dart';
import 'package:basketball_app/core/services/locator.dart';
import 'package:basketball_app/core/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBarItem extends StatelessWidget {
  final String? title;
  final String? navPath;
  final int? index;
  const NavBarItem({Key? key, this.title, this.navPath, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Index>(builder: (context, model, _) {
      return InkWell(
        onTap: () {
          if (model.index != index) {
            model.index = index!;
            if (Scaffold.of(context).isDrawerOpen)
              Scaffold.of(context).openEndDrawer();
            locator<NavigationService>().navigateTo(navPath!);
          }
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(bottom: 3),
          child: Text(title!, style: TextStyle(fontSize: 15)),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3,
                color: model.index == index
                    ? Colors.orange.shade900
                    : Colors.transparent,
              ),
            ),
          ),
        ),
      );
    });
  }
}

List<NavBarItem> navbarItems = <NavBarItem>[
  NavBarItem(title: 'HOME', navPath: HomeRoute, index: 0),
  NavBarItem(title: 'ABOUT', navPath: AboutRoute, index: 1),
  NavBarItem(title: 'EVENTS', navPath: EventsRoute, index: 2),
  NavBarItem(title: 'ACHIEVEMENTS', navPath: AchievementsRoute, index: 3),
  NavBarItem(title: 'GALLERY', navPath: GalleryRoute, index: 4),
  NavBarItem(title: 'TEAM', navPath: TeamRoute, index: 5),
];
