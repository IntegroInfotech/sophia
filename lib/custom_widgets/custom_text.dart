import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/constants.dart';

class CustomText extends StatelessWidget {
  final String title;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final Padding? padding;

  const CustomText({
    Key? key,
    required this.title,
    this.color,
    this.fontStyle,
    this.textAlign,
    this.padding,
    this.fontWeight,
    this.style,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Constants.primaryColorBlue,
        fontFamily: fontFamily ?? Constants.fontTitle,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: 20,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}
