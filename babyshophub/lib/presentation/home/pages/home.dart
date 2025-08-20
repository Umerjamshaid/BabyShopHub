import 'package:babyshophub/presentation/home/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          'Welcome to Home Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
