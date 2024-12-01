import 'package:flutter/material.dart';
import 'package:jarvis/screens/home_page.dart';

void main() {
  runApp(const main_page());
}

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

