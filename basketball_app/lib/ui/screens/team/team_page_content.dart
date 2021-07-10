import 'package:flutter/material.dart';

class TeamContentMobile extends StatelessWidget {
  const TeamContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 3;
    return Container(
      child: ListView(
        children: [
          profileBox(size),
          SizedBox(height: 20),
          profileBox(size),
          SizedBox(height: 20),
          profileBox(size),
          SizedBox(height: 20),
          profileBox(size),
          SizedBox(height: 20),
          profileBox(size),
          SizedBox(height: 20),
          bottom(context),
        ],
      ),
    );
  }
}

class TeamContentDesktop extends StatelessWidget {
  const TeamContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 5;
    return Container(
      width: size * 5,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileBox(size),
              profileBox(size),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileBox(size),
              profileBox(size),
              profileBox(size),
            ],
          ),
          SizedBox(height: 50),
          bottom(context),
        ],
      ),
    );
  }
}

Widget profileBox(double size) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: Colors.red,
          ),
        ),
        SizedBox(height: 30),
        Text('ABC'),
        Text('COORDINATOR'),
      ],
    ),
  );
}

Widget bottom(BuildContext context, {double height = 150}) {
  TextStyle textStyle = TextStyle(color: Colors.white);
  return MediaQuery.of(context).size.width < 910.0
      ? Container()
      : Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pandit Dwarka Prasad Mishra', style: textStyle),
                      Text('Indian Institute of Information Technology,',
                          style: textStyle),
                      Text('Design and Manufacturing,Jabalpur',
                          style: textStyle),
                      Text('Dumna Airport Road, Dumna - 482005',
                          style: textStyle),
                      Text('Madhya Pradesh,India', style: textStyle),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.copyright,
                        size: 10,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Copyright 2021 IIITDM Jabalpur',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
        );
}
