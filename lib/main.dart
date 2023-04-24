// ignore_for_file: use_function_type_syntax_for_parameters
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'End first test.dart';
import 'Login page.dart';
import 'globals.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

// int click = 0;
//int score1 = 0; // num of correct answers
// double time11 = 60; // milliseconds
int sideTemp = -1;
// num of time11s user can be wrong before the test ends
// int numOfWrongAnswers1 = 2;
CustomPainter side = MyPainterLeft();

class _HomepageState extends State<Homepage> {
  bool addline = false;
  @override
  void initState() {
    side = chooseSide();
    //print("side:" + side.toString());
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => Future.delayed(
    //       Duration(milliseconds: (time11).toInt()),
    //       () {
    //         setState(() {
    //           addline = true;
    //         });
    //       },
    //     ));

    WidgetsBinding.instance.addPostFrameCallback((_) => Timer(
          Duration(milliseconds: (globals.time1).toInt()),
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
    CustomPainter ans = list[randomSide.nextInt(list.length)];
    // left =0
    if (ans == list[0]) {
      sideTemp = 0;
    }
    // right=1
    if (ans == list[1]) {
      sideTemp = 1;
    }
    return ans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 220, 180, 126),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.png"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Choose your answer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Center(
                child: Stack(
                  children: [
                    CustomPaint(
                      size: const Size(300, 300),
                      painter: side,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      children: [
                        SizedBox(
                          height: 70,
                          child: Image.asset('assets/images/left.png'),
                        ),

                        // Left side //

                        TextButton(
                          onPressed: () {
                            globals.click++;
                            if (sideTemp == 0) {
                              globals.score1++;
                              //print("score1:" + score1.toString());
                              globals.time1 = (globals.time1 / 2);
                              //print(globals.time1);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()),
                              );
                            } else {
                              if (globals.numOfWrongAnswers1 > 0) {
                                globals.time1 =
                                    (globals.time1 + (globals.time1 / 4));
                                //print('wrong:' + globals.time1.toString());
                                globals.numOfWrongAnswers1--;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EndOfTest()),
                                );
                              }
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 180, 126),
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
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),

                        // Did not see //

                        TextButton(
                          onPressed: () {
                            globals.click++;
                            if (globals.numOfWrongAnswers1 > 0) {
                              globals.time1 =
                                  (globals.time1 + (globals.time1 / 4));
                              globals.numOfWrongAnswers1--;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfTest()),
                              );
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 180, 126),
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
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),

                        // Right side //

                        TextButton(
                          onPressed: () {
                            globals.click++;
                            if (sideTemp == 1) {
                              globals.score1++;
                              //print("score1:" + score1.toString());
                              globals.time1 = (globals.time1 / 2);
                              //print(globals.time1);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()),
                              );
                            } else {
                              if (globals.numOfWrongAnswers1 > 0) {
                                globals.time1 =
                                    (globals.time1 + (globals.time1 / 4));
                                //print('wrong:' + globals.time1.toString());
                                globals.numOfWrongAnswers1--;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EndOfTest()),
                                );
                              }
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 180, 126),
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
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Image.asset('assets/images/right.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
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
