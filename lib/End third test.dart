import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'globals.dart' as globals;
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:external_path/external_path.dart';
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
          backgroundColor: Colors.blue[600]?.withOpacity(0.5),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background1.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 300),
                const Center(
                  child: Text(
                    "You finished the last part",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alkatra'),
                  ),
                ),
                const SizedBox(height: 80),
                TextButton(
                  onPressed: () {
                    createFolder();
                    createInfo();
                    createFirstExam();
                    createSecondExam();
                    createThirdExam();
                  },
                  child: Container(
                    height: 50,
                    width: 200,
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
                        'End test',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Alkatra'),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }

  Future<String> createFolder() async {
    String temp =
        '${(Platform.isAndroid ? await getExternalStorageDirectory() : await getApplicationSupportDirectory())!.path}/${globals.iD}';
    final directory = Directory(temp);
    var per = await Permission.storage.status;
    if (!per.isGranted) {
      await Permission.storage.request();
    }
    if ((await directory.exists())) {
      return directory.path;
    } else {
      directory.create();
      return directory.path;
    }
  }

  Future<File> get createFileInfo async {
    final directory = await createFolder();
    return File('$directory/Info.txt');
  }

  Future<File> get createFile1 async {
    final directory = await createFolder();
    return File('$directory/First Exam.txt');
  }

  Future<File> get createFile2 async {
    final directory = await createFolder();
    return File('$directory/Second Exam.txt');
  }

  Future<File> get createFile3 async {
    final directory = await createFolder();
    return File('$directory/Third Exam.txt');
  }

  Future<File> createInfo() async {
    final file = await createFileInfo;
    return file.writeAsString(
        "Personal details: \n Full name: ${globals.name} \n ID: ${globals.iD} \n Age: ${globals.age} \n Gender: ${globals.gender} \n");
  }

  createFirstExam() async {
    final file = await createFile1;
    String temp = "";
    for (int i = 0; i < (globals.roundSides).length; i++) {
      if (globals.roundSides[i] == 0) {
        temp = "left";
      } else {
        temp = "right";
      }
      file.writeAsString("The start time: ${globals.init} \n \n",
          mode: FileMode.append);
      await file.writeAsString(
          "${i + 1}th  round: \n The actual side: $temp \n The shape display time: ${globals.roundsTimes[i]} \n The correctness of the choice: ${globals.roundCorrectness[i]} \n \n",
          mode: FileMode.append);
    }
    file.writeAsString("Total correct answers: ${globals.score1} \n",
        mode: FileMode.append);
  }

  createSecondExam() async {
    final file = await createFile2;
    for (int i = 0; i < globals.gamesTimes; i++) {
      await file.writeAsString(
          "${i + 1}th  round: \n The time until choose the object: ${globals.rountimes[i]} \n The correctness of the choice: \n The side clicked:  \n \n",
          mode: FileMode.append);
    }
    file.writeAsString("Total correct answers: ${globals.score2} \n",
        mode: FileMode.append);
  }

  createThirdExam() async {
    final file = await createFile3;
  }
}
