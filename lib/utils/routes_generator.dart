import 'package:flutter/material.dart';
import 'package:rehability/utils/constants.dart';
import 'package:rehability/screens/login_screen.dart';
import 'package:rehability/screens/registration_screen.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppConstants.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppConstants.REGISTRATION:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
