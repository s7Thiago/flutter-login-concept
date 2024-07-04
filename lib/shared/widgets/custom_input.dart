import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final bool isPassword;
  const CustomInput(
      {super.key, this.icon, this.label, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label ?? ''),
        suffixIcon: Icon(icon),
      ),
      obscureText: isPassword,
    );
  }
}
