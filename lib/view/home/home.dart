import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    incrementar() {
      setState(() {
        count++;
      });
      debugPrint("Count: $count");
    }

    decrement() {
      setState(() {
        count--;
      });
      debugPrint("Count: $count");
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(child: Text("Text $count")),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: incrementar,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: decrement,
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
