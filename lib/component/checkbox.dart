import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class UniCheckBox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final double width;
  final Color selectedColor;
  final Function onChange;
  final String text;

  const UniCheckBox(
      {Key? key,
      required this.isChecked,
      required this.size,
      required this.iconSize,
      required this.selectedColor,
      this.width = 290,
      required this.onChange,
      required this.text})
      : super(key: key);

  @override
  State<UniCheckBox> createState() => _UniCheckBoxState();
}

class _UniCheckBoxState extends State<UniCheckBox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: SizedBox(
        // height: 38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 500),
              decoration: BoxDecoration(
                  color:
                      _isSelected ? widget.selectedColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(5.0),
                  border: _isSelected
                      ? null
                      : Border.all(color: AppColors.checkBox, width: 1.0)),
              width: widget.size,
              height: widget.size,
              child: _isSelected
                  ? const Icon(
                      Icons.check_sharp,
                      color: Colors.white,
                      size: 14,
                    )
                  : null,
            ),
            addHorizontalSpace(15),
            SizedBox(
              width: widget.width,
              child: SecondaryText(
                text: widget.text,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
