import 'package:flutter/material.dart';
import 'package:interview/src/core/color.dart';
import 'package:interview/src/core/container_custom.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    required this.text,
    this.textColor = pWhite,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.fontStyle = FontStyle.normal,
    this.marginLeft = 0.0,
    this.marginRight = 0.0,
    this.marginTop = 0.0,
    this.marginBottom = 0.0,
    this.paddingBottom = 0.0,
    this.paddingLeft = 0.0,
    this.paddingRight = 0.0,
    this.paddingTop = 0.0,
    this.alignment = Alignment.center,
    this.textAlign = TextAlign.left,
  }) : super(key: key);
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final Alignment alignment;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return ContainerCustom(
      marginBottom: marginBottom,
      marginTop: marginTop,
      marginLeft: marginLeft,
      marginRight: marginRight,
      paddingBottom: paddingBottom,
      paddingLeft: paddingLeft,
      paddingTop: paddingTop,
      paddingRight: paddingRight,
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
