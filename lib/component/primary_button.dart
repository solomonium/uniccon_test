import 'package:flutter/material.dart';
import 'package:uniccon/component/secondary_text.dart';
import 'package:uniccon/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String buttonText;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    this.height,
    this.width,
    this.color,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primary, // Default color is blue
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Fixed border radius
          ),
          minimumSize: Size(width ?? double.infinity, height ?? 50.0),
        ),
        child: SecondaryText(
          text: buttonText,
          color: AppColors.background,
        )
        // Text(buttonText),
        );
  }
}
