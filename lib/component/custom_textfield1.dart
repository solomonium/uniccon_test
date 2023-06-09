// import 'package:flutter/material.dart';
// import 'package:uniccon/component/secondary_text.dart';
// import 'package:uniccon/utils/utils.dart';

// class CustomTextField extends StatelessWidget {
//   final String label;
//   final TextEditingController controller;
//   final FormFieldValidator<String>? validator;
//   final double borderRadius;
//   final Color fillColor;
//   final Color borderColor;
//   final Color labelColor;

//   const CustomTextField({
//     super.key,
//     required this.label,
//     required this.controller,
//     this.validator,
//     this.borderRadius = 8.0,
//     this.fillColor = Colors.white,
//     this.borderColor = AppColors.border,
//     this.labelColor = Colors.black,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SecondaryText(text: label),
//         const SizedBox(height: 8.0),
//         TextFormField(
//           controller: controller,
//           validator: validator,
//           decoration: InputDecoration(
//             filled: true,
//             fillColor: fillColor,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(borderRadius),
//               borderSide: BorderSide(color: borderColor, width: 0.1),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
