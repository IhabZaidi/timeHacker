import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imgpath;
  final double radius;
  const CircularImage({
    Key? key,
    required this.imgpath,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imgpath,
        height: MediaQuery.of(context).size.height * radius,
        width: MediaQuery.of(context).size.height * radius,
        fit: BoxFit.cover,
      ),
    );
  }
}
