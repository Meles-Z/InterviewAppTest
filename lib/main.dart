import 'package:flutter/material.dart';
import 'package:interview_test_app/feature/presentation/screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
