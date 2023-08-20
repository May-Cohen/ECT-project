# ECT Project

A flutter application that will be used to diagnose students and analyze data.<br />
This application consists of three thinking exercises; each exercise tests the student's abilities from different aspects.<br />
The application saves the participant's data and analyzes the results.

- [ECT Project](#ect-project)
  - [First Exam](#first-exam)
  - [Second Exam: Double game](#second-exam-double-game)
  - [Third Exam](#third-exam)
  - [Application outputs](#application-outputs)
  - [Data Analysis](#data-analysis)


## First Exam

**Exam explanation :** <br />
In this exam, an "open" shape appears for several milliseconds (right side shape or left side shape).

![](assets/images/RightShape.png)right side
![](assets/images/LeftShape.png) left side

As soon as the time period has expired, the form is replaced with a "complete" form.

![](assets/images/FullShape.png) complete form


The user will be required to select which direction of the shape he saw before the shape changed.<br />
In each round we save the time the image was displayed (milliseconds) and the correctness of the answer for each round.


![](assets/images/FirstExam.png)


If the user makes the correct choice, he will be presented with the choice again, but the amount of time he is exposed to it will decrease.<br />
In the event that the user answered the question incorrectly, the time will increase and the exam will continue.

## Second Exam: Double game


**Exam explanation :** <br />
During the exam, the user is presented with two cards that have only one symbol in common.<br />
The user must identify the common symbol and press on it as quickly as possible.<br />
In each round we save identification time.


![](assets/images/SecondExam.png)


## Third Exam

**Exam explanation :**<br />
This exam requires the user to identify the lightning of the light bulbs and select the appropriate button for each light bulb:

![](assets/images/ThirdExam.png)

The user must hold down the main button (at the bottom of the screen).<br />
Holding this button will activate one or three lights.<br />

- If one light turns on, the user will need to click the button associated with that light.

$~$

![](assets/images/example2.png)

$~$

- If three lights turn on, the user will need to click the light's button associated with the light that is the furthest from the other two lights.

$~$

![](assets/images/example1.png)

In each round, we save the identification time (the time from the moment the user pressed the main button to the time he picked it's pinger from the main button) and the decision time (the time from the moment the user picked it's pinger from the main button to the time the user pressed the light's button).


## Application outputs

As soon as the user completes all the exams, the application creates a folder whose name is the user's ID, containing four files that include user information and their exam results.<br />

![](assets/images/folder.png)

Analyses will be conducted based on these results.

## Data Analysis
We use the pandas and numpy libraries for data analysis.<br />
Based on the results of the tests, we created a data frame that includes the results of all rounds of the participants.<br />
With the data frame we created, we extracted the data and compared it based on three categories: gender, right-handedness or left-handedness, and age.<br />
The comparison results are presented as a graphs:

![](assets/images/graph1.png)

$~$

![](assets/images/graph2.png)

$~$

![](assets/images/graph3.png)
