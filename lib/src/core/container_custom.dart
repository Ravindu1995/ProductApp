import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  const ContainerCustom(
      {Key? key,
      this.marginLeft = 0.0,
      this.marginRight = 0.0,
      this.marginTop = 0.0,
      this.marginBottom = 0.0,
      this.paddingBottom = 0.0,
      this.height,
      this.width,
      this.alignment = Alignment.center,
      this.boxDecoration,
      this.paddingLeft = 0.0,
      this.paddingRight = 0.0,
      this.paddingTop = 0.0,
      required this.child})
      : super(key: key);
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double? height;
  final double? width;
  final Alignment alignment;
  final BoxDecoration? boxDecoration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      alignment: alignment,
      padding: EdgeInsets.only(
          left: paddingLeft,
          top: paddingTop,
          bottom: paddingBottom,
          right: paddingRight),
      margin: EdgeInsets.only(
          left: marginLeft,
          right: marginRight,
          bottom: marginBottom,
          top: marginTop),
      height: height,
      width: width,
      child: child,
    );
  }
}
