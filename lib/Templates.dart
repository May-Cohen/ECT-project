import 'package:flutter/material.dart';
import 'Double.dart';
import 'End second test.dart';
import 'package:get/get.dart';
import 'globals.dart' as globals;

class Templates {
  static List<Positioned> firstTemplate(List<IconData> card) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      left: 200,
      top: 50,
      child: TextButton(
        onPressed: () {
          if (card[0] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 78,
            child: Icon(
              card[0],
              color: Colors.amber,
              size: 100,
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      right: 130,
      bottom: 70,
      child: TextButton(
        onPressed: () {
          if (card[1] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 80,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[1],
              color: Colors.green,
              size: 130,
            ),
          ),
        ),
      ),
    );
    Positioned c = Positioned(
      left: 255,
      top: 240,
      child: TextButton(
        onPressed: () {
          if (card[2] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 30,
            child: Icon(
              card[2],
              color: Colors.red,
              size: 115,
            ),
          ),
        ),
      ),
    );
    Positioned d = Positioned(
      right: 230,
      top: 50,
      child: TextButton(
        onPressed: () {
          if (card[3] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 180,
            child: Icon(
              card[3],
              color: Colors.purple,
              size: 70,
            ),
          ),
        ),
      ),
    );
    Positioned e = Positioned(
      top: 200,
      left: 50,
      bottom: 50,
      child: TextButton(
        onPressed: () {
          if (card[4] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 67,
            child: Icon(
              card[4],
              color: Colors.blue,
              size: 50,
            ),
          ),
        ),
      ),
    );
    Positioned f = Positioned(
      top: 100,
      bottom: 100,
      child: TextButton(
        onPressed: () {
          if (card[5] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 18,
            child: Icon(
              card[5],
              color: Colors.black,
              size: 80,
            ),
          ),
        ),
      ),
    );
    Positioned g = Positioned(
      left: 20,
      top: 135,
      child: TextButton(
        onPressed: () {
          if (card[6] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 40,
            child: Icon(
              card[6],
              color: Colors.pink,
              size: 95,
            ),
          ),
        ),
      ),
    );
    Positioned h = Positioned(
      left: 280,
      top: 115,
      child: TextButton(
        onPressed: () {
          if (card[7] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 78,
            child: Icon(
              card[7],
              color: Colors.orange,
              size: 60,
            ),
          ),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }

  static List<Positioned> secondTemplate(List<IconData> card) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      top: 170,
      bottom: 120,
      child: TextButton(
        onPressed: () {
          if (card[0] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 30,
            child: Icon(
              card[0],
              color: Colors.cyan,
              size: 160,
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      left: 60,
      top: 50,
      child: TextButton(
        onPressed: () {
          if (card[1] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[1],
              color: Colors.orange,
              size: 80,
            ),
          ),
        ),
      ),
    );
    Positioned c = Positioned(
      right: 150,
      top: 20,
      child: TextButton(
        onPressed: () {
          if (card[2] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 35,
            child: Icon(
              card[2],
              color: Colors.grey,
              size: 70,
            ),
          ),
        ),
      ),
    );
    Positioned d = Positioned(
      left: 20,
      bottom: 150,
      child: TextButton(
        onPressed: () {
          if (card[3] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 12,
            child: Icon(
              card[3],
              color: Colors.teal,
              size: 95,
            ),
          ),
        ),
      ),
    );
    Positioned e = Positioned(
      right: 40,
      bottom: 230,
      child: TextButton(
        onPressed: () {
          if (card[4] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 9,
            child: Icon(
              card[4],
              color: Colors.blueAccent,
              size: 50,
            ),
          ),
        ),
      ),
    );
    Positioned f = Positioned(
      left: 90,
      bottom: 35,
      child: TextButton(
        onPressed: () {
          if (card[5] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 175,
            child: Icon(
              card[5],
              color: Colors.black,
              size: 60,
            ),
          ),
        ),
      ),
    );
    Positioned g = Positioned(
      right: 25,
      bottom: 110,
      child: TextButton(
        onPressed: () {
          if (card[6] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 50,
            child: Icon(
              card[6],
              color: Colors.red,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned h = Positioned(
      right: 100,
      bottom: 30,
      child: TextButton(
        onPressed: () {
          if (card[7] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 50,
            child: Icon(
              card[7],
              color: Colors.lime,
              size: 100,
            ),
          ),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }

  static List<Positioned> thirdTemplate(List<IconData> card) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      left: 30,
      top: 130,
      child: TextButton(
        onPressed: () {
          if (card[0] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 50,
            child: Icon(
              card[0],
              color: Colors.redAccent,
              size: 130,
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      right: 30,
      top: 190,
      child: TextButton(
        onPressed: () {
          if (card[1] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[1],
              color: Colors.blue,
              size: 150,
            ),
          ),
        ),
      ),
    );
    Positioned c = Positioned(
      right: 100,
      top: 30,
      child: TextButton(
        onPressed: () {
          if (card[2] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              card[2],
              color: Colors.orange,
              size: 40,
            ),
          ),
        ),
      ),
    );
    Positioned d = Positioned(
      right: 70,
      left: 270,
      top: 115,
      child: TextButton(
        onPressed: () {
          if (card[3] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[3],
              color: Colors.green,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned e = Positioned(
      top: 10,
      bottom: 300,
      child: TextButton(
        onPressed: () {
          if (card[4] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[4],
              color: Colors.pink,
              size: 70,
            ),
          ),
        ),
      ),
    );
    Positioned f = Positioned(
      top: 180,
      left: 50,
      bottom: 60,
      child: TextButton(
        onPressed: () {
          if (card[5] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              card[5],
              color: Colors.yellow,
              size: 70,
            ),
          ),
        ),
      ),
    );
    Positioned g = Positioned(
      left: 120,
      bottom: 40,
      child: TextButton(
        onPressed: () {
          if (card[6] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              card[6],
              color: Colors.deepPurple,
              size: 80,
            ),
          ),
        ),
      ),
    );
    Positioned h = Positioned(
      left: 170,
      bottom: 190,
      child: TextButton(
        onPressed: () {
          if (card[7] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              card[7],
              color: Colors.black,
              size: 70,
            ),
          ),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }

  static List<Positioned> fourthTemplate(List<IconData> card) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      left: 120,
      top: 50,
      child: TextButton(
        onPressed: () {
          if (card[0] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[0],
              color: Colors.black,
              size: 100,
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      left: 130,
      bottom: 10,
      child: TextButton(
        onPressed: () {
          if (card[1] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              card[1],
              color: Colors.orange,
              size: 120,
            ),
          ),
        ),
      ),
    );
    Positioned c = Positioned(
      top: 160,
      right: 150,
      child: TextButton(
        onPressed: () {
          if (card[2] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[2],
              color: Colors.red,
              size: 80,
            ),
          ),
        ),
      ),
    );
    Positioned d = Positioned(
      left: 40,
      top: 100,
      child: TextButton(
        onPressed: () {
          if (card[3] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              card[3],
              color: Colors.blue,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned e = Positioned(
      left: 30,
      bottom: 130,
      child: TextButton(
        onPressed: () {
          if (card[4] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              card[4],
              color: Colors.grey,
              size: 100,
            ),
          ),
        ),
      ),
    );
    Positioned f = Positioned(
      right: 70,
      top: 40,
      child: TextButton(
        onPressed: () {
          if (card[5] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[5],
              color: Colors.lightGreen,
              size: 60,
            ),
          ),
        ),
      ),
    );
    Positioned g = Positioned(
      right: 30,
      bottom: 120,
      child: TextButton(
        onPressed: () {
          if (card[6] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[6],
              color: Colors.purpleAccent,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned h = Positioned(
      right: 30,
      bottom: 210,
      child: TextButton(
        onPressed: () {
          if (card[7] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[7],
              color: Colors.yellow,
              size: 65,
            ),
          ),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }

  static List<Positioned> fifthTemplate(List<IconData> card) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      left: 20,
      bottom: 200,
      child: TextButton(
        onPressed: () {
          if (card[0] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[0],
              color: Colors.black,
              size: 150,
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      left: 80,
      top: 40,
      child: TextButton(
        onPressed: () {
          if (card[1] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              card[1],
              color: Colors.red,
              size: 65,
            ),
          ),
        ),
      ),
    );
    Positioned c = Positioned(
      right: 100,
      top: 40,
      child: TextButton(
        onPressed: () {
          if (card[2] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              card[2],
              color: Colors.brown,
              size: 99,
            ),
          ),
        ),
      ),
    );
    Positioned d = Positioned(
      right: 30,
      bottom: 170,
      child: TextButton(
        onPressed: () {
          if (card[3] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 0,
            child: Icon(
              card[3],
              color: Colors.lightBlue,
              size: 50,
            ),
          ),
        ),
      ),
    );
    Positioned e = Positioned(
      left: 180,
      top: 180,
      child: TextButton(
        onPressed: () {
          if (card[4] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[4],
              color: Colors.pinkAccent,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned f = Positioned(
      left: 80,
      bottom: 40,
      child: TextButton(
        onPressed: () {
          if (card[5] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              card[5],
              color: Colors.teal,
              size: 60,
            ),
          ),
        ),
      ),
    );
    Positioned g = Positioned(
      right: 130,
      bottom: 35,
      child: TextButton(
        onPressed: () {
          if (card[6] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[6],
              color: Colors.purple,
              size: 90,
            ),
          ),
        ),
      ),
    );
    Positioned h = Positioned(
      right: 50,
      bottom: 80,
      child: TextButton(
        onPressed: () {
          if (card[7] == icon) {
            globals.score2++;
            stopwatch.stop();
            globals.time2 = stopwatch.elapsed;
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              Get.offAll(const EndOfSecondTest());
            }
          }
        },
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              card[7],
              color: Colors.orange,
              size: 70,
            ),
          ),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }
}
