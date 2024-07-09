import 'package:clean_architecture_with_bloc_state/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: (context) => const SpleshScreen());
      case RoutesName.homescreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.loginscreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
