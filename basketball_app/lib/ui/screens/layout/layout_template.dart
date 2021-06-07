import 'package:basketball_app/core/routes/route_generator.dart';
import 'package:basketball_app/core/routes/route_names.dart';
import 'package:basketball_app/core/services/locator.dart';
import 'package:basketball_app/core/services/navigation_service.dart';
import 'package:basketball_app/ui/widgets/drawer/side_bar.dart';
import 'package:basketball_app/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.width < 500 ? 20 : 80;

    return Scaffold(
      drawer: size.width < 910.0 ? Sidebar() : null,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: padding),
        alignment: Alignment.topCenter,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
