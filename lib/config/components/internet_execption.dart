import 'package:flutter/material.dart';

class InternetExcptionWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const InternetExcptionWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
        ),
        const Icon(
          Icons.cloud_off,
          size: 100,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text('No Internet Connection\n Place chack your data ',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
        ),
        ElevatedButton(
            onPressed: onPressed,
            child: Text('RETRY',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )))
      ],
    );
  }
}
