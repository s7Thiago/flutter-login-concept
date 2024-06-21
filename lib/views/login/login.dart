import 'package:flutter/material.dart';
import 'package:login_concept/views/login/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e0e0),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      // fd4351 color
                      decoration: const BoxDecoration(
                        color: Color(0xfffd4351),
                        borderRadius: BorderRadius.vertical(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
