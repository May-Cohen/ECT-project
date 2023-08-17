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


class ThirdExamAnalysis:

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
        return name, gender, right_handed, age, ((len(num_of_trails))-num_of_negative_trails)

    # calculate data for one file of one participant
    def calculate_data(self, file: str):
        dict = self.import_data(file)
        decision_time_correct_answer_arrow_above_star = []
        decision_time_correct_answer_arrow_below_star = []
        decision_time_correct_answer_tune_flower_appeared = []
        decision_time_correct_answer_tune_flower_not_appeared = []

        for i in range(len(dict)):
            arrow_direction = dict[i].get("Arrow_Direction")
            choice_side = "left" if float(
                dict[i].get("X pos")) < 1000 else "right"

            # above star
            if dict[i].get("Arrow_Location") == "up":
                if (arrow_direction == "right" and choice_side == "right") or (arrow_direction == "left" and choice_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0 and (float(dict[i].get("Descision TIme[ms]"))) < 999999999999999999:
                        decision_time_correct_answer_arrow_above_star.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))
            else:
                if float(dict[i].get("Descision TIme[ms]")) > 0 and (float(dict[i].get("Descision TIme[ms]"))) < 999999999999999999:
                    decision_time_correct_answer_arrow_below_star.append(
                        float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))

            # tune \ flower
            if dict[i].get("Tone") == "1":
                if (arrow_direction == "right" and choice_side == "right") or (arrow_direction == "left" and choice_side == "left"):
                    if float(dict[i].get("Descision TIme[ms]")) > 0 and (float(dict[i].get("Descision TIme[ms]"))) < 999999999999999999:
                        decision_time_correct_answer_tune_flower_appeared.append(
                            float(dict[i].get("Descision TIme[ms]"))*(1.0*(10**-9)))
            else:
                if float(dict[i].get("Descision TIme[ms]")) > 0 and (float(dict[i].get("Descision TIme[ms]"))) < 999999999999999999:
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
                "Average decision time in a correct answer when the arrow was above the star": Averages_decision_time_for_correct_answer_above,
                "Average decision time in a correct answer when the arrow was below the star": Averages_decision_time_for_wrong_answer_below,
                "Average decision time in a correct answer when a tune or flower appeared before the arrow": Averages_decision_time_for_correct_answer_appeared,
                "Average decision time in a correct answer when a tune or flower not appeared before the arrow": Averages_decision_time_for_wrong_answer_not_appeared}
        Df = pd.DataFrame(data)
        Df.to_csv("assets/Data/Third exam.csv")
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
        seven_eight_correct_answer_arrow_above_star = []

        five_six_correct_answer_arrow_below_star = []
        six_seven_correct_answer_arrow_below_star = []
        seven_eight_correct_answer_arrow_below_star = []

        five_six_correct_answer_tune_flower_appeared = []
        six_seven_correct_answer_tune_flower_appeared = []
        seven_eight_correct_answer_tune_flower_appeared = []

        five_six_correct_answer_tune_flower_not_appeared = []
        six_seven_correct_answer_tune_flower_not_appeared = []
        seven_eight_correct_answer_tune_flower_not_appeared = []

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
        boys_avg_below_arrow = 0 if boys_correct_answer_arrow_below_star == [
        ] else np.average(boys_correct_answer_arrow_below_star)
        boys_avg_appeared = 0 if boys_correct_answer_tune_flower_appeared == [
        ] else np.average(boys_correct_answer_tune_flower_appeared)
        boys_avg_not_appeared = 0 if boys_correct_answer_tune_flower_not_appeared == [
        ] else np.average(boys_correct_answer_tune_flower_not_appeared)
        girls_avg_above_arrow = 0 if girls_correct_answer_arrow_above_star == [
        ] else np.average(girls_correct_answer_arrow_above_star)
        girls_avg_below_arrow = 0 if girls_correct_answer_arrow_below_star == [
        ] else np.average(girls_correct_answer_arrow_below_star)
        girls_avg_appeared = 0 if girls_correct_answer_tune_flower_appeared == [
        ] else np.average(girls_correct_answer_tune_flower_appeared)
        girls_avg_not_appeared = 0 if girls_correct_answer_tune_flower_not_appeared == [
        ] else np.average(girls_correct_answer_tune_flower_not_appeared)

        boys_girls = [boys_avg_above_arrow, boys_avg_below_arrow, boys_avg_appeared, boys_avg_not_appeared,
                      girls_avg_above_arrow, girls_avg_below_arrow, girls_avg_appeared, girls_avg_not_appeared]

        # Right Left

        for j in range(len(dict)):
            if (dict[j].get("Right-handed?") == "TRUE") or (dict[j].get("Right-handed?") == "True"):
                right_handed_correct_answer_arrow_above_star.append(
                    float(dict[j].get("Average decision time in a correct answer when the arrow was above the star")))
                right_handed_correct_answer_arrow_below_star.append(
                    float(dict[j].get("Average decision time in a correct answer when the arrow was below the star")))
                right_handed_correct_answer_tune_flower_appeared.append(
                    float(dict[j].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                right_handed_correct_answer_tune_flower_not_appeared.append(
                    float(dict[j].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))
            else:
                left_handed_correct_answer_arrow_above_star.append(
                    float(dict[j].get("Average decision time in a correct answer when the arrow was above the star")))
                left_handed_correct_answer_arrow_below_star.append(
                    float(dict[j].get("Average decision time in a correct answer when the arrow was below the star")))
                left_handed_correct_answer_tune_flower_appeared.append(
                    float(dict[j].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                left_handed_correct_answer_tune_flower_not_appeared.append(
                    float(dict[j].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))

        right_avg_above_arrow = 0 if right_handed_correct_answer_arrow_above_star == [
        ] else np.average(right_handed_correct_answer_arrow_above_star)
        right_avg_below_arrow = 0 if boys_correct_answer_arrow_below_star == [
        ] else np.average(right_handed_correct_answer_arrow_below_star)
        right_avg_appeared = 0 if right_handed_correct_answer_tune_flower_appeared == [
        ] else np.average(right_handed_correct_answer_tune_flower_appeared)
        right_avg_not_appeared = 0 if right_handed_correct_answer_tune_flower_not_appeared == [
        ] else np.average(right_handed_correct_answer_tune_flower_not_appeared)
        left_avg_above_arrow = 0 if left_handed_correct_answer_arrow_above_star == [
        ] else np.average(left_handed_correct_answer_arrow_above_star)
        left_avg_below_arrow = 0 if left_handed_correct_answer_arrow_below_star == [
        ] else np.average(left_handed_correct_answer_arrow_below_star)
        left_avg_appeared = 0 if left_handed_correct_answer_tune_flower_appeared == [
        ] else np.average(left_handed_correct_answer_tune_flower_appeared)
        left_avg_not_appeared = 0 if left_handed_correct_answer_tune_flower_not_appeared == [
        ] else np.average(left_handed_correct_answer_tune_flower_not_appeared)

        rightLeftHanded = [right_avg_above_arrow, right_avg_below_arrow, right_avg_appeared, right_avg_not_appeared,
                           left_avg_above_arrow, left_avg_below_arrow, left_avg_appeared, left_avg_not_appeared]
        # Ages
        for k in range(len(dict)):
            if (dict[k].get("Age") == "5.1") or (dict[k].get("Age") == "5.11") or (dict[k].get("Age") == "5.5") or (dict[k].get("Age") == "5.6") or (dict[k].get("Age") == "5.7") or (dict[k].get("Age") == "5.8") or (dict[k].get("Age") == "5.9") or (dict[k].get("Age") == "6"):
                five_six_correct_answer_arrow_above_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was above the star")))
                five_six_correct_answer_arrow_below_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was below the star")))
                five_six_correct_answer_tune_flower_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                five_six_correct_answer_tune_flower_not_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))
            if (dict[k].get("Age")) == "6.1" or (dict[k].get("Age")) == "6.2" or (dict[k].get("Age")) == "6.3" or (dict[k].get("Age")) == "6.4" or (dict[k].get("Age")) == "6.5" or (dict[k].get("Age")) == "6.6" or (dict[k].get("Age")) == "6.8" or (dict[k].get("Age")) == "7":
                six_seven_correct_answer_arrow_above_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was above the star")))
                six_seven_correct_answer_arrow_below_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was below the star")))
                six_seven_correct_answer_tune_flower_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                six_seven_correct_answer_tune_flower_not_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))
            if (dict[k].get("Age")) == "7.1" or (dict[k].get("Age")) == "7.2" or (dict[k].get("Age")) == "7.3" or (dict[k].get("Age")) == "7.5" or (dict[k].get("Age")) == "7.6":
                seven_eight_correct_answer_arrow_above_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was above the star")))
                seven_eight_correct_answer_arrow_below_star.append(
                    float(dict[k].get("Average decision time in a correct answer when the arrow was below the star")))
                seven_eight_correct_answer_tune_flower_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower appeared before the arrow")))
                seven_eight_correct_answer_tune_flower_not_appeared.append(
                    float(dict[k].get("Average decision time in a correct answer when a tune or flower not appeared before the arrow")))

        five_six_correct_answer_arrow_above_star_avg = 0 if five_six_correct_answer_arrow_above_star == [
        ] else np.average(five_six_correct_answer_arrow_above_star)
        six_seven_correct_answer_arrow_above_star_avg = 0 if six_seven_correct_answer_arrow_above_star == [
        ] else np.average(six_seven_correct_answer_arrow_above_star)
        seven_eight_correct_answer_arrow_above_star_avg = 0 if seven_eight_correct_answer_arrow_above_star == 0 else np.average(
            seven_eight_correct_answer_arrow_above_star)

        five_six_correct_answer_arrow_below_star_avg = 0 if five_six_correct_answer_arrow_below_star == [
        ] else np.average(five_six_correct_answer_arrow_below_star)
        six_seven_correct_answer_arrow_below_star_avg = 0 if six_seven_correct_answer_arrow_below_star == [
        ] else np.average(six_seven_correct_answer_arrow_below_star)
        seven_eight_correct_answer_arrow_below_star_avg = 0 if seven_eight_correct_answer_arrow_below_star == [
        ] else np.average(seven_eight_correct_answer_arrow_below_star)

        five_six_correct_answer_tune_flower_appeared_avg = 0 if five_six_correct_answer_tune_flower_appeared == [
        ] else np.average(five_six_correct_answer_tune_flower_appeared)
        six_seven_correct_answer_tune_flower_appeared_avg = 0 if six_seven_correct_answer_tune_flower_appeared == [
        ] else np.average(six_seven_correct_answer_tune_flower_appeared)
        seven_eight_correct_answer_tune_flower_appeared_avg = 0 if seven_eight_correct_answer_tune_flower_appeared == [
        ] else np.average(seven_eight_correct_answer_tune_flower_appeared)

        five_six_correct_answer_tune_flower_not_appeared_avg = 0 if five_six_correct_answer_tune_flower_not_appeared == [
        ] else np.average(five_six_correct_answer_tune_flower_not_appeared)
        six_seven_correct_answer_tune_flower_not_appeared_avg = 0 if six_seven_correct_answer_tune_flower_not_appeared == [
        ] else np.average(six_seven_correct_answer_tune_flower_not_appeared)
        seven_eight_correct_answer_tune_flower_not_appeared_avg = 0 if seven_eight_correct_answer_tune_flower_not_appeared == [
        ] else np.average(seven_eight_correct_answer_tune_flower_not_appeared)

        ages = [five_six_correct_answer_arrow_above_star_avg, five_six_correct_answer_arrow_below_star_avg, five_six_correct_answer_tune_flower_appeared_avg, five_six_correct_answer_tune_flower_not_appeared_avg,
                six_seven_correct_answer_arrow_above_star_avg, six_seven_correct_answer_arrow_below_star_avg, six_seven_correct_answer_tune_flower_appeared_avg, six_seven_correct_answer_tune_flower_not_appeared_avg,
                seven_eight_correct_answer_arrow_above_star_avg, seven_eight_correct_answer_arrow_below_star_avg, seven_eight_correct_answer_tune_flower_appeared_avg, seven_eight_correct_answer_tune_flower_not_appeared_avg,
                ]

        return boys_girls, rightLeftHanded, ages

    # plot findings
    def plot(self, filename):
        boys_girls, right_left, ages = self.analyze_data(filename)

        # Boys Girls above below
        A1 = ['Average decision time of correct answers boys',
              'Average decision time of correct answers girls']
        dictA1 = {
            "Above star": [boys_girls[0], boys_girls[4]],
            "Below star": [boys_girls[1], boys_girls[5]]
        }
        A1_axis = np.arange(len(A1))
        mul1 = 0
        fig1, ax1 = plt.subplots(layout='constrained')
        for i, j in dictA1.items():
            temp1 = 0.25*mul1
            temp2 = ax1.bar(A1_axis+temp1, j, 0.25, label=i)
            ax1.bar_label(temp2, padding=3)
            mul1 += 1
        ax1.set_ylabel('Average decision time in correct answer [s]')
        ax1.set_title('Comparison between boys and girls')
        ax1.set_xticks(A1_axis + 0.25, A1)
        ax1.legend(loc='upper right', ncols=2)
        plt.show()

        # Boys Girls appeared not appeared
        A2 = ['Average decision time of correct answers boys',
              'Average decision time of correct answers girls']
        dictA2 = {
            "Tone \ flower appeared": [boys_girls[2], boys_girls[6]],
            "Tone \ flower not appeared": [boys_girls[3], boys_girls[7]]
        }
        A2_axis = np.arange(len(A2))
        mul2 = 0
        fig2, ax2 = plt.subplots(layout='constrained')
        for i, j in dictA2.items():
            temp1 = 0.25*mul2
            temp2 = ax2.bar(A2_axis+temp1, j, 0.25, label=i)
            ax2.bar_label(temp2, padding=3)
            mul2 += 1
        ax2.set_ylabel('Average decision time in correct answer [s]')
        ax2.set_title('Comparison between boys and girls')
        ax2.set_xticks(A2_axis + 0.25, A2)
        ax2.legend(loc='upper right', ncols=2)
        plt.show()

        # Right left above below
        B1 = ['Average decision time of correct answers right handed',
              'Average decision time of correct answers left handed']
        dictB1 = {
            "Above star": [right_left[0], right_left[4]],
            "Below star": [right_left[1], right_left[5]]
        }
        B1_axis = np.arange(len(B1))
        mul3 = 0
        fig3, ax3 = plt.subplots(layout='constrained')
        for i, j in dictB1.items():
            temp1 = 0.25*mul3
            temp2 = ax3.bar(B1_axis+temp1, j, 0.25, label=i)
            ax3.bar_label(temp2, padding=3)
            mul3 += 1
        ax3.set_ylabel('Average decision time in correct answer [s]')
        ax3.set_title('Comparison between right handed and left handed')
        ax3.set_xticks(B1_axis + 0.25, B1)
        ax3.legend(loc='upper right', ncols=2)
        plt.show()

        # Right left appeared not appeared
        B2 = ['Average decision time of correct answers right handed',
              'Average decision time of correct answers left handed']
        dictB2 = {
            "Tone \ flower appeared": [right_left[2], right_left[6]],
            "Tone \ flower not appeared": [right_left[3], right_left[7]]
        }
        B2_axis = np.arange(len(B2))
        mul4 = 0
        fig4, ax4 = plt.subplots(layout='constrained')
        for i, j in dictB2.items():
            temp1 = 0.25*mul4
            temp2 = ax4.bar(B2_axis+temp1, j, 0.25, label=i)
            ax4.bar_label(temp2, padding=3)
            mul4 += 1
        ax4.set_ylabel('Average decision time in correct answer [s]')
        ax4.set_title('Comparison between right handed and left handed')
        ax4.set_xticks(B2_axis + 0.25, B2)
        ax4.legend(loc='upper right', ncols=2)
        plt.show()

        # Ages below above
        C1 = ['5-6 years old', '6-7 years old', '7-8 years old']
        dictC1 = {
            "Above star": [ages[0], ages[4], ages[8]],
            "Below star": [ages[1], ages[5], ages[9]]
        }
        C1_axis = np.arange(len(C1))
        mul5 = 0
        fig5, ax5 = plt.subplots(layout='constrained')
        for i, j in dictC1.items():
            temp1 = 0.25*mul5
            temp2 = ax5.bar(C1_axis+temp1, j, 0.25, label=i)
            ax5.bar_label(temp2, padding=3)
            mul5 += 1
        ax5.set_ylabel('Average decision time in correct answer [s]')
        ax5.set_title('Comparison between age ranges')
        ax5.set_xticks(C1_axis + 0.25, C1)
        ax5.legend(loc='upper right', ncols=2)
        plt.show()

        # Ages appeared not appeared
        C2 = ['5-6 years old', '6-7 years old', '7-8 years old']
        dictC2 = {
            "Tone \ flower appeared": [ages[2], ages[6], ages[10]],
            "Tone \ flower not appeared": [ages[3], ages[7], ages[11]]
        }
        C2_axis = np.arange(len(C2))
        mul6 = 0
        fig6, ax6 = plt.subplots(layout='constrained')
        for i, j in dictC2.items():
            temp1 = 0.25*mul6
            temp2 = ax6.bar(C2_axis+temp1, j, 0.25, label=i)
            ax6.bar_label(temp2, padding=3)
            mul6 += 1
        ax6.set_ylabel('Average decision time in correct answer [s]')
        ax6.set_title('Comparison between age ranges')
        ax6.set_xticks(C2_axis + 0.25, C2)
        ax6.legend(loc='upper right', ncols=2)
        plt.show()


A = ThirdExamAnalysis()
A.create_table("assets/Data/third exam/")
A.plot("assets/Data/Third exam.csv")
