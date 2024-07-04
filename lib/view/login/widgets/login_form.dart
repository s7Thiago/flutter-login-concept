import 'package:flutter/material.dart';
import 'package:login_concept/shared/widgets/custom_input.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("SIGN UP"),
          CustomInput(label: "Name", icon: Icons.person),
          CustomInput(label: "Email", icon: Icons.email),
          CustomInput(
            label: "Password",
            icon: Icons.password,
            isPassword: true,
          ),
          Placeholder(fallbackHeight: 30),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text.rich(TextSpan(
              text: "Have an account? ",
              children: [
                TextSpan(
                  text: "Sign in",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
