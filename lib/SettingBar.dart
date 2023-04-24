import 'package:flutter/material.dart';
import 'package:project/globals.dart';

class SettingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_one_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('First Exam'),
            children: [
              const ListTile(
                title: Text("Select the starting time (milliseconds):"),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                    "Select the number of wrong answers before ending the test:"),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
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
            title: const Text('Second Exam'),
            children: [
              const ListTile(
                title: Text(
                    "Select the number of games before ending the test (correct answers):"),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                    "Select the number of wrong answers before ending the test:"),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
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
            title: const Text('Third Exam'),
            children: [
              const ListTile(
                title: Text(""),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(""),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const SizedBox(
                    height: 65,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          Text("save", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
