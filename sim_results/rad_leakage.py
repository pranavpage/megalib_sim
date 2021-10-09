from itertools import islice
from os import read
import pandas as pd
import argparse
import numpy as np
import matplotlib.pyplot as plt
parser=argparse.ArgumentParser()
parser.add_argument("file", help=".sim file")
args=parser.parse_args()
f=open("../../{}".format(args.file), 'r')
energies=[]
positions=[]
#XY
for ln in f:
    if(ln.startswith("IA EXIT")):
        row=ln.split(";")
        positions.append([float(row[4]), float(row[6])])
        energies.append(float(row[14]))
positions=np.array(positions)
plt.hist(energies, bins=20)
plt.xlabel("Energy (keV)")
plt.ylabel("Counts")
plt.savefig(args.file+"_spectrum.png")
plt.clf()
plt.hist2d(positions[:, 0], positions[:, 1], bins=(40, 20))
plt.xlabel("X (cm)")
plt.ylabel("Z (cm)")
plt.colorbar()
plt.savefig(args.file+"_spatial.png")
plt.clf()
f=open("log.txt", "a")
f.write(args.file +" "+ str(np.mean(energies)) +" "+ str(len(energies)) + "\n")
