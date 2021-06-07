import 'package:basketball_app/ui/widgets/logo.dart';
import 'package:basketball_app/ui/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 150,
            child: Logo(height: 50, width: 50, iconSize: 40),
          ),
          Divider(height: 2),
          Column(
            children: [
              SizedBox(height: 50),
              ...navbarItems.expand(
                (element) => [
                  element,
                  SizedBox(height: 30),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
