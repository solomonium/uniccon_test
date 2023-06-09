import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class AcctSuccess extends StatefulWidget {
  const AcctSuccess({super.key});

  @override
  State<AcctSuccess> createState() => _AcctSuccessState();
}

class _AcctSuccessState extends State<AcctSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                addVerticalSpace(200),
                const PrimaryText(text: 'Account Created!'),
                addVerticalSpace(10),
                const SizedBox(
                  height: 75,
                  width: 331,
                  child: SecondaryText(
                      text:
                          'Dear @kiks_faboro your Akiba account has been successfully created. Continue to start using app'),
                )
              ],
            ),
          )),
      bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          height: 120,
          elevation: 0.0,
          child: Column(
            children: [
              addVerticalSpace(21),
              PrimaryButton(
                  buttonText: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.signIn);
                  })
            ],
          )),
    );
  }
}
