import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final Icon? icon;
  final TextInputType textInputType;
  final String labelText;
  final TextEditingController textController;
  final bool autoFocus;
  final String? Function(String?)? validate;
  final bool isPassword;
  final String? hintText;
  final TextInputAction textInputAction;
  final bool obscure;

  const CustomTextField(
      {Key? key,
      this.icon,
      this.obscure = false,
      this.isPassword = false,
      required this.textInputType,
      required this.labelText,
      required this.textController,
      required this.autoFocus,
      this.validate,
      this.hintText,
      required this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SecondaryText(
            text: labelText,
            fontSize: 15,
          ),
          addVerticalSpace(5),
          SizedBox(
            height: 60,
            child: TextFormField(
              cursorColor: AppColors.primaryText,
              controller: textController,
              validator: validate,
              textInputAction: textInputAction,
              keyboardType: textInputType,
              obscureText: isPassword == true ? true : false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.border, width: 0.9),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.border, width: 0.9),
                    borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: AppColors.fillColor,
                suffixIcon: isPassword
                    ? const Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 0, right: 17, bottom: 10),
                        child: Icon(Icons.remove_red_eye))
                    : const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
