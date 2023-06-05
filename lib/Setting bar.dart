import 'package:flutter/material.dart';
import 'globals.dart' as globals;

double show1 = 0;
String show2 = '';
String show3 = '';
String show4 = '';
String show5 = '';
String show6 = '';
String show7 = '';

class SettingBar extends StatelessWidget {
  const SettingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[200]?.withOpacity(0.5),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_one_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('First Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(
                  "Select the starting time (milliseconds):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: DropdownButton<double>(
                      items: <double>[80, 75, 70, 65, 60, 55, 50]
                          .map((double value1) {
                        return DropdownMenuItem<double>(
                          value: value1,
                          child: Text(value1.toString()),
                        );
                      }).toList(),
                      onChanged: (value1) {
                        globals.time1 = value1!;
                        globals.init = value1;
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the number of wrong answers before ending the test:",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: DropdownButton<int>(
                      items: <int>[5, 4, 3, 2, 1].map((int value2) {
                        return DropdownMenuItem<int>(
                          value: value2,
                          child: Text(value2.toString()),
                        );
                      }).toList(),
                      onChanged: (value2) {
                        globals.numOfWrongAnswers1 = value2!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_two_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('Second Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(
                  "Select the number of games before ending the test (correct answers):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: DropdownButton<int>(
                      items: <int>[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
                          .map((int value3) {
                        return DropdownMenuItem<int>(
                          value: value3,
                          child: Text(value3.toString()),
                        );
                      }).toList(),
                      onChanged: (value3) {
                        globals.numOfGames = value3!;
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the number of wrong answers before ending the test:",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: DropdownButton<int>(
                      items: <int>[5, 4, 3, 2, 1].map((int value4) {
                        return DropdownMenuItem<int>(
                          value: value4,
                          child: Text(value4.toString()),
                        );
                      }).toList(),
                      onChanged: (value4) {
                        globals.numOfWrongAnswers2 = value4!;
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the version of the Double game (1 or 2):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: DropdownButton<int>(
                      items: <int>[1, 2].map((int value5) {
                        return DropdownMenuItem<int>(
                          value: value5,
                          child: Text(value5.toString()),
                        );
                      }).toList(),
                      onChanged: (value5) {
                        globals.version = value5!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_3_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('Third Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(""),
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      // onChanged: () {
                      // },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(""),
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 45,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      // onChanged: () {
                      // },
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            width: 55,
            child: TextButton(
              onPressed: () {
                Scaffold.of(context).closeDrawer();
              },
              child: Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 123, 191, 247).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Alkatra'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
