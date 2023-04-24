import 'package:flutter/material.dart';
import 'globals.dart' as globals;
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

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

class EndOfThirdTest extends StatefulWidget {
  const EndOfThirdTest({super.key});

  @override
  State<EndOfThirdTest> createState() => _EndOfThirdTest();
}

class _EndOfThirdTest extends State<EndOfThirdTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 220, 180, 126),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/ExPageBackground.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "You finished the last part",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateCsv(globals.data);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
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
                        'End test',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }

  generateCsv(List<List<dynamic>> temp) async {
    String name = globals.name;
    String iD = globals.iD;
    String age = globals.age;
    String gender = globals.gender;

    List<dynamic> userInfo = [
      'Name: $name \n ID: $iD \n Age: $age \n Gender: $gender \n'
    ];
    // First exam
    int score1 = globals.score1;
    int click = globals.click;
    double time1 = globals.time1;
    List<dynamic> firstExam = [
      'First exam: \n Score = $score1 / $click \n Minimum time = $time1 \n'
    ];
    // Second exam
    int score2 = globals.score2;
    Duration time2 = globals.time2;
    List<dynamic> secondExam = [
      'Second exam: \n Score = $score2 \n Minimum time = $time2 \n'
    ];

    // Third exam

    temp.add(userInfo);
    temp.add(firstExam);
    temp.add(secondExam);

    String csvData = const ListToCsvConverter().convert(temp);
    String? directory = (await getExternalStorageDirectory())?.path;
    //(await getApplicationDocumentsDirectory()).path;
    final path = "$directory/$iD.csv";
    //print(path);
    final File file = File(path);
    await file.writeAsString(csvData);
  }
}
