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
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  bottom(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget bottom(BuildContext context, {double height = 150}) {
  TextStyle textStyle = TextStyle(color: Colors.white);
  return Container(
    padding: EdgeInsets.only(top: 20, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('PDPM IIITDM Jabalpur', style: textStyle),
        Text('MP,India', style: textStyle),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(
              Icons.copyright,
              size: 10,
            ),
            SizedBox(width: 4),
            Text(
              'Copyright 2021 IIITDMJ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text('Developed By :'),
            Text(
              ' Ritesh Bhandaria',
              style: TextStyle(color: Colors.orange.shade900),
            ),
          ],
        ),
        Row(
          children: [
            Text('Designed By  :'),
            Text(
              ' Arindam Upadhyay',
              style: TextStyle(color: Colors.orange.shade900),
            ),
          ],
        ),
      ],
    ),
  );
}
