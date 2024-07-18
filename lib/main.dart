import 'package:flutter/material.dart';
import 'package:login_concept/shared/routes.dart';
import 'package:login_concept/view/counter/counter.dart';
import 'package:login_concept/view/login/login.dart';
import 'package:login_concept/view/projects/projects.dart';
import 'package:login_concept/view/randomImages/random_images.dart';
import './shared/widgets/widget_extensions.dart';

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
        Routes.home: (context) => const Projects(),
        Routes.counter: (context) => const CounterScreen().putBackButton(),
        Routes.login: (context) => const LoginScreen(),
        Routes.randomImg: (context) => const RandomImages(texto: 'Carregar'),
      },
      initialRoute: Routes.home,
    );
  }
}
