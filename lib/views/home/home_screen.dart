import 'package:clean_architecture_with_bloc_state/config/components/internet_execption.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InternetExcptionWidget(
                onPressed: () {},
              ),
              Text('Home Screen'),
            ],
          ),
        ),
      ),
    );
  }
}
