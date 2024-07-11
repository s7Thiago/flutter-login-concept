import 'package:flutter/material.dart';
import 'package:login_concept/shared/routes.dart';
import 'package:login_concept/view/home/home.dart';
import 'package:login_concept/view/login/login.dart';
import 'package:login_concept/view/randomImages/random_images.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
        Routes.randomImg: (context) => const RandomImages(),
      },
      initialRoute: Routes.login,
    );
  }
}
