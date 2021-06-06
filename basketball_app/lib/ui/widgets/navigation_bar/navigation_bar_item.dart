import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String? title;
  const NavBarItem({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title!, style: TextStyle(fontSize: 15)),
    );
  }
}

List<NavBarItem> navbarItems = <NavBarItem>[
  NavBarItem(title: 'HOME'),
  NavBarItem(title: 'ABOUT'),
  NavBarItem(title: 'EVENTS'),
  NavBarItem(title: 'ACHIEVEMENTS'),
  NavBarItem(title: 'GALLERY'),
  NavBarItem(title: 'TEAM'),
];
