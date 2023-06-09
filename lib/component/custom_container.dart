import 'package:uniccon/export.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final double? borderRadius;
  final Widget? child;

  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    this.color,
    this.borderRadius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
      ),
      child: Center(child: child),
    );
  }
}
