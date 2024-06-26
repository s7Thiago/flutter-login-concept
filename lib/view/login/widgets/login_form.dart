import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(66, 85, 85, 85),
              blurRadius: 30,
              spreadRadius: 15,
              offset: Offset(5, 3)),
        ],
        color: Colors.white,
      ),
      width: (size.width * .5).clamp(350, 450),
      height: 650,
    );
  }
}
