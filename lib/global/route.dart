import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/screen/login/login_screen.dart';
import 'package:instagram_clone_ui/screen/signup/signup_screen.dart';

class AppRouter {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => makeRoute(
          nameRoute: settings.name!,
          context: context,
          arguments: settings.arguments),
    );
  }

  static makeRoute(
      {required String nameRoute,
      required BuildContext context,
      Object? arguments}) {
    switch (nameRoute) {
      case login:
        return const LoginScreen();
      case signup:
        return const SignupScreen();
      default:
        throw "Route $nameRoute is not define";
    }
  }

  // define name route
  static const String login = '/';
  static const String signup = '/signup';
}
