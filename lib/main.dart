import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

import 'Login page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const LoginPage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool addline = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => Timer(
          const Duration(seconds: 3),
          () {
            setState(() {
              addline = true;
            });
          },
        ));
  }

  CustomPainter chooseSide() {
    List<CustomPainter> list = [MyPainterLeft(), MyPainterRight()];
    final randomSide = Random();
    return list[randomSide.nextInt(list.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Choose your answer",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Stack(
              children: [
                CustomPaint(
                  size: const Size(300, 300),
                  painter: chooseSide(),
                ),
                if (addline)
                  CustomPaint(
                    size: const Size(300, 300),
                    painter: MyPainterLeftSecond(),
                    foregroundPainter: MyPainterRightSecond(),
                  ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Right side',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Left side',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Did not see',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClearPage extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(50, 50);
    const p2 = Offset(50, 300);
    const p3 = Offset(50, 50);
    const p4 = Offset(250, 50);
    const p5 = Offset(250, 50);
    const p6 = Offset(250, 150);
    const p7 = Offset(250, 150);
    const p8 = Offset(250, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterRightSecond extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p7 = Offset(250, 150);
    const p8 = Offset(250, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p7, p8, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(50, 50);
    const p2 = Offset(50, 150);
    const p3 = Offset(50, 50);
    const p4 = Offset(250, 50);
    const p5 = Offset(250, 50);
    const p6 = Offset(250, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterLeftSecond extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p7 = Offset(50, 50);
    const p8 = Offset(50, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p7, p8, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
