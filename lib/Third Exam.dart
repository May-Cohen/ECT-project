import 'dart:math';

import 'package:flutter/material.dart';
import 'Screen building third test.dart';
import 'globals.dart' as globals;

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

final stopwatchD = Stopwatch();
final stopwatchR = Stopwatch();
bool chosen1 = false;
bool chosen2 = false;
bool chosen3 = false;
bool chosen4 = false;
bool chosen5 = false;
bool chosen6 = false;
bool chosen7 = false;
bool chosen8 = false;
int ver = 0;
List<int> lightsIndex = [];
int tempIndex = 0;

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
                child: screenBuilding(
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
                          ver = oneOrThree();
                          lightsIndex = randomLights(ver);
                          print(lightsIndex);
                          // mark the lights that needs to be turned
                          setState(() {
                            for (int i = 0; i < lightsIndex.length; i++) {
                              if (lightsIndex[i] == 1) {
                                chosen1 = true;
                              }
                              if (lightsIndex[i] == 2) {
                                chosen2 = true;
                              }
                              if (lightsIndex[i] == 3) {
                                chosen3 = true;
                              }
                              if (lightsIndex[i] == 4) {
                                chosen4 = true;
                              }
                              if (lightsIndex[i] == 5) {
                                chosen5 = true;
                              }
                              if (lightsIndex[i] == 6) {
                                chosen6 = true;
                              }
                              if (lightsIndex[i] == 7) {
                                chosen7 = true;
                              }
                              if (lightsIndex[i] == 8) {
                                chosen8 = true;
                              }
                            }
                          });
                          // start the detection timer
                          stopwatchD.start();
                        },
                        // when the player release the button
                        onTapUp: (details) {
                          // turn off the lights
                          setState(() {
                            chosen1 = false;
                            chosen2 = false;
                            chosen3 = false;
                            chosen4 = false;
                            chosen5 = false;
                            chosen6 = false;
                            chosen7 = false;
                            chosen8 = false;
                          });
                          // save the time of the detection time
                          stopwatchD.stop();
                          globals.detectionTime = stopwatchD.elapsed;
                          globals.detectionTimes[globals.numOfTurn] =
                              globals.detectionTime;
                          // reset the values
                          stopwatchD.reset();
                          globals.detectionTime = const Duration(seconds: 0);
                          globals.numOfTurn++;
                          print(globals.detectionTimes);
                          // update lights
                          stopwatchR.start();
                        },
                      ),
                    ),
                  ),
                  // the lights buttons
                  buttonsFirstRow: [
                    TextButton(
                      onPressed: () {
                        tempIndex = 1;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 2;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 3;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 4;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 5;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 6;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 7;
                        checkTheAnswer(tempIndex);
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
                        tempIndex = 8;
                        checkTheAnswer(tempIndex);
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
                            color:
                                chosen1 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen2 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen3 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen4 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen5 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen6 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen7 == true ? Colors.green : Colors.white,
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
                            color:
                                chosen8 == true ? Colors.green : Colors.white,
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

  int oneOrThree() {
    final rand = Random();
    List<int> a = [1, 3];
    return a[rand.nextInt(a.length)];
  }

  List<int> randomLights(int ver) {
    final rand = Random();
    List<int> a = [1, 2, 3, 4, 5, 6, 7, 8];
    List<int> ans = [];
    if (ver == 1) {
      int temp = a[rand.nextInt(a.length)];
      ans.add(temp);
    } else {
      int temp1 = a[rand.nextInt(a.length)];
      a.remove(temp1);
      ans.add(temp1);
      int temp2 = a[rand.nextInt(a.length)];
      a.remove(temp2);
      ans.add(temp2);
      int temp3 = a[rand.nextInt(a.length)];
      ans.add(temp3);
    }
    return ans;
  }

  checkTheAnswer(int a) {
    for (int i = 0; i < lightsIndex.length; i++) {
      if (lightsIndex[i] == a) {
        print("you are right");
      }
    }
  }
}
