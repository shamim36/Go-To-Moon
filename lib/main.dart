import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(100, 31, 31, 1),
      ),
      home: Scaffold(
        
      ),
    );
  }
}
