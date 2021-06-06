import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.grey,
      child: PageView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: 400,
              color: Colors.green,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: 400,
              color: Colors.yellow,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: 400,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
