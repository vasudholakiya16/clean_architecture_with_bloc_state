import 'package:clean_architecture_with_bloc_state/config/components/internet_execption.dart';
import 'package:clean_architecture_with_bloc_state/data/exception/app_exception.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          throw NoInternetException();
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InternetExcptionWidget(
                onPressed: () {},
              ),
              const Text('Home Screen'),
            ],
          ),
        ),
      ),
    );
  }
}
