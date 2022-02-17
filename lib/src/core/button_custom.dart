import 'package:flutter/material.dart';
import 'package:interview/src/core/color.dart';
import 'package:interview/src/core/text_custom.dart';
import 'container_custom.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key? key,
    required this.text,
    required this.onTap,
    this.marginLeft = 24.97,
    this.marginRight = 25.35,
    this.marginTop = 0.0,
    this.marginBottom = 0.0,
    this.height = 30.00,
    this.color = primarycol,
    this.borderColor = primarycol,
    this.btntxtcol = white,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final double height;
  final Color color;
  final Color borderColor;
  final Color btntxtcol;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ContainerCustom(
        marginBottom: marginBottom,
        marginTop: marginTop,
        marginLeft: marginLeft,
        marginRight: marginRight,
        height: height,
        boxDecoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.33),
          border: Border.all(color: borderColor),
        ),
        child: TextCustom(
          text: text,
          fontSize: 16.65,
          fontWeight: FontWeight.w600,
          textColor: btntxtcol,
        ),
      ),
    );
  }
}
