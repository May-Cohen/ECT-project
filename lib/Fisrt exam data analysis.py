import string
import pandas as pd
import numpy as np
import csv
import os
from os import listdir

class FirstExamAnalysis:

    # crete list of the files names
    def file_names(self,folder):
        list = []
        for file in os.listdir(folder):
            list.append(file)
        return list

    # crete dict from the csv files
    def import_data(self,file:str):
        with open(file, 'r') as info:
            temp = csv.DictReader(info)
            dict = list(temp)  
        return dict 
    
    # save personal data of one participant
    def personal_info(self,file:str):
        dict = self.import_data(file)
        name = dict[0].get("Name")
        genderTemp = dict[0].get("Is Boy?")
        if (genderTemp=="TRUE"):
            gender = "Boy"
        else:
            gender = "Girl"
        right_handed = dict[0].get("Is Right?")
        age = dict[0].get("Age")
        return name,gender,right_handed,age

    # calculate data for one file of one participant
    def calculate_data(self,file:str):
        dict = self.import_data(file)
        Arrow_move_times_correct_ans = []
        Arrow_move_times_wrong_ans = []
        Arrow_decision_times_correct_ans = []
        Arrow_decision_times_wrong_ans = []
        Color_move_times_correct_ans = []
        Color_move_times_wrong_ans = []
        Color_decision_times_correct_ans = []
        Color_decision_times_wrong_ans = []
        for i in range(len(dict)):
            if dict[i].get("Task_N")=="Arrow":
                if dict[i].get("Is  Circle Right?")==1:
                    Arrow_move_times_correct_ans.append(float(dict[i].get("Move Time[ms]")))
                    Arrow_decision_times_correct_ans.append(float(dict[i].get("Descision TIme[ms]")))
                else:
                    Arrow_move_times_wrong_ans.append(float(dict[i].get("Move Time[ms]")))
                    Arrow_decision_times_wrong_ans.append(float(dict[i].get("Descision TIme[ms]")))
            if dict[i].get("Task_N")=="Color":
                if dict[i].get("Is  Circle Right?")==1:
                    Color_move_times_correct_ans.append(float(dict[i].get("Move Time[ms]")))
                    Color_decision_times_correct_ans.append(float(dict[i].get("Descision TIme[ms]")))
                else:
                    Color_move_times_wrong_ans.append(float(dict[i].get("Move Time[ms]")))
                    Color_decision_times_wrong_ans.append(float(dict[i].get("Descision TIme[ms]")))
        Average_move_times_in_correct_answer_for_arrow_task = 0 if Arrow_move_times_correct_ans==[] else np.average(Arrow_move_times_correct_ans)
        Average_move_times_in_wrong_answer_for_arrow_task = 0 if Arrow_move_times_wrong_ans==[] else np.average(Arrow_move_times_wrong_ans)
        Average_decision_time_in_correct_answer_for_arrow_task = 0 if Arrow_decision_times_correct_ans==[] else np.average(Arrow_decision_times_correct_ans)
        Average_decision_time_in_wrong_answer_for_arrow_task = 0 if Arrow_decision_times_wrong_ans==[] else np.average(Arrow_decision_times_wrong_ans)
        Average_move_times_in_correct_answer_for_color_task = 0 if Color_move_times_correct_ans==[] else np.average(Color_move_times_correct_ans)
        Average_move_times_in_wrong_answer_for_color_task = 0 if Color_move_times_wrong_ans==[] else np.average(Color_move_times_wrong_ans)
        Average_decision_time_in_correct_answer_for_color_task = 0 if Color_decision_times_correct_ans==[] else np.average(Color_decision_times_correct_ans)
        Average_decision_time_in_wrong_answer_for_color_task = 0 if Color_decision_times_wrong_ans==[] else np.average(Color_decision_times_wrong_ans)
        # calculate 
        Average_speed_in_wrong_answer_for_color_task = 0
        Average_speed_in_correct_answer_for_color_task = 0
        Average_speed_in_wrong_answer_for_arrow_task = 0
        Average_speed_in_wrong_answer_for_correct_task = 0
        return Average_move_times_in_correct_answer_for_arrow_task,Average_move_times_in_wrong_answer_for_arrow_task,Average_decision_time_in_correct_answer_for_arrow_task,Average_decision_time_in_wrong_answer_for_arrow_task,Average_move_times_in_correct_answer_for_color_task,Average_move_times_in_wrong_answer_for_color_task,Average_decision_time_in_correct_answer_for_color_task,Average_decision_time_in_wrong_answer_for_color_task
    
    # create one table of all participants
    def create_table(self,folder):
        files_names = self.file_names(folder)
        names = []
        genders = []
        handed = []
        ages = []
        avg1s = []
        avg2s = []
        avg3s = []
        avg4s = []
        avg5s = [] 
        avg6s = []
        avg7s = []
        avg8s = []
        for file_name in files_names:
            name,gender,right_handed,age = self.personal_info(folder+file_name)
            avg1,avg2,avg3,avg4,avg5,avg6,avg7,avg8=self.calculate_data(folder+file_name)
            names.append(name)
            genders.append(gender)
            handed.append(right_handed)
            ages.append(age)
            avg1s.append(avg1)
            avg2s.append(avg2)
            avg3s.append(avg3)
            avg4s.append(avg4)
            avg5s.append(avg5) 
            avg6s.append(avg6)
            avg7s.append(avg7)
            avg8s.append(avg8)
        data = {"Name":names,
                "Gender":genders,
                "Right-handed?":handed,
                "Age":ages,
                "Average move times in a correct answer for arrow task":avg1s,
                "Average move times in a wrong answer for arrow task":avg2s,
                "Average decision time in a correct answer for arrow task":avg3s,
                "Average decision time in a wrong answer for arrow task":avg4s,
                "Average move times in a correct answer for color task":avg5s,
                "Average move times in a wrong answer for color task":avg6s,
                "Average decision time in a correct answer for color task":avg7s,
                "Average decision time in a wrong answer for color task":avg8s}
        Df = pd.DataFrame(data)
        Df.to_csv("First exam.csv")


A = FirstExamAnalysis()
A.create_table("assets/Data/first exam/")


    

