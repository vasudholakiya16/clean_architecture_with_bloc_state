import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  final double size;
  const LoadingScreen({super.key, this.size = 60.0});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: Colors.blue,
            )
          : const CupertinoActivityIndicator(
              color: Colors.blue,
            ),
    );
  }
}
