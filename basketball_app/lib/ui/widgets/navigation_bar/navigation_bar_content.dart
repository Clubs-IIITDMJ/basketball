import 'package:flutter/material.dart';
import 'package:basketball_app/ui/widgets/navigation_bar/navigation_bar_item.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width > 835.0
        ? Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 150,
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.sports_basketball,
                    size: 40,
                    color: Colors.orange[900],
                  ),
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
          padding: EdgeInsets.symmetric(vertical: 40),
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
