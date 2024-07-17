import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
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

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(child: Text("Text $count")),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              heroTag: "btn-x",
              onPressed: incrementar,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: "btn${args['index']}",
              onPressed: decrement,
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
