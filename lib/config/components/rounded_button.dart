import 'package:clean_architecture_with_bloc_state/config/colors/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double width, height;
  const RoundedButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width = 40.0,
      this.height = 40.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: height * 1.2,
          width: width * 1.7,
          decoration: BoxDecoration(
            color: AppColors.buttoncolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.whitecolor,
                fontSize: 16,
              ),
            ),
          ),
        ));
  }
}
