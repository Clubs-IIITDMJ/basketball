import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeText(),
        Expanded(
          child: Center(
            child: Image.asset('images/home.png'),
          ),
        )
      ],
    );
  }
}

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeText(),
      ],
    );
  }
}

class HomeText extends StatelessWidget {
  const HomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = width < 425 ? 30 : 40;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            'IIITDM JABALPUR',
            style: TextStyle(fontSize: fontSize / 2),
          ),
        ),
        Text(
          'BASKETBALL CLUB',
          style: TextStyle(fontSize: fontSize),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A I M . ',
                style:
                    TextStyle(color: Colors.white, fontSize: fontSize * 3 / 8),
              ),
              TextSpan(
                text: 'H O O P',
                style: TextStyle(
                    color: Colors.orange[900], fontSize: fontSize * 3 / 8),
              ),
              TextSpan(
                text: ' . R E P E A T',
                style:
                    TextStyle(color: Colors.white, fontSize: fontSize * 3 / 8),
              ),
            ],
          ),
        )
      ],
    );
  }
}
