import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Double extends StatefulWidget {
  const Double({super.key});

  @override
  State<Double> createState() => _Double();
}

class _Double extends State<Double> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
