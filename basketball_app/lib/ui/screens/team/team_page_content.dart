import 'package:flutter/material.dart';

class TeamContentMobile extends StatelessWidget {
  const TeamContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 2;
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
          bottom(height: 150),
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
          bottom(),
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

Widget bottom({double height = 150, bool isMobile = false}) {
  TextStyle textStyle = TextStyle(color: Colors.white);
  return Container(
    height: height,
    width: double.maxFinite,
    padding: EdgeInsets.only(top: 20, bottom: 20),
    child: FittedBox(
      fit: BoxFit.contain,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          if (!isMobile)
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
                    Text('Design and Manufacturing,Jabalpur', style: textStyle),
                    Text('Dumna Airport Road, Dumna - 482005',
                        style: textStyle),
                    Text('Madhya Pradesh,India', style: textStyle),
                  ],
                )
              ],
            )
        ],
      ),
    ),
  );
}
