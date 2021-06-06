import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double? height;
  final double? width;
  final double? iconSize;
  const Logo({
    Key? key,
    @required this.height,
    @required this.width,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      child: Icon(
        Icons.sports_basketball,
        size: iconSize,
        color: Colors.orange[900],
      ),
    );
  }
}
