import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor=Colors.white;
  
  void changeBackgroundColor(){

    final Random random=Random();
     setState(() {
       _backgroundColor=Color.fromARGB(
        random.nextInt(255),
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255));
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