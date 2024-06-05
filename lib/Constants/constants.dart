import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(197, 8, 8, 75);

class MySpace extends StatelessWidget {
  final double height;
  final double width;
  const MySpace({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
      width: MediaQuery.sizeOf(context).width * width,
    );
  }
}
