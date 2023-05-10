library globals;

import 'package:flutter/cupertino.dart';

String name = '';
String iD = '';
String age = '';
String gender = '';
List<List<dynamic>> data = [];
int sideTemp = -1; // the correct side of the first exam
List<int> roundSides = [];
List<double> roundsTimes = [];
List<bool> roundCorrectness = [];
int click = 0; // num of answers first exam
int score1 = 0; // num of correct answers first exam
double init = 60;
double time1 = 60; // milliseconds
int numOfWrongAnswers1 = 2;
int score2 = 0; // num of correct answers second exam
List<bool> roundsBool = [];
List<Duration> rountimes = [];
int gamesTimes = 0;
int numOfWrongAnswers2 = 1;
int numOfGames = 5; // num of games before ending second exam (correct answers)
Duration time2 = const Duration(
    seconds:
        0); // the time passed from when the student saw the cards until he pressed a button
int version = 1; // Double game version 1 or 2
int leftOrRight = 0;
int numClickOnRight = 0;
