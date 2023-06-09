import 'dart:async';

import 'package:uniccon/export.dart';
import 'package:uniccon/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, RouteName.signUp));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: InkWell(
        onTap: () => Navigator.pushNamed(context, RouteName.signUp),
        child: SafeArea(
            child: Container(
          color: AppColors.primary,
          child: Center(
            child: SizedBox(
                width: 139,
                height: 95,
                child: Image.asset("assets/images/logo.png")),
          ),
        )),
      ),
    );
  }

  // void getAuthStatus() async {
  //   final authStatus = await LocalStoreHelper.isAuth();
  //   setState(() {
  //     _authStatus = authStatus;
  //   });
  // }
}
