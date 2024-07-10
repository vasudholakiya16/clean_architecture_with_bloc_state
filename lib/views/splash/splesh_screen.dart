import 'package:clean_architecture_with_bloc_state/config/routes/routes_name.dart';
import 'package:clean_architecture_with_bloc_state/services/splash/splash_services.dart';
import 'package:clean_architecture_with_bloc_state/views/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../config/components/rounded_button.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  SplashServices _splashServices = SplashServices();
  @override
  void initState() {
    super.initState();
    _splashServices.isUserLoggedIn(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoundedButton(
                title: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.loginscreen);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedButton(
                title: 'Sign Up',
                onPressed: () {},
              ),
              // const LoadingScreen(),
              TextButton(
                onPressed: () {
                  // print('Home Screen');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text('Home Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
