import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/View/End%20first%20test%20screen.dart';
import 'package:project/Model/globals.dart' as globals;
import 'package:project/Controller/First Exam funcs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sides extends StatefulWidget {
  const Sides({super.key});

  @override
  State<Sides> createState() => _Sides();
}

CustomPainter side = MyPainterLeft();

class _Sides extends State<Sides> {
  bool addline = false;
  @override
  void initState() {
    side = chooseSide();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => Timer(
          Duration(milliseconds: (globals.time1).toInt()),
          () {
            setState(() {
              addline = true;
            });
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    print(side);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600]?.withOpacity(0.5),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background2.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            const Text(
              " Please choose your answer",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 80),
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
                          if (globals.sideTemp == 0) {
                            whenChooseButton1();
                            // globals.score1++;
                            // globals.roundCorrectness.add(true);
                            // globals.time1 = (globals.time1 / 2);
                            // globals.roundsTimes.add(globals.time1);
                            // print(globals.time1);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sides()),
                            );
                          } else {
                            if (globals.numOfWrongAnswers1 > 0) {
                              whenChooseButton2();
                              // globals.time1 =
                              //     (globals.time1 + (globals.time1 / 4));
                              // globals.roundsTimes.add(globals.time1);
                              // globals.roundCorrectness.add(false);
                              // print('wrong:' + globals.time1.toString());
                              // globals.numOfWrongAnswers1--;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sides()),
                              );
                            } else {
                              whenUpdate();
                              // globals.roundCorrectness.add(false);
                              // globals.roundsTimes.add(globals.time1);
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
                            color: Colors.blue[300]?.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(
                                  7.0,
                                  7.0,
                                ),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Left side',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Alkatra'),
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
                            whenChooseButtonDNS();
                            // globals.time1 =
                            //     (globals.time1 + (globals.time1 / 4));
                            // globals.roundsTimes.add(globals.time1);
                            // globals.roundCorrectness.add(false);
                            // globals.numOfWrongAnswers1--;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sides()),
                            );
                          } else {
                            whenUpdate();
                            // globals.roundCorrectness.add(false);
                            // globals.roundsTimes.add(globals.time1);
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
                            color: Colors.blue[300]?.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(
                                  7.0,
                                  7.0,
                                ),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Did not see',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Alkatra'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),

                      // Right side //

                      TextButton(
                        onPressed: () {
                          globals.click++;
                          if (globals.sideTemp == 1) {
                            whenChooseButton1();
                            // globals.score1++;
                            // globals.roundCorrectness.add(true);
                            // globals.time1 = (globals.time1 / 2);
                            // globals.roundsTimes.add(globals.time1);
                            // print(globals.time1);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sides()),
                            );
                          } else {
                            if (globals.numOfWrongAnswers1 > 0) {
                              whenChooseButton2();
                              // globals.time1 =
                              //     (globals.time1 + (globals.time1 / 4));
                              // globals.roundsTimes.add(globals.time1);
                              // globals.roundCorrectness.add(false);
                              // print('wrong:' + globals.time1.toString());
                              // globals.numOfWrongAnswers1--;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sides()),
                              );
                            } else {
                              whenUpdate();
                              // globals.roundCorrectness.add(false);
                              // globals.roundsTimes.add(globals.time1);
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
                            color: Colors.blue[300]?.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(
                                  7.0,
                                  7.0,
                                ),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Right side',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Alkatra'),
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
      ),
    );
  }
}
