import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HobbiePage extends StatefulWidget {
  const HobbiePage({super.key});

  @override
  State<HobbiePage> createState() => _HobbiePageState();
}

class _HobbiePageState extends State<HobbiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Hobbie',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
    );
  }
}
