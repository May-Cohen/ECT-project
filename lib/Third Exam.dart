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
bool isChose = false;
int ver = 0;

class _LBulb extends State<LBulb> {
  @override
  void initState() {
    ver = oneOrThree();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 180, 126),
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
              "Test explanation",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                height: 500,
                width: 810,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
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
                          // start the detection timer
                          stopwatchD.start();
                          // when the player press the button we want to chose
                          // the game version (1 or 3 lights) and light random light/lights
                          if (ver == 1) {
                          } else {}
                        },
                        // when the player release the button
                        onTapUp: (details) {
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
                          // start the response timer
                          // this timer will be closed when the player will press
                          // the button of the correct light
                          stopwatchR.start();
                        },
                      ),
                    ),
                  ),
                  // the lights buttons
                  buttonsFirstRow: [
                    TextButton(
                      onPressed: () {
                        // check if it's the correct light
                        // when it's the correct light stop the response time.
                        print("clicked1");
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
                        print("clicked2");
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
                        print("clicked3");
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
                        print("clicked4");
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
                        print("clicked5");
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
                        print("clicked6");
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
                        print("clicked7");
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
                        print("clicked8");
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
                      onPressed: () {
                        print("clicked1");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked2");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked3");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked4");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                  ],
                  // the other 4 light
                  buttonsSecondRowHalf2: [
                    TextButton(
                      onPressed: () {
                        print("clicked5");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked6");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked7");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                            border: Border.all(width: 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("clicked8");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
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

  Color turnLight(bool isChose) {
    if (isChose == true) {
      return Colors.green;
    }
    return Colors.white;
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
      ans[0] = a[rand.nextInt(a.length)];
    } else {
      ans[0] = a[rand.nextInt(a.length)];
      a.remove(ans[0]);
      ans[1] = a[rand.nextInt(a.length)];
      a.remove(ans[1]);
      ans[2] = a[rand.nextInt(a.length)];
    }
    return ans;
  }
}
