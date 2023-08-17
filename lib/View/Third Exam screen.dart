import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project/View/End%20third%20test%20screen.dart';
import 'package:project/View/Screen building third test.dart';
import 'package:project/Model/globals.dart' as globals;
import 'package:project/Controller/Third Exam funcs.dart';

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

class LBulb extends StatefulWidget {
  const LBulb({super.key});

  @override
  State<LBulb> createState() => _LBulb();
}

// final stopwatchD = Stopwatch();
// final stopwatchR = Stopwatch();
// bool chosen1 = false;
// bool chosen2 = false;
// bool chosen3 = false;
// bool chosen4 = false;
// bool chosen5 = false;
// bool chosen6 = false;
// bool chosen7 = false;
// bool chosen8 = false;
// int ver = 0;
// int tempIndex = 0;

class _LBulb extends State<LBulb> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 60),
            const Text(
              "Please click on the appropriate light's button",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                height: 500,
                width: 810,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
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
                child: ScreenBuilding(
                  distance: 310.0,
                  // Center button
                  centerButton: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(500)),
                      child: GestureDetector(
                        // while long tap
                        onTapDown: (details) {
                          // chose the number and the indexes of the lights to be turned
                          globals.GameNumber--;
                          if (globals.GameNumber == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EndOfThirdTest()));
                          }
                          globals.ver = oneOrThree();
                          globals.lightsIndex = randomLights(globals.ver);
                          print(globals.lightsIndex);
                          // mark the lights that needs to be turned
                          setState(() {
                            markLights();
                            // for (int i = 0;
                            //     i < globals.lightsIndex.length;
                            //     i++) {
                            //   if (globals.lightsIndex[i] == 1) {
                            //     globals.chosen1 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 2) {
                            //     globals.chosen2 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 3) {
                            //     globals.chosen3 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 4) {
                            //     globals.chosen4 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 5) {
                            //     globals.chosen8 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 6) {
                            //     globals.chosen7 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 7) {
                            //     globals.chosen6 = true;
                            //   }
                            //   if (globals.lightsIndex[i] == 8) {
                            //     globals.chosen5 = true;
                            //   }
                            // }
                          });
                          // start the detection timer
                          globals.stopwatchD.start();
                        },
                        // when the player release the button
                        onTapUp: (details) {
                          // turn off the lights
                          setState(() {
                            turnOffLights();
                            // globals.chosen1 = false;
                            // globals.chosen2 = false;
                            // globals.chosen3 = false;
                            // globals.chosen4 = false;
                            // globals.chosen5 = false;
                            // globals.chosen6 = false;
                            // globals.chosen7 = false;
                            // globals.chosen8 = false;
                          });
                          updateValues();
                          // // save the time of the detection time
                          // globals.stopwatchD.stop();
                          // globals.detectionTime = globals.stopwatchD.elapsed;
                          // globals.detectionTimes[globals.numOfTurn] =
                          //     globals.detectionTime;
                          // // reset the values
                          // globals.stopwatchD.reset();
                          // globals.detectionTime = const Duration(seconds: 0);
                          // globals.numOfTurn++;
                          // print(globals.detectionTimes);
                          // // update lights
                          // globals.stopwatchR.start();
                        },
                      ),
                    ),
                  ),
                  // the lights buttons
                  buttonsFirstRow: [
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 1;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 2;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 3;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 4;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 5;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 6;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 7;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        globals.tempIndex = 8;
                        checkTheAnswer(globals.tempIndex);
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                    ),
                  ],
                  // the first 4 light
                  buttonsSecondRowHalf1: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen1 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen2 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen3 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen4 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                  ],
                  // the other 4 light
                  buttonsSecondRowHalf2: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen5 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen6 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen7 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: globals.chosen8 == true
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
