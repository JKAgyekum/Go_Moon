import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  double? _deviceHeight, _deviceWidth;

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
              horizontal: _deviceWidth! * 0.05,
              vertical: _deviceHeight! * 0.05),
          color: const Color.fromRGBO(31, 31, 31, 0),
          child: _backgroundImage(),
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/spaceman.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: _pageTitle(),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "Spaceman",
      style: TextStyle(
        fontSize: 60.8,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _dropdowndestination() {
    return Container();
  }
}
