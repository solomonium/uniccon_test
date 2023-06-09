import 'package:uniccon/component/custom_container.dart';
import 'package:uniccon/export.dart';
import 'package:uniccon/utils/colors.dart';
import 'package:uniccon/utils/helper_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailorUsername = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            // width: 139,
            // height: 100,
            child: Image.asset("assets/images/image.png"),
          ),
          Positioned(
            top: 80,
            left: 180,
            child: Center(
              child: CustomContainer(
                borderRadius: 10,
                height: 50,
                width: 50,
                color: AppColors.primary,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 34),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PrimaryText(text: 'Welcome back'),
                      addVerticalSpace(4),
                      SizedBox(
                        height: 52,
                        width: 251,
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.textScaleFactorOf(context),
                          text: const TextSpan(children: [
                            TextSpan(
                                text:
                                    'Log in to your Akiba account. New to Akiba? ',
                                style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Coinbase Sans')),
                            TextSpan(
                                text: 'Create an account',
                                style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Coinbase Sans')),
                          ]),
                        ),
                      ),
                      addHorizontalSpace(30),
                      CustomTextField(
                          textInputType: TextInputType.text,
                          labelText: 'Email address or username',
                          textController: emailorUsername,
                          autoFocus: true,
                          textInputAction: TextInputAction.done),
                      addVerticalSpace(15),
                      CustomTextField(
                          isPassword: true,
                          textInputType: TextInputType.text,
                          labelText: 'Password',
                          textController: password,
                          autoFocus: false,
                          textInputAction: TextInputAction.done),
                      addVerticalSpace(30),
                      PrimaryButton(
                          buttonText: 'Log in',
                          onPressed: () {
                            Navigator.pushNamed(context, RouteName.dashboard);
                          }),
                      addVerticalSpace(22),
                      const Align(
                          alignment: Alignment.bottomCenter,
                          child: SecondaryText(
                            text: 'Reset password?',
                            color: AppColors.primary,
                          ))
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
