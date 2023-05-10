import 'package:flutter/material.dart';
import 'Second Exam.dart';
import 'End second test.dart';
import 'package:get/get.dart';
import 'globals.dart' as globals;

Map<IconData, Color> icons_color = {
  Icons.umbrella: Colors.amber,
  Icons.beach_access: Colors.black,
  Icons.grade_outlined: Colors.pink,
  Icons.alarm: Colors.red,
  Icons.airplanemode_active_rounded: Colors.blue,
  Icons.bedtime_rounded: Colors.brown,
  Icons.sanitizer: Colors.purple,
  Icons.favorite_border: Colors.cyan,
  Icons.cloud: Colors.orange,
  Icons.sunny: Colors.lime,
  Icons.house: Colors.orangeAccent,
  Icons.park: Colors.teal,
  Icons.local_florist: Colors.grey,
  Icons.stream: Colors.yellow,
  Icons.tag_faces_sharp: Colors.indigo,
  Icons.anchor_rounded: Colors.blueAccent,
  Icons.bolt_sharp: Colors.blueGrey,
  Icons.wine_bar_rounded: Colors.cyanAccent,
  Icons.wb_incandescent_outlined: Colors.deepOrange,
  Icons.watch_outlined: Colors.deepPurple,
  Icons.vpn_key_outlined: Colors.deepPurpleAccent,
  Icons.water_drop_outlined: Colors.green,
  Icons.volume_up: Colors.greenAccent,
  Icons.blender: Colors.lightBlue,
  Icons.pets: Colors.lightGreen,
  Icons.cruelty_free_outlined: Colors.lightGreenAccent,
  Icons.agriculture: Colors.redAccent,
  Icons.fire_truck: Colors.lime.shade900,
  Icons.local_cafe: Colors.green.shade900,
  Icons.golf_course: Colors.teal.shade900,
  Icons.icecream_outlined: Colors.cyan.shade900,
  Icons.fitness_center: Colors.lightBlue.shade900,
  Icons.headphones: Colors.deepPurple.shade900,
  Icons.grid_3x3: Colors.blueGrey.shade900,
  Icons.battery_charging_full: Colors.brown.shade50,
  Icons.sports_baseball: Colors.brown.shade300,
  Icons.toys: Colors.grey.shade900,
  Icons.pedal_bike: Colors.pink.shade100,
  Icons.business_center: Colors.pink.shade200,
  Icons.cut: Colors.pink.shade900,
  Icons.point_of_sale: Colors.pinkAccent.shade700,
  Icons.keyboard: Colors.red.shade600,
  Icons.palette_outlined: Colors.lightBlue.shade100,
  Icons.hourglass_bottom_sharp: Colors.lightBlue.shade200,
  Icons.child_friendly: Colors.blueAccent.shade100,
  Icons.ac_unit: Colors.indigo.shade50,
  Icons.check_circle: Colors.purple.shade100,
  Icons.format_paint: Colors.grey.shade800,
  Icons.man: Colors.red.shade900,
  Icons.air: Colors.redAccent.shade400,
  Icons.castle_sharp: Colors.orange.shade800,
  Icons.filter_vintage: Colors.amber.shade700,
  Icons.attach_file: Colors.lime.shade700,
  Icons.attractions_outlined: Colors.limeAccent.shade400,
  Icons.sports: Colors.green.shade200,
  Icons.shutter_speed_outlined: Colors.tealAccent.shade100,
  Icons.checkroom: Colors.cyanAccent.shade400,
  Icons.shower: Colors.indigo.shade300,
};

class Templates2 {
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.rountimes.add(globals.time2);
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[0]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[1]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[2]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[3]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[4]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[5]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[6]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[7]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[0]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[1]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[2]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[3]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[4]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[5]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[6]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[7]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[0]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[1]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[2]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[3]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[4]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[5]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[6]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[7]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[0]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[1]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[2]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[3]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[4]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[5]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[6]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[7]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[0]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[1]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[2]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[3]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[4]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[5]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[6]],
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
            globals.rountimes.add(globals.time2);
            if (globals.leftOrRight == 2) {
              globals.numClickOnRight++;
            }
            //print(stopwatch.elapsed);
            Get.offAll(const Double());
            globals.numOfGames--;
            if (globals.numOfGames == 0) {
              globals.rountimes.add(globals.time2);
              Get.offAll(const EndOfSecondTest());
            }
          } else {
            if (globals.numOfWrongAnswers2 > 0) {
              globals.rountimes.add(globals.time2);
              globals.numOfWrongAnswers2--;
            } else {
              globals.rountimes.add(globals.time2);
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
              color: icons_color[card[7]],
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
