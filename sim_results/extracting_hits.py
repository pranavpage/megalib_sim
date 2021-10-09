from itertools import islice
from os import read
import pandas as pd
import argparse
parser=argparse.ArgumentParser()
parser.add_argument("file", help=".sim file")
parser.add_argument("output", help="path of output .csv file with all hits")
args=parser.parse_args()
f=open("../../{}".format(args.file), 'r')
n=100
read_ti_ht=False
htc=0
tic=0
events=[]
for ln in f:
    if(ln.startswith("SE")):
        c_event=[]
        read_ti_ht=True
    if(ln.startswith("TI") and read_ti_ht):
        ti=ln.split()[-1]
        ti=float(ti)
        c_event.append(ti)
        tic+=1
    if(ln.startswith("HT") and read_ti_ht):
        htc+=1
        hit_data=ln.split(";")[1:5]
        hit_data=[float(i) for i in hit_data]
        c_event+=hit_data
        events.append(c_event)
        read_ti_ht=False
cols=["index", "timestamp", "X", "Y", "Z", "energy_deposit"]
df=pd.DataFrame(events, columns=cols)
df.to_csv("{}".format(args.output))