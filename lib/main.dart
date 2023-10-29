import 'package:flutter/material.dart';
import 'package:learn_flutter_test/second_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isShownText = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              isShownText
                  ? const Text(key: Key('text1'), 'Hello World!')
                  : const Text(key: Key('text2'), 'button_pressed'),
              isShownText
                  ? const Icon(key: Key('icon1'), Icons.abc)
                  : const Icon(key: Key('icon2'), Icons.access_alarm),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShownText = !isShownText;
                    });
                  },
                  child: const Text('button')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()),
                    );
                  },
                  child: const Text('to_second_screen')),
            ],
          ),
        ),
      ),
    );
  }
}
