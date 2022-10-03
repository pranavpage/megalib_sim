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
comp_count=0
total_count=0
print("Total number of Compton events : {}".format(len(df)))
df=df[(df['Z1']==-11.975) & (df['Z2']!=-11.975) ]
print(len(df))
df.to_csv("/media/pranav/page/Project_Daksha/MEGALIB_PARAM/megalib/mycodes/sim_results/comp_hits_confirm_200keV_1e6.csv")
