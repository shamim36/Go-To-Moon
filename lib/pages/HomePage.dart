import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageTittle(),
    );
  }

  Widget _pageTittle() {
    return Text(
      '#GoMoon',
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assests/images/astro_moon.png',
          ),
        ),
      ),
    );
  }
}
