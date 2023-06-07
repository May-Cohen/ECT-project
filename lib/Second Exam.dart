import 'dart:math';
import 'package:flutter/material.dart';
import 'Templates first version.dart';
import 'Templates second version.dart';
import 'package:flutter/foundation.dart';
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

class Double extends StatefulWidget {
  const Double({super.key});

  @override
  State<Double> createState() => _Double();
}

IconData icon = Icons.abc;
//int score2 = 0;
//int numOfWrongAnswers2 = 1;
// int numOfGames = 5;
final stopwatch = Stopwatch();

class _Double extends State<Double> {
  @override
  void initState() {
    super.initState();
    stopwatch.reset();
    stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    globals.gamesTimes++;
    List<List<IconData>> cards = chooseRandomCard();
    List<IconData> cardA = cards[0];
    List<IconData> cardB = cards[1];
    icon = findSimilarIcon(cardA, cardB);
    List<List<Positioned>> templates =
        chooseTemplate(globals.version, cardA, cardB);
    List<Positioned> templateA = templates[0];
    List<Positioned> templateB = templates[1];
    globals.leftOrRight = 0;
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
              const SizedBox(height: 100),
              const Text(
                " Please click on the only symbol on the left card that matches a symbol on the right card:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra'),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(500),
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
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            templateA[0],
                            templateA[1],
                            templateA[2],
                            templateA[3],
                            templateA[4],
                            templateA[5],
                            templateA[6],
                            templateA[7],
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(500),
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
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            templateB[0],
                            templateB[1],
                            templateB[2],
                            templateB[3],
                            templateB[4],
                            templateB[5],
                            templateB[6],
                            templateB[7],
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}

List<List<IconData>> createCards() {
  List<List<IconData>> cards = [];
  List<IconData> icons = [
    Icons.umbrella,
    Icons.beach_access,
    Icons.grade_outlined,
    Icons.alarm,
    Icons.airplanemode_active_rounded,
    Icons.bedtime_rounded,
    Icons.sanitizer,
    Icons.favorite_border,
    Icons.cloud,
    Icons.sunny,
    Icons.house,
    Icons.park,
    Icons.local_florist,
    Icons.stream,
    Icons.tag_faces_sharp,
    Icons.anchor_rounded,
    Icons.bolt_sharp,
    Icons.wine_bar_rounded,
    Icons.wb_incandescent_outlined,
    Icons.watch_outlined,
    Icons.vpn_key_outlined,
    Icons.water_drop_outlined,
    Icons.volume_up,
    Icons.blender,
    Icons.pets,
    Icons.cruelty_free_outlined,
    Icons.agriculture,
    Icons.fire_truck,
    Icons.local_cafe,
    Icons.golf_course,
    Icons.icecream_outlined,
    Icons.fitness_center,
    Icons.headphones,
    Icons.grid_3x3,
    Icons.battery_charging_full,
    Icons.sports_baseball,
    Icons.toys,
    Icons.pedal_bike,
    Icons.business_center,
    Icons.cut,
    Icons.point_of_sale,
    Icons.keyboard,
    Icons.palette_outlined,
    Icons.hourglass_bottom_sharp,
    Icons.child_friendly,
    Icons.ac_unit,
    Icons.check_circle,
    Icons.format_paint,
    Icons.man,
    Icons.snowmobile,
    Icons.castle_sharp,
    Icons.filter_vintage,
    Icons.attach_file,
    Icons.attractions_outlined,
    Icons.sports,
    Icons.shutter_speed_outlined,
    Icons.checkroom,
    Icons.shower,
  ];

  int n = 7; //number of symbols on each card is 8 so n=8-1

  for (int i = 0; i < n + 1; i++) {
    cards.add([icons[1]]);
    for (int j = 0; j < n; j++) {
      cards[i].add(icons[(j + 1) + (i * n) + 1]);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      cards.add([icons[i + 2]]);
      for (int k = 0; k < n; k++) {
        int val = ((n + 1) + (n * k) + ((i * k) + j) % n) + 1;
        cards[cards.length - 1].add(icons[val]);
      }
    }
  }
  return cards;
}

List<List<IconData>> chooseRandomCard() {
  List<List<IconData>> temp = createCards();
  final randomCard = Random();
  List<IconData> temp1 = temp[randomCard.nextInt(temp.length)];
  List<IconData> temp2 = temp[randomCard.nextInt(temp.length)];
  if (listEquals(temp1, temp2) == true) {
    while (listEquals(temp1, temp2) == true) {
      temp2 = temp[randomCard.nextInt(temp.length)];
    }
  }
  List<List<IconData>> ans = [temp1, temp2];
  return ans;
}

List<List<Positioned>> chooseRandomTemplate1(
    List<IconData> cardA, List<IconData> cardB) {
  List<int> temp = [
    1,
    2,
    3,
    4,
    5,
  ];
  final randomTemplate = Random();
  int temp1 = temp[randomTemplate.nextInt(temp.length)];
  int temp2 = temp[randomTemplate.nextInt(temp.length)];
  if (temp1 == temp2) {
    while (temp1 == temp2) {
      temp2 = temp[randomTemplate.nextInt(temp.length)];
    }
  }

  List<Positioned> tempA = [];
  List<Positioned> tempB = [];

  if (temp1 == 1) {
    tempA = Templates1.firstTemplate(cardA);
  }
  if (temp1 == 2) {
    tempA = Templates1.secondTemplate(cardA);
  }
  if (temp1 == 3) {
    tempA = Templates1.thirdTemplate(cardA);
  }
  if (temp1 == 4) {
    tempA = Templates1.fourthTemplate(cardA);
  }
  if (temp1 == 5) {
    tempA = Templates1.fifthTemplate(cardA);
  }

  if (temp2 == 1) {
    tempB = Templates1.firstTemplate(cardB);
  }
  if (temp2 == 2) {
    tempB = Templates1.secondTemplate(cardB);
  }
  if (temp2 == 3) {
    tempB = Templates1.thirdTemplate(cardB);
  }
  if (temp2 == 4) {
    tempB = Templates1.fourthTemplate(cardB);
  }
  if (temp2 == 5) {
    tempB = Templates1.fifthTemplate(cardB);
  }

  List<List<Positioned>> ans = [tempA, tempB];
  return ans;
}

List<List<Positioned>> chooseRandomTemplate2(
    List<IconData> cardA, List<IconData> cardB) {
  List<int> temp = [
    1,
    2,
    3,
    4,
    5,
  ];
  final randomTemplate = Random();
  int temp1 = temp[randomTemplate.nextInt(temp.length)];
  int temp2 = temp[randomTemplate.nextInt(temp.length)];
  if (temp1 == temp2) {
    while (temp1 == temp2) {
      temp2 = temp[randomTemplate.nextInt(temp.length)];
    }
  }

  List<Positioned> tempA = [];
  List<Positioned> tempB = [];

  if (temp1 == 1) {
    tempA = Templates2.firstTemplate(cardA);
  }
  if (temp1 == 2) {
    tempA = Templates2.secondTemplate(cardA);
  }
  if (temp1 == 3) {
    tempA = Templates2.thirdTemplate(cardA);
  }
  if (temp1 == 4) {
    tempA = Templates2.fourthTemplate(cardA);
  }
  if (temp1 == 5) {
    tempA = Templates2.fifthTemplate(cardA);
  }

  if (temp2 == 1) {
    tempB = Templates2.firstTemplate(cardB);
  }
  if (temp2 == 2) {
    tempB = Templates2.secondTemplate(cardB);
  }
  if (temp2 == 3) {
    tempB = Templates2.thirdTemplate(cardB);
  }
  if (temp2 == 4) {
    tempB = Templates2.fourthTemplate(cardB);
  }
  if (temp2 == 5) {
    tempB = Templates2.fifthTemplate(cardB);
  }

  List<List<Positioned>> ans = [tempA, tempB];
  return ans;
}

List<List<Positioned>> chooseTemplate(int x, cardA, cardB) {
  if (x == 2) {
    return chooseRandomTemplate2(cardA, cardB);
  } else {
    return chooseRandomTemplate1(cardA, cardB);
  }
}

IconData findSimilarIcon(List<IconData> a, List<IconData> b) {
  IconData ans = Icons.abc;
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        ans = a[i];
      }
    }
  }
  return ans;
}
