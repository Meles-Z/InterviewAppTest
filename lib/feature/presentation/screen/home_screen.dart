import 'package:flutter/material.dart';
import 'package:interview_test_app/core/utils/generate_random_number.dart';

// Constant for the maximum color value (0-255)
const int _maxColorValue = 256;
// Constant for the alpha value (fully opaque)
const int _fullOpacity = 255;

/// The home screen of my app
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = Colors.white;

  void changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(
        _fullOpacity,
        myRandomNumber(_maxColorValue),
        myRandomNumber(_maxColorValue),
        myRandomNumber(_maxColorValue),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Interview App"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Hello There"),
        ),
      ),
    );
  }
}
