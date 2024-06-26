import 'package:flutter/material.dart';
import 'package:login_concept/view/login/widgets/background.dart';
import 'package:login_concept/view/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe3e3e3),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(child: LoginBackgroundWidget()),
          LoginFormWidget(),
        ],
      ),
    );
  }
}
