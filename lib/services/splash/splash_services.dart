import 'dart:async';
import 'package:clean_architecture_with_bloc_state/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isUserLoggedIn(BuildContext context) {
    Timer(
        (const Duration(seconds: 3)),
        () => Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.loginscreen, (route) => false));
  }
}
