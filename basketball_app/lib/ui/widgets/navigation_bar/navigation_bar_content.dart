import 'package:flutter/material.dart';
import 'package:basketball_app/ui/widgets/logo.dart';
import 'package:basketball_app/ui/widgets/nav_item.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width > 910.0
        ? Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  height: 80,
                  width: 150,
                  iconSize: 40,
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...navbarItems.expand(
                      (element) => [
                        element,
                        SizedBox(width: 40),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        : NavigationBarMobile();
  }
}

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.symmetric(vertical: 30),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
