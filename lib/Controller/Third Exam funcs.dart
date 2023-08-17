import 'dart:math';
import 'package:project/Model/globals.dart' as globals;

markLights() {
  for (int i = 0; i < globals.lightsIndex.length; i++) {
    if (globals.lightsIndex[i] == 1) {
      globals.chosen1 = true;
    }
    if (globals.lightsIndex[i] == 2) {
      globals.chosen2 = true;
    }
    if (globals.lightsIndex[i] == 3) {
      globals.chosen3 = true;
    }
    if (globals.lightsIndex[i] == 4) {
      globals.chosen4 = true;
    }
    if (globals.lightsIndex[i] == 5) {
      globals.chosen8 = true;
    }
    if (globals.lightsIndex[i] == 6) {
      globals.chosen7 = true;
    }
    if (globals.lightsIndex[i] == 7) {
      globals.chosen6 = true;
    }
    if (globals.lightsIndex[i] == 8) {
      globals.chosen5 = true;
    }
  }
}

turnOffLights() {
  globals.chosen1 = false;
  globals.chosen2 = false;
  globals.chosen3 = false;
  globals.chosen4 = false;
  globals.chosen5 = false;
  globals.chosen6 = false;
  globals.chosen7 = false;
  globals.chosen8 = false;
}

updateValues() {
  // save the time of the detection time
  globals.stopwatchD.stop();
  globals.detectionTime = globals.stopwatchD.elapsed;
  globals.detectionTimes[globals.numOfTurn] = globals.detectionTime;
  // reset the values
  globals.stopwatchD.reset();
  globals.detectionTime = const Duration(seconds: 0);
  globals.numOfTurn++;
  print(globals.detectionTimes);
  // update lights
  globals.stopwatchR.start();
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
    int temp = a[rand.nextInt(a.length)];
    ans.add(temp);
  } else {
    int temp1 = a[rand.nextInt(a.length)];
    a.remove(temp1);
    ans.add(temp1);
    int temp2 = a[rand.nextInt(a.length)];
    a.remove(temp2);
    ans.add(temp2);
    int temp3 = a[rand.nextInt(a.length)];
    ans.add(temp3);
  }
  return ans;
}

checkTheAnswer(int a) {
  // only one light
  if (globals.lightsIndex.length == 1) {
    if (globals.lightsIndex[0] == a) {
      print("you are right");
      globals.score3++;
    }
  } else {
    // Three lights
    int ans = 0;
    int b = globals.lightsIndex[0];
    int c = globals.lightsIndex[1];
    int d = globals.lightsIndex[2];
    int tempMax = max(b, c);
    int maxIndex = max(tempMax, d);

    // Three adjacent lights - the answer will be the rightmost light
    if ((b - c).abs() == 1 && (b - d).abs() == 1 && (c - d).abs() == 1) {
      ans = maxIndex;
    }

    // Two adjacent lights and one distant
    if ((b - d).abs() != 1 && (c - d).abs() != 1 && (b - c).abs() == 1) {
      //bc \ cb adjacent
      ans = d;
    }
    if ((b - c).abs() != 1 && (b - d).abs() != 1 && (c - d).abs() == 1) {
      //cd \ dc adjacent
      ans = b;
    }
    if ((b - c).abs() != 1 && (c - d).abs() != 1 && (b - d).abs() == 1) {
      //bd \ db adjacent
      ans = c;
    }

    // Three remote lights - the answer will be the rightmost light
    if ((b - c).abs() != 1 && (b - d).abs() != 1 && (c - d).abs() != 1) {
      ans = maxIndex;
    }

    // check the correctness of the choice
    if (ans == a) {
      print("you are right");
      globals.score3++;
    } else {
      print("you are wrong");
    }
  }
}
