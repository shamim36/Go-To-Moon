import 'package:flutter/material.dart';
import 'package:udemy/pages/HomePage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(31, 131, 131, 21),
      ),
      home: HomePage(),
    );
  }
}
