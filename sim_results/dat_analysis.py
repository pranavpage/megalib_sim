import numpy as np
import pandas as pd
import string
import csv
comp_data=[i.split() for i in open("First_Second_Interaction_Coords.dat").readlines()]
cols=[["ID", "X1", "Y1", "Z1", "X2", "Y2", "Z2"]]
with open("comp_positions.csv", "wb") as f:
    writer=csv.writer(f)
    writer.writerows(cols)
    writer.writerows(comp_data)

df=pd.read_csv("comp_positions.csv")
#First hit in Scatterer
comp_count=0
total_count=0
scatterer_count=0
abs_count=np.zeros(6, dtype=int)
for index, row in df.iterrows():
    if(row['Z1']==-11.975):
        scatterer_count+=1
        if(row['Z2']!=-11.975):
            comp_count+=1
            if(row['X2']==-26.975):
                if(row['Z2']>0):
                    abs_count[1]+=1
                else:
                    abs_count[0]+=1
            if(row['Z2']==11.975):
                if(row['X2']>0):
                    abs_count[3]+=1
                else:
                    abs_count[2]+=1
            if(row['Y2']==-11.975):
                abs_count[4]+=1
            elif(row['Y2']==11.975):
                abs_count[5]+=1

    total_count+=1
print("Total Compton events : {}".format(total_count))
print("Events with first hit in Scatterer : {}".format(scatterer_count))
print("\t Events with first hit in Scatterer and second hit in one of the Absorbers : {}".format(comp_count))
for i in range(6):
    print("\t Second hit in Absorber {} : {}".format(i+1, abs_count[i]))
