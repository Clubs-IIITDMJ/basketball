import 'package:flutter/material.dart';

class EventsContentMobile extends StatelessWidget {
  const EventsContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text('Events', style: TextStyle(fontSize: 40)),
        ImageBox(
            size.height * 0.6, size.width * 0.8, 'images/gusto.JPG', 'GUSTO'),
        SizedBox(height: 60),
        ImageBox(
            size.height * 0.6, size.width * 0.8, 'images/match.JPG', 'ENTHUSE'),
      ],
    );
  }
}

class EventsContentDesktop extends StatelessWidget {
  const EventsContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Events', style: TextStyle(fontSize: 40)),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageBox(
                size.height / 2, size.width * 0.4, 'images/gusto.JPG', 'GUSTO'),
            ImageBox(size.height / 2, size.width * 0.4, 'images/match.JPG',
                'ENTHUSE'),
          ],
        ),
      ],
    );
  }
}

Widget ImageBox(double height, double width, String path, String title) {
  return Column(
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(height: 30),
      Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.orange[900],
          fontWeight: FontWeight.w700,
        ),
      )
    ],
  );
}
