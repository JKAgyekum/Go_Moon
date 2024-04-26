import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/dropdown_widgets.dart';

class Homepage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          //color: Colors.red,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
              horizontal: _deviceHeight * 0.01, vertical: _deviceWidth * 0.01),
          color: const Color.fromRGBO(56, 56, 56, 0.769),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              // Expanded(child: _backgroundImage()),
              _bookRide(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro_moon.png"),
          fit: BoxFit.none,
        ),
        // shape: BoxShape.circle,
        // color: Colors.red,
      ),
      // child: _pageTitle(),
    );
  }

  Widget _pageTitle() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.05),
        width: _deviceWidth,
        child: const Text(
          "Spaceman",
          style: TextStyle(
            fontSize: 60.8,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
  }

  Widget _dropdowndestination() {
    return CustomDropDown(
        values: const ['Kasoa Station', 'Madina Station', 'DNN Station'],
        width: _deviceWidth);
  }

  Widget _travellersData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDown(
            values: const ['1', '2', '3'], width: _deviceWidth * 0.35),
        CustomDropDown(
            values: const ['Economy', 'Business', 'Elite'],
            width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _bookRide() {
    return Container(
      height: _deviceHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropdowndestination(),
          _travellersData(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
