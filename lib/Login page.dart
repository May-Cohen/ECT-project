import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'Explanation page.dart';
import 'globals.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/loginPageBackground.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Text(
              "Login page",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 220, 180, 126),
                  fontWeight: FontWeight.w900,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 10.0,
                      color: Color.fromARGB(154, 174, 16, 16),
                    ),
                  ],
                  fontSize: 60),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your name',
                ),
                onChanged: (value1) {
                  globals.globalVariables.name = value1;
                },
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your ID',
                ),
                onChanged: (value2) {
                  globals.globalVariables.iD = value2;
                },
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your age',
                ),
                onChanged: (value3) {
                  globals.globalVariables.age = value3;
                },
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your gender',
                ),
                onChanged: (value4) {
                  globals.globalVariables.gender = value4;
                },
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                //generateCsv(globals.globalVariables.data);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExplanationPage()),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 220, 180, 126),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
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
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  // generateCsv(List<List<dynamic>> temp) async {
  //   List<dynamic> firstRow = [
  //     "  Name  "
  //         "  ID  "
  //         "  Age   "
  //         "  Gender   "
  //         "   Score  "
  //         "   Minimum time    "
  //   ];
  //   String name = globals.globalVariables.name;
  //   String iD = globals.globalVariables.iD;
  //   String age = globals.globalVariables.age;
  //   String gender = globals.globalVariables.gender;
  //   List<dynamic> secondRow = ["  $name " "  $iD " "  $age  " "  $gender "];
  //   temp.add(firstRow);
  //   temp.add(secondRow);
  //   String csvData = const ListToCsvConverter().convert(temp);
  //   String? directory = (await getExternalStorageDirectory())?.path;
  //   //(await getApplicationDocumentsDirectory()).path;
  //   final path = "$directory/$iD.csv";
  //   print(path);
  //   final File file = File(path);
  //   await file.writeAsString(csvData);
  // }
}
