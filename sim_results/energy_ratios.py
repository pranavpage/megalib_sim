import numpy as np
import cv2
import time
import os
from scipy.constants import c, physical_constants
import matplotlib.pyplot as plt
import pandas as pd
cols=["X1", "Y1", "Z1","E1", "X2", "Y2", "Z2", "E2", "P1", "P2"]
htag="default_high"
tag=htag+"_in"
det_nums=[6]
os.chdir(htag)
hits=pd.DataFrame(columns=cols)
for det_num in det_nums:
    print("comp_hits_{}_abs{}.csv".format(htag,det_num))
    hits=hits.append(pd.read_csv("comp_hits_{}_abs{}.csv".format(htag,det_num)) ,sort=True)
    tag+="_abs{}".format(det_num)
if(not os.path.isdir("bp_{}".format(tag))):
    os.mkdir("bp_{}".format(tag))
os.chdir("bp_{}".format(tag))
energy_ratio = []
for index, hit in hits.iterrows():
    energy_ratio.append(hit['E2']/hit['E1'])
plt.hist(energy_ratio, bins='auto')
plt.title(tag)
plt.xlabel("Energy ratio (First/Second)")
plt.ylabel("Number of events")
plt.savefig("energy_ratio_hist_{}.png".format(tag))
plt.show()