import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String name;

  SuccessScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Center(
        child: Text(
          'Congratulations $name, you have successfully logged in.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
