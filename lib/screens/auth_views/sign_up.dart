import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
                alignment: Alignment.topLeft, child: Icon(Icons.arrow_back)),
            addVerticalSpace(30),
            const PrimaryText(text: 'Create your account'),
            addVerticalSpace(4),
            RichText(
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
              text: const TextSpan(children: [
                TextSpan(
                    text:
                        'Let’s start by creating your Akiba account. Already have an account? ',
                    style: TextStyle(
                        color: AppColors.secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Coinbase Sans')),
                TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Coinbase Sans')),
              ]),
            ),
            addVerticalSpace(40),
            CustomTextField(
                isPassword: false,
                textInputType: TextInputType.name,
                labelText: 'First name',
                textController: firstNameController,
                autoFocus: true,
                textInputAction: TextInputAction.next),
            addVerticalSpace(20),
            CustomTextField(
                isPassword: false,
                textInputType: TextInputType.name,
                labelText: 'Last name',
                textController: lastNameController,
                autoFocus: false,
                textInputAction: TextInputAction.next),
            addVerticalSpace(20),
            CustomTextField(
                isPassword: false,
                textInputType: TextInputType.name,
                labelText: 'Mobile Number',
                textController: phoneNumberController,
                autoFocus: false,
                textInputAction: TextInputAction.done),
            addVerticalSpace(20),
            // const Spacer(),
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
                    Navigator.pushNamed(context, RouteName.password);
                  })
            ],
          )),
    );
  }
}
