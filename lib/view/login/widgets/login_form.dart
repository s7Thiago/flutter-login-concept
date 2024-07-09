import 'package:flutter/material.dart';
import 'package:login_concept/shared/routes.dart';
import 'package:login_concept/shared/widgets/custom_button.dart';
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
      width: (size.width * .5).clamp(320, 330),
      height: (size.height * .6).clamp(350, 490),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("SIGN UP"),
          const CustomInput(label: "Name", icon: Icons.person),
          const CustomInput(label: "Email", icon: Icons.email),
          const CustomInput(
            label: "Password",
            icon: Icons.password,
            isPassword: true,
          ),
          CustomButton(
            width: double.maxFinite,
            text: "Sign up",
            color: Colors.red,
            onTap: () {
              Navigator.of(context).pushNamed(Routes.home);
            },
          ),
          const MouseRegion(
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
