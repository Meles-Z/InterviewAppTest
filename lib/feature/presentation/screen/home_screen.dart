import 'package:flutter/material.dart';
import 'package:interview_test_app/core/utils/generate_random_number.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor=Colors.white;
  
 void changeBackgroundColor() {
  setState(() {
    _backgroundColor = Color.fromARGB(
      255,
      myRandomNumber(256), 
      myRandomNumber(256), 
      myRandomNumber(256), 
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
          title: Text("Interview App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Hello There!"),
        ),
      ),
    );
      
}
}