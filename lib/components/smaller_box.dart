import 'package:flutter/material.dart';

class SmallerBox extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const SmallerBox({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(80),
        ),
        width: 300,
        height: 300,
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
