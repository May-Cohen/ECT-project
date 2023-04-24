library globals;

String name = '';
String iD = '';
String age = '';
String gender = '';
List<List<dynamic>> data = [];
int click = 0; // num of answers first exam
int score1 = 0; // num of correct answers first exam
double time1 = 60; // milliseconds
int numOfWrongAnswers1 = 2;
int score2 = 0; // num of correct answers second exam
int numOfWrongAnswers2 = 1;
int numOfGames = 5; // num of games before ending second exam (correct answers)
Duration time2 = const Duration(
    seconds:
        0); // the time passed from when the student saw the cards until he pressed a button 
