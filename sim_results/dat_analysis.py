import numpy as np
import pandas as pd
import string
import csv
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d
from pixelization import Det
X_global=np.array([1,0,0])
Y_global=np.array([0,1,0])
Z_global=np.array([0,0,1])
Sca=Det(np.array([0,0,-11.975]), X_global, Y_global, "scatterer")
f_name="comp_hits_all.csv"
comp_data=[i.split() for i in open("/media/pranav/page/Project_Daksha/MEGALIB_PARAM/megalib/First_Second_Interaction_Coords.dat").readlines()]
cols=[["X1", "Y1", "Z1","E1", "X2", "Y2", "Z2", "E2"]]
print("comp data read")
with open(f_name, "w") as f:
    writer=csv.writer(f)
    writer.writerows(cols)
    writer.writerows(comp_data)
df=pd.read_csv(f_name)
print("Reading file")
#First hit in Scatterer
comp_count=0
total_count=0
#scatterer_count=0
#abs_count=np.zeros(6, dtype=int)
print("Total number of Compton events : {}".format(len(df)))
df=df[(df['Z1']==-11.975)]
'''theta_deg=np.degrees(np.arccos(df['Z2']/(np.sqrt(df['X2']**2+df['Y2']**2+df['Z2']**2))))
df["theta_deg"]=theta_deg
print(df.head())
print("\t Events with first hit in CZT plate : {}".format(len(df)))'''
print(len(df))
df.to_csv("comp_hits.csv")


        #if(row['ID']%100==0):
            #ax.scatter3D(row['X2'], row['Y2'], row['Z2'], color='g')

'''
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
'''
