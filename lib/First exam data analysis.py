from decimal import Decimal
import string
import matplotlib
import pandas as pd
import numpy as np
import csv
import os
from os import listdir
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import re


class FirstExamAnalysis:

    # create list of the files names
    def file_names(self, folder):
        list = []
        for file in os.listdir(folder):
            list.append(file)
        return list

    # create dict from the csv files
    def import_data(self, file: str):
        with open(file, 'r') as info:
            temp = csv.DictReader(info)
            dict = list(temp)
        return dict

    # save personal data of one participant
    def personal_info(self, file: str):
        dict = self.import_data(file)
        name = dict[0].get("Name")
        genderTemp = dict[0].get("Is Boy?")
        num_of_negative_trails = 0
        a = []
        if (genderTemp == "TRUE" or genderTemp == "True"):
            gender = "Boy"
        else:
            gender = "Girl"
        right_handed = dict[0].get("Is Right?")
        age = dict[0].get("Age")
        for i in range(len(dict)):
            if (float(dict[i].get("Descision TIme[ms]")) < 0):
                num_of_negative_trails = num_of_negative_trails+1
        num_of_trails = float(
            dict[len(dict)].get("Trial"))-num_of_negative_trails
        return name, gender, right_handed, age, num_of_trails

    # calculate data for one file of one participant
    def calculate_data(self, file: str):
        dict = self.import_data(file)
        decision_time_correct_answer_arrow_task = []
        decision_time_wrong_answer_arrow_task = []
        decision_time_correct_answer_color_task = []
        decision_time_wrong_answer_color_task = []
        for i in range(len(dict)):
            arrow_color = dict[i].get("Color")
            arrow_direction = dict[i].get("ArrowDirectionRed=Right")
            choice_side = "left" if float(
                dict[i].get("X pos")) < 1000 else "right"
            green_color_side = "right" if dict[i].get(
                "Is  Circle Right?") == "1" else "left"
            if dict[i].get("Task_N") == "Arrow":
                if arrow_direction == "right" and choice_side == "right":
                    if (float(dict[i].get("Descision TIme[ms]")) > 0):
                        decision_time_correct_answer_arrow_task.append(
                            float(dict[i].get("Descision TIme[ms]")))
                else:
                    if (float(dict[i].get("Descision TIme[ms]")) > 0):
                        decision_time_wrong_answer_arrow_task.append(
                            float(dict[i].get("Descision TIme[ms]")))
            if dict[i].get("Task_N") == "Color":
                if arrow_color == "Green" and choice_side == "right" and green_color_side == "right":
                    if (float(dict[i].get("Descision TIme[ms]")) > 0):
                        decision_time_correct_answer_color_task.append(
                            float(dict[i].get("Descision TIme[ms]")))
                else:
                    if (float(dict[i].get("Descision TIme[ms]")) > 0):
                        decision_time_wrong_answer_color_task.append(
                            float(dict[i].get("Descision TIme[ms]")))

            Average_decision_time_correct_answer_arrow_task = 0 if decision_time_correct_answer_arrow_task == [
            ] else np.average(decision_time_correct_answer_arrow_task)
            Average_decision_time_wrong_answer_arrow_task = 0 if decision_time_wrong_answer_arrow_task == [
            ] else np.average(decision_time_wrong_answer_arrow_task)
            Average_decision_time_correct_answer_color_task = 0 if decision_time_correct_answer_color_task == [
            ] else np.average(decision_time_correct_answer_color_task)
            Average_decision_time_wrong_answer_color_task = 0 if decision_time_wrong_answer_color_task == [
            ] else np.average(decision_time_wrong_answer_color_task)
        return Average_decision_time_correct_answer_arrow_task, Average_decision_time_wrong_answer_arrow_task, Average_decision_time_correct_answer_color_task, Average_decision_time_wrong_answer_color_task

    # create one table with averages of all participants
    def create_table(self, folder):
        files_names = self.file_names(folder)
        names = []
        genders = []
        handed = []
        ages = []
        trails = []
        Averages_decision_time_for_correct_answer_in_arrow_task = []
        Averages_decision_time_for_wrong_answer_in_arrow_task = []
        Averages_decision_time_for_correct_answer_in_color_task = []
        Averages_decision_time_for_wrong_answer_in_color_task = []
        for file_name in files_names:
            name, gender, right_handed, age, trail = self.personal_info(
                folder+file_name)
            avg1, avg2, avg3, avg4 = self.calculate_data(folder+file_name)
            names.append(name)
            genders.append(gender)
            handed.append(right_handed)
            ages.append(age)
            trails.append(trail)
            Averages_decision_time_for_correct_answer_in_arrow_task.append(
                avg1)
            Averages_decision_time_for_wrong_answer_in_arrow_task.append(avg2)
            Averages_decision_time_for_correct_answer_in_color_task.append(
                avg3)
            Averages_decision_time_for_wrong_answer_in_color_task.append(avg4)
        data = {"Name": names,
                "Gender": genders,
                "Right-handed?": handed,
                "Age": ages,
                "Average decision time in a correct answer for arrow task": Averages_decision_time_for_correct_answer_in_arrow_task,
                "Average decision time in a wrong answer for arrow task": Averages_decision_time_for_wrong_answer_in_arrow_task,
                "Average decision time in a correct answer for color task": Averages_decision_time_for_correct_answer_in_color_task,
                "Average decision time in a wrong answer for color task": Averages_decision_time_for_wrong_answer_in_color_task}
        Df = pd.DataFrame(data)
        Df.to_csv("First exam.csv")
        return np.average(trails)

    def analyze_data(self, fileName):
        dict = self.import_data(fileName)
        boys_correct_answer_for_arrow_task = []
        boys_correct_answer_for_color_task = []
        girls_correct_answer_for_arrow_task = []
        girls_correct_answer_for_color_task = []
        right_handed_arrow = []
        right_handed_color = []
        left_handed_arrow = []
        left_handed_color = []
        five_six_arrow = []
        six_seven_arrow = []
        seven_ten_arrow = []
        five_six_color = []
        six_seven_color = []
        seven_ten_color = []

        # Boys Girls
        for i in range(len(dict)):
            if dict[i].get("Gender") == "Boy":
                boys_correct_answer_for_arrow_task.append(
                    float(dict[i].get("Average decision time in a correct answer for arrow task")))
                boys_correct_answer_for_color_task.append(
                    float(dict[i].get("Average decision time in a correct answer for color task")))
            else:
                girls_correct_answer_for_arrow_task.append(
                    float(dict[i].get("Average decision time in a correct answer for arrow task")))
                girls_correct_answer_for_color_task.append(
                    float(dict[i].get("Average decision time in a correct answer for color task")))
        boys_avg_correct_arrow = 0 if boys_correct_answer_for_arrow_task == [
        ] else np.average(boys_correct_answer_for_arrow_task)
        boys_avg_correct_color = 0 if boys_correct_answer_for_color_task == [
        ] else np.average(boys_correct_answer_for_color_task)
        girls_avg_correct_arrow = 0 if girls_correct_answer_for_arrow_task == [
        ] else np.average(girls_correct_answer_for_arrow_task)
        girls_avg_correct_color = 0 if girls_correct_answer_for_color_task == [
        ] else np.average(girls_correct_answer_for_color_task)
        boys_girls = [boys_avg_correct_arrow, boys_avg_correct_color,
                      girls_avg_correct_arrow, girls_avg_correct_color]

        # Right Left
        for j in range(len(dict)):
            if (dict[j].get("Right-handed?") == "TRUE" or dict[j].get("Right-handed?") == "True"):
                right_handed_arrow.append(
                    float(dict[j].get("Average decision time in a correct answer for arrow task")))
                right_handed_color.append(
                    float(dict[j].get("Average decision time in a correct answer for color task")))
            else:
                left_handed_arrow.append(
                    float(dict[j].get("Average decision time in a correct answer for arrow task")))
                left_handed_color.append(
                    float(dict[j].get("Average decision time in a correct answer for color task")))
        right_handed_arrow_avg = 0 if right_handed_arrow == [
        ] else np.average(right_handed_arrow)
        right_handed_color_avg = 0 if right_handed_color == [
        ] else np.average(right_handed_color)
        left_handed_arrow_avg = 0 if left_handed_arrow == [
        ] else np.average(left_handed_arrow)
        left_handed_color_avg = 0 if left_handed_color == [
        ] else np.average(left_handed_color)
        rightLeftHanded = [right_handed_arrow_avg, right_handed_color_avg,
                           left_handed_arrow_avg, left_handed_color_avg]

        # Ages
        for k in range(len(dict)):
            if (dict[k].get("Age")) == "5.5" or (dict[k].get("Age")) == "5.6" or (dict[k].get("Age")) == "5.8" or (dict[k].get("Age")) == "5.9" or (dict[k].get("Age")) == "6":
                five_six_arrow.append(
                    float(dict[k].get("Average decision time in a correct answer for arrow task")))
                five_six_color.append(
                    float(dict[k].get("Average decision time in a correct answer for color task")))
            if (dict[k].get("Age")) == "6.1" or (dict[k].get("Age")) == "6.2" or (dict[k].get("Age")) == "6.3" or (dict[k].get("Age")) == "6.4" or (dict[k].get("Age")) == "6.5" or (dict[k].get("Age")) == "6.6" or (dict[k].get("Age")) == "6.7" or (dict[k].get("Age")) == "7":
                six_seven_arrow.append(
                    float(dict[k].get("Average decision time in a correct answer for arrow task")))
                six_seven_color.append(
                    float(dict[k].get("Average decision time in a correct answer for color task")))
            if (dict[k].get("Age")) == "7.1" or (dict[k].get("Age")) == "7.2" or (dict[k].get("Age")) == "7.3" or (dict[k].get("Age")) == "7.4" or (dict[k].get("Age")) == "7.5" or (dict[k].get("Age")) == "7.6" or (dict[k].get("Age")) == "10":
                seven_ten_arrow.append(
                    float(dict[k].get("Average decision time in a correct answer for arrow task")))
                seven_ten_color.append(
                    float(dict[k].get("Average decision time in a correct answer for color task")))
        five_six_arrow_avg = 0 if five_six_arrow == [
        ] else np.average(five_six_arrow)
        five_six_color_avg = 0 if five_six_color == [
        ] else np.average(five_six_color)
        six_seven_arrow_avg = 0 if six_seven_arrow == [
        ] else np.average(six_seven_arrow)
        six_seven_color_avg = 0 if six_seven_color == [
        ] else np.average(six_seven_color)
        seven_ten_arrow_avg = 0 if seven_ten_arrow == [
        ] else np.average(seven_ten_arrow)
        seven_ten_color_avg = 0 if seven_ten_color == [
        ] else np.average(seven_ten_color)
        ages = [five_six_arrow_avg, five_six_color_avg, six_seven_arrow_avg,
                six_seven_color_avg, seven_ten_arrow_avg, seven_ten_color_avg]

        return boys_girls, rightLeftHanded, ages

    # plot findings
    def plot(self, filename):
        boys_girls, right_left, ages = self.analyze_data(filename)

        # Boys Girls
        A = ['Average decision time of correct answers boys',
             'Average decision time of correct answers girls']
        dictA = {
            "Arrow": [boys_girls[0], boys_girls[2]],
            "Color": [boys_girls[1], boys_girls[3]]
        }
        A_axis = np.arange(len(A))
        mul = 0
        fig, ax = plt.subplots(layout='constrained')
        for i, j in dictA.items():
            temp1 = 0.25*mul
            temp2 = ax.bar(A_axis+temp1, j, 0.25, label=i)
            ax.bar_label(temp2, padding=3, fmt='%d')
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [ms]')
        ax.set_title('Comparison between boys and girls')
        ax.set_xticks(A_axis + 0.25, A)
        ax.set_yscale('log')
        ax.legend(loc='upper right', ncols=2)
        plt.show()

        # Right Left
        B = ['Right-handed successes average', 'Left-handed successes average']
        dictB = {
            "Arrow": [right_left[0], right_left[1]],
            "Color": [right_left[2], right_left[3]]
        }
        B_axis = np.arange(len(B))
        mul = 0
        fig, ax = plt.subplots(layout='constrained')
        for i, j in dictB.items():
            temp1 = 0.25*mul
            temp2 = ax.bar(B_axis+temp1, j, 0.25, label=i)
            ax.bar_label(temp2, padding=3, fmt='%d')
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [ms]')
        ax.set_title('Comparison between right-handed and left-handed')
        ax.set_xticks(B_axis + 0.25, B)
        ax.set_yscale('log')
        ax.legend(loc='upper right', ncols=2)
        plt.show()

        # Ages
        C = ['5-6 years old', '6-7 years old', '7-10 years old']
        dictC = {
            "Arrow": [ages[0], ages[2], ages[4]],
            "Color": [ages[1], ages[3], ages[5]]
        }
        C_axis = np.arange(len(C))
        mul = 0
        fig, ax = plt.subplots(layout='constrained')
        for i, j in dictC.items():
            temp1 = 0.25*mul
            temp2 = ax.bar(C_axis+temp1, j, 0.25, label=i)
            ax.bar_label(temp2, padding=3, fmt='%d')
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [ms]')
        ax.set_title('Comparison between age ranges')
        ax.set_xticks(C_axis + 0.25, C)
        ax.set_yscale('log')
        ax.legend(loc='upper right', ncols=2)
        plt.show()


A = FirstExamAnalysis()
print(A.create_table("assets/Data/first exam/"))
print(A.personal_info("assets/Data/first exam/7601 yana09_11_19.csv"))
# A.plot("First exam.csv")
