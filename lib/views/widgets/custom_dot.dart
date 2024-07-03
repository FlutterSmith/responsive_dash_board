import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 32,
        height: 8,
        decoration: ShapeDecoration(
            color: const Color(0xffE8E8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )));
  }
}
