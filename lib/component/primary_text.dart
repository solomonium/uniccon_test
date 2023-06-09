import 'package:flutter/material.dart';
import 'package:uniccon/utils/colors.dart';

class PrimaryText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const PrimaryText({
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
          color: color ?? AppColors.primaryText,
          fontSize: fontSize ?? 24.0,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: 'Coinbase Sans'),
    );
  }
}
