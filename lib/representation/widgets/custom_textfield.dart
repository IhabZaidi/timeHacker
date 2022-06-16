// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double borderradius;
  final Color bordercolor;
  final TextEditingController controller;
  final double widh;
  final double height;
  final IconData? icon;
  final Color? iconColor;
  final String hinttext;
  final Color hintColor;
  final Color? onlyborder;
  final double fontsize;
  final Color? textcolor;
  final Function(String)? func;
  //final FontWeight fontweight;
  final bool obscureText;
  final double iconSize;
  final FocusNode? focusNode;

  const CustomTextField({
    Key? key,
    required this.borderradius,
    required this.bordercolor,
    required this.controller,
    required this.widh,
    required this.height,
    this.icon,
    this.iconColor,
    required this.hinttext,
    required this.hintColor,
    this.onlyborder,
    required this.fontsize,
    this.textcolor,
    this.func,
    required this.obscureText,
    required this.iconSize, this.focusNode,
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
        focusNode: focusNode,
        onChanged: func,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),
          prefixIcon: icon != null ? Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ) : null,
            hintText: hinttext,
            hintStyle: TextStyle(
              color: hintColor,
              fontSize: fontsize,
            ),
            border: InputBorder.none),
        obscureText: obscureText,
        style: TextStyle(color: textcolor ?? hintColor,),
      ),
    );
  }
}
