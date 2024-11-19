import 'package:flutter/material.dart';

class AccountBox extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const AccountBox({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        width: 250,
        height: 150,
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
