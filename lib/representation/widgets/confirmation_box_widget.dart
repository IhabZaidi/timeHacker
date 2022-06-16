import 'package:flutter/material.dart';

class ConfirmationBoxWidget extends StatelessWidget {
  final double borderradius;
  final Color? bordercolor;
  final TextEditingController controller;
  final double widh;
  final double height;
  final Color? onlyborder;
  final double fontsize;
  final Color? textcolor;
  const ConfirmationBoxWidget({
    Key? key,
    required this.borderradius,
     this.bordercolor,
    required this.controller,
    required this.widh,
    required this.height,
    this.onlyborder,
    required this.fontsize,
    this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: onlyborder ?? Colors.transparent),
        borderRadius: BorderRadius.circular(borderradius),
        color: bordercolor,
      ),
      width: MediaQuery.of(context).size.width * widh,
      height: MediaQuery.of(context).size.height * height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12.5),
            hintStyle: TextStyle(
              fontSize: fontsize,
              color: Colors.black87,
            ),
            border: InputBorder.none),
        obscureText: false,
        style: TextStyle(color: textcolor,),
      ),
    );
  }
}