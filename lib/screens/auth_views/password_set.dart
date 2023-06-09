import 'package:uniccon/component/checkbox.dart';
import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class PasswordSet extends StatefulWidget {
  const PasswordSet({super.key});

  @override
  State<PasswordSet> createState() => _PasswordSetState();
}

class _PasswordSetState extends State<PasswordSet> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController referralController = TextEditingController();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Align(
                  alignment: Alignment.topLeft, child: Icon(Icons.arrow_back)),
            ),
            addVerticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PrimaryText(text: 'Set your password'),
                    addVerticalSpace(4),
                    const SecondaryText(text: 'Create your password'),
                  ],
                ),
                SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/pwd.png")),
              ],
            ),
            addVerticalSpace(40),
            CustomTextField(
                isPassword: true,
                textInputType: TextInputType.name,
                labelText: 'Password',
                textController: passwordController,
                autoFocus: true,
                textInputAction: TextInputAction.done),
            addVerticalSpace(16),
            UniCheckBox(
                isChecked: false,
                size: 16,
                iconSize: 16,
                selectedColor: AppColors.checkBox,
                onChange: () {},
                text:
                    'Please set a password with minimum length of 8 characters'),
            addVerticalSpace(20),
            UniCheckBox(
                isChecked: false,
                size: 16,
                iconSize: 16,
                selectedColor: AppColors.checkBox,
                onChange: () {},
                text:
                    'Password must contain at least one upper case letter, one lower case letter, one numeric character, one special character'),
            addVerticalSpace(36),
            const Divider(color: AppColors.border),
            addVerticalSpace(27),
            CustomTextField(
                isPassword: false,
                textInputType: TextInputType.name,
                labelText: 'Referral code (optional)',
                textController: referralController,
                autoFocus: false,
                textInputAction: TextInputAction.done),
            addVerticalSpace(8),
            const SecondaryText(
              text: 'Please enter an invite code if you have one.',
              fontSize: 13,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          height: 150,
          elevation: 0.0,
          child: Column(
            children: [
              SizedBox(
                height: 44,
                width: 358,
                child: RichText(
                  textScaleFactor: MediaQuery.textScaleFactorOf(context),
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'By continuing, you agree to Akiba’s',
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Coinbase Sans')),
                    TextSpan(
                        text: ' Term of Service ',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Coinbase Sans')),
                    TextSpan(
                        text: 'and acknowledge our ',
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Coinbase Sans')),
                    TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Coinbase Sans')),
                  ]),
                ),
              ),
              addVerticalSpace(21),
              PrimaryButton(
                  buttonText: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.acctSuccess);
                  })
            ],
          )),
    );
  }
}
