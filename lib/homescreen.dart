import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int buttonCount = 1; // ตัวแปรเก็บจำนวนปุ่ม

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(buttonCount, (index) {
            return submitButton(index + 1);
          }),
        ),
      ),
    );
  }

  Widget submitButton(int position) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          buttonCount++;
        });
      },
      child: Text("Button $position"),
    );
  }
}
