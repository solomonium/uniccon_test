import 'package:uniccon/export.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.root:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteName.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RouteName.acctSuccess:
        return MaterialPageRoute(builder: (_) => const AcctSuccess());
      case RouteName.password:
        return MaterialPageRoute(builder: (_) => const PasswordSet());
      case RouteName.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      default:
        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }
}
