import 'package:flutter/material.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text('ABOUT US', style: TextStyle(fontSize: 40)),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: size.height / 2,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/match.JPG'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: size.height / 2,
          width: size.width * 0.8,
          color: Colors.black,
        ),
      ],
    );
  }
}

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ABOUT US', style: TextStyle(fontSize: 40)),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.6,
              width: (size.width * 0.8) / 2,
              color: Colors.black,
            ),
            Container(
              height: size.height * 0.6,
              width: (size.width * 0.8) / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/match.JPG'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
