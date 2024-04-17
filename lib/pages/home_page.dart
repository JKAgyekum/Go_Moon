import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pageTitle(),
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      'SpaceMan',
      style: TextStyle(
        fontSize: 62,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _spaceyImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro_moon.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
