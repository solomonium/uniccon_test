import 'package:flutter/material.dart';
import 'package:uniccon/utils/colors.dart';

class SecondaryText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const SecondaryText({
    super.key,
    this.color,
    required this.text,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? AppColors.secondaryText,
          fontSize: fontSize ?? 16.0,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontFamily: 'Coinbase Sans'),
    );
  }
}
