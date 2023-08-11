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
import pprint


class SecondExamAnalysis:

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
        num_of_trails = []
        a = []
        if (genderTemp == "TRUE" or genderTemp == "True"):
            gender = "Boy"
        else:
            gender = "Girl"
        right_handed = dict[0].get("Is Right?")
        age = dict[0].get("Age")
        for i in range(len(dict)):
            num_of_trails.append(float(dict[i].get("Tone")))
            if (float(dict[i].get("Descision TIme[ms]")) < 0):
                num_of_negative_trails = num_of_negative_trails+1
        return name, gender, right_handed, age, max(num_of_trails)-num_of_negative_trails

    # calculate data for one file of one participant
    def calculate_data(self, file: str):
        dict = self.import_data(file)
        decision_time_correct_answer_arrow_above_star = []
        decision_time_correct_answer_arrow_below_star = []
        decision_time_correct_answer_tune_flower_appeared = []
        decision_time_correct_answer_tune_flower_not_appeared = []

        for i in range(len(dict)):
            arrow_color = dict[i].get("Arrow_Color")
            choice_side = "left" if float(
                dict[i].get("X pos")) < 1000 else "right"
            green_color_side = "right" if dict[i].get(
                "Is  Circle Right?") == "1" else "left"
            print(green_color_side)

            # above star
            if dict[i].get("Arrow_Location") == "up":
                if (arrow_color == "green" and choice_side == "right" and green_color_side == "right") or (arrow_color == "green" and choice_side == "left" and green_color_side == "left") or (arrow_color == "red" and choice_side == "left" and green_color_side == "right") or (arrow_color == "red" and choice_side == "right" and green_color_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0:
                        decision_time_correct_answer_arrow_above_star.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))

            # below star
            if dict[i].get("Arrow_Location") == "down":
                if (arrow_color == "green" and choice_side == "right" and green_color_side == "right") or (arrow_color == "green" and choice_side == "left" and green_color_side == "left") or (arrow_color == "red" and choice_side == "left" and green_color_side == "right") or (arrow_color == "red" and choice_side == "right" and green_color_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0:
                        decision_time_correct_answer_arrow_below_star.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))

            # tune \ flower
            if dict[i].get("Tone") == "1":
                if (arrow_color == "green" and choice_side == "right" and green_color_side == "right") or (arrow_color == "green" and choice_side == "left" and green_color_side == "left") or (arrow_color == "red" and choice_side == "left" and green_color_side == "right") or (arrow_color == "red" and choice_side == "right" and green_color_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0:
                        decision_time_correct_answer_tune_flower_appeared.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))

            if dict[i].get("Tone") == "0":
                if (arrow_color == "green" and choice_side == "right" and green_color_side == "right") or (arrow_color == "green" and choice_side == "left" and green_color_side == "left") or (arrow_color == "red" and choice_side == "left" and green_color_side == "right") or (arrow_color == "red" and choice_side == "right" and green_color_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0:
                        decision_time_correct_answer_tune_flower_not_appeared.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))

        Average_decision_time_correct_answer_arrow_above_star = 0 if decision_time_correct_answer_arrow_above_star == [
        ] else np.average(decision_time_correct_answer_arrow_above_star)
        Average_decision_time_correct_answer_arrow_below_star = 0 if decision_time_correct_answer_arrow_below_star == [
        ] else np.average(decision_time_correct_answer_arrow_below_star)
        Average_decision_time_correct_answer_tune_flower_appeared = 0 if decision_time_correct_answer_tune_flower_appeared == [
        ] else np.average(decision_time_correct_answer_tune_flower_appeared)
        Average_decision_time_correct_answer_tune_flower_not_appeared = 0 if decision_time_correct_answer_tune_flower_not_appeared == [
        ] else np.average(decision_time_correct_answer_tune_flower_not_appeared)
        return Average_decision_time_correct_answer_arrow_above_star, Average_decision_time_correct_answer_arrow_below_star, Average_decision_time_correct_answer_tune_flower_appeared, Average_decision_time_correct_answer_tune_flower_not_appeared

    # create one table with averages of all participants
    def create_table(self, folder):
        files_names = self.file_names(folder)
        names = []
        genders = []
        handed = []
        ages = []
        trails = []
        Averages_decision_time_for_correct_answer_above = []
        Averages_decision_time_for_wrong_answer_below = []
        Averages_decision_time_for_correct_answer_appeared = []
        Averages_decision_time_for_wrong_answer_not_appeared = []
        for file_name in files_names:
            name, gender, right_handed, age, trail = self.personal_info(
                folder+file_name)
            avg1, avg2, avg3, avg4 = self.calculate_data(folder+file_name)
            names.append(name)
            genders.append(gender)
            handed.append(right_handed)
            ages.append(age)
            trails.append(trail)
            Averages_decision_time_for_correct_answer_above.append(avg1)
            Averages_decision_time_for_wrong_answer_below.append(avg2)
            Averages_decision_time_for_correct_answer_appeared.append(avg3)
            Averages_decision_time_for_wrong_answer_not_appeared.append(avg4)
        data = {"Name": names,
                "Gender": genders,
                "Right-handed?": handed,
                "Age": ages,
                "Average decision time in a correct answer when the arrow was above the star": avg1,
                "Average decision time in a correct answer when the arrow was below the star": avg2,
                "Average decision time in a correct answer when a tune or flower appeared before the arrow": avg3,
                "Average decision time in a correct answer when a tune or flower not appeared before the arrow": avg4}
        Df = pd.DataFrame(data)
        Df.to_csv("Second exam.csv")
        return np.average(trails)

    def analyze_data(self, fileName):
        dict = self.import_data(fileName)
        boys_correct_answer_arrow_above_star = []
        girls_correct_answer_arrow_above_star = []
        boys_correct_answer_arrow_below_star = []
        girls_correct_answer_arrow_below_star = []
        boys_correct_answer_tune_flower_appeared = []
        girls_correct_answer_tune_flower_appeared = []
        boys_correct_answer_tune_flower_not_appeared = []
        girls_correct_answer_tune_flower_not_appeared = []

        right_handed_correct_answer_arrow_above_star = []
        left_handed_correct_answer_arrow_above_star = []
        right_handed_correct_answer_arrow_below_star = []
        left_handed_correct_answer_arrow_below_star = []
        right_handed_correct_answer_tune_flower_appeared = []
        left_handed_correct_answer_tune_flower_appeared = []
        right_handed_correct_answer_tune_flower_not_appeared = []
        left_handed_correct_answer_tune_flower_not_appeared = []

        five_six_correct_answer_arrow_above_star = []
        six_seven_correct_answer_arrow_above_star = []
        seven_ten_correct_answer_arrow_above_star = []
        five_six_correct_answer_arrow_below_star = []
        six_seven_correct_answer_arrow_below_star = []
        seven_ten_correct_answer_arrow_below_star = []
        five_six_correct_answer_tune_flower_appeared = []
        six_seven_correct_answer_tune_flower_appeared = []
        seven_ten_correct_answer_tune_flower_appeared = []
        five_six_correct_answer_tune_flower_not_appeared = []
        six_seven_correct_answer_tune_flower_not_appeared = []

        # Boys Girls
        for i in range(len(dict)):
            if dict[i].get("Gender") == "Boy":
                boys_correct_answer_arrow_above_star.append(
                    float(dict[i].get("Average decision time in a correct answer when the arrow was above the star")))
                boys_correct_answer_arrow_below_star.append(
                    float(dict[i].get("Average decision time in a correct answer when the arrow was below the star")))
                boys_correct_answer_tune_flower_appeared.append(
                    float(dict[i].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                boys_correct_answer_tune_flower_not_appeared.append(
                    float(dict[i].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))
            else:
                girls_correct_answer_arrow_above_star.append(
                    float(dict[i].get("Average decision time in a correct answer when the arrow was above the star")))
                girls_correct_answer_arrow_below_star.append(
                    float(dict[i].get("Average decision time in a correct answer when the arrow was below the star")))
                girls_correct_answer_tune_flower_appeared.append(
                    float(dict[i].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                girls_correct_answer_tune_flower_not_appeared.append(
                    float(dict[i].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))

        boys_avg_above_arrow = 0 if boys_correct_answer_arrow_above_star == [
        ] else np.average(boys_correct_answer_arrow_above_star)
        boys_avg_below_color = 0 if boys_correct_answer_arrow_below_star == [
        ] else np.average(boys_correct_answer_arrow_below_star)
        boys_avg_appeared = 0 if boys_correct_answer_tune_flower_appeared == [
        ] else np.average(boys_correct_answer_tune_flower_appeared)
        boys_avg_not_appeared = 0 if boys_correct_answer_tune_flower_not_appeared == [
        ] else np.average(boys_correct_answer_tune_flower_not_appeared)
        girls_avg_above_arrow = 0 if girls_correct_answer_arrow_above_star == [
        ] else np.average(girls_correct_answer_arrow_above_star)
        girls_avg_below_color = 0 if girls_correct_answer_arrow_below_star == [
        ] else np.average(girls_correct_answer_arrow_below_star)
        girls_avg_appeared = 0 if girls_correct_answer_tune_flower_appeared == [
        ] else np.average(girls_correct_answer_tune_flower_appeared)
        girls_avg_not_appeared = 0 if girls_correct_answer_tune_flower_not_appeared == [
        ] else np.average(girls_correct_answer_tune_flower_not_appeared)

        boys_girls = [boys_avg_above_arrow, boys_avg_below_color, boys_avg_appeared, boys_avg_not_appeared,
                      girls_avg_above_arrow, girls_avg_below_color, girls_avg_appeared, girls_avg_not_appeared]

        # Right Left

        # Ages

        return boys_girls

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
            ax.bar_label(temp2, padding=3)
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [s]')
        ax.set_title('Comparison between boys and girls')
        ax.set_xticks(A_axis + 0.25, A)
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
            ax.bar_label(temp2, padding=3)
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [s]')
        ax.set_title('Comparison between right-handed and left-handed')
        ax.set_xticks(B_axis + 0.25, B)
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
            ax.bar_label(temp2, padding=3)
            mul += 1
        ax.set_ylabel('Average decision time in correct answer [s]')
        ax.set_title('Comparison between age ranges')
        ax.set_xticks(C_axis + 0.25, C)
        ax.legend(loc='upper right', ncols=2)
        plt.show()


A = SecondExamAnalysis()
# print(A.calculate_data("assets/Data/second exam/7597 emili09_44_53_test2.csv"))
A.create_table("assets/Data/second exam/")
# A.plot("Second exam.csv")
