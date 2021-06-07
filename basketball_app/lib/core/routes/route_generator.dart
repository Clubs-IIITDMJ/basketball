import 'package:basketball_app/core/routes/route_names.dart';
import 'package:basketball_app/ui/screens/about/about_page.dart';
import 'package:basketball_app/ui/screens/achievements/achievementsPage.dart';
import 'package:basketball_app/ui/screens/events/events_page.dart';
import 'package:basketball_app/ui/screens/gallery/gallery_page.dart';
import 'package:basketball_app/ui/screens/home/Home_page.dart';
import 'package:basketball_app/ui/screens/team/team_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage());
    case HomeRoute:
      return _getPageRoute(HomePage());
    case AboutRoute:
      return _getPageRoute(AboutPage());
    case EventsRoute:
      return _getPageRoute(EventsPage());
    case AchievementsRoute:
      return _getPageRoute(AchievementsPage());
    case GalleryRoute:
      return _getPageRoute(GalleryPage());
    case TeamRoute:
      return _getPageRoute(TeamPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadePageRoute(child: child);
}

class _FadePageRoute extends PageRouteBuilder {
  final Widget? child;

  _FadePageRoute({this.child})
      : super(
          pageBuilder: (context, _, __) => child!,
          transitionsBuilder: (context, animation, _, child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
