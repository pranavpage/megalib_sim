#pix_compton.py
import numpy as np
from numpy.core.fromnumeric import sort
import pandas as pd
pd.options.mode.chained_assignment = None
from pixelization import Det 
import os
htag="default_1e6"
print(os.getcwd())
comp_hits_file='comp_hits_{}.csv'.format(htag)
comp_hits_all=pd.read_csv(comp_hits_file)
if(not os.path.isdir(htag)):
    os.mkdir("{}".format(htag))
os.chdir(htag)
cfname=comp_hits_file.split(".")[0]
print(comp_hits_all.head())
X_global=np.array([1,0,0])
Y_global=np.array([0,1,0])
Z_global=np.array([0,0,1])
Sca=Det(np.array([0,0,-11.975]), X_global, Y_global, "scatterer")
print(Sca)
Abs1=Det(np.array([-26.975, 0, -12.847]), Y_global, Z_global, "abs1")
Abs2=Det(np.array([-26.975, 0, 12.847]), Y_global, Z_global, "abs2")
Abs3=Det(np.array([-5, 0, 11.975]), X_global, Y_global, "abs3")
Abs4=Det(np.array([5, 0, 11.975]), X_global, Y_global, "abs4")
Abs5=Det(np.array([-5, -11.975, 0]), X_global, Z_global, "abs5")
Abs6=Det(np.array([-5, 11.975, 0]), X_global, Z_global, "abs6")
all_dets=[Abs1,Abs2,Abs3,Abs4,Abs5,Abs6]
det_nums=[2,5]
det_list=[all_dets[i-1] for i in det_nums]
for det in det_list:
    print(det)
diff_count=0
for index,hit in comp_hits_all.iterrows():
    sca_pixnum=Sca.pixel_number_of(np.array([hit['X1'], hit['Y1'], hit['Z1']]))
    if(sca_pixnum>-1):
        #first interaction in Scatterer
        for det in det_list:
            det_pixnum=det.pixel_number_of(np.array([hit['X2'], hit['Y2'], hit['Z2']]))
            if(det_pixnum>-1):
                #second interaction in det_list
                det.hits.append(index)
                det.pixnum.append(det_pixnum)
                det.sca_pixnum.append(sca_pixnum)
                diff_count+=1
    print("{}/{}".format(index, len(comp_hits_all)), end='\r')
main_df=pd.DataFrame(columns=['X1', 'Y1', 'Z1', 'E1', 'X2', 'Y2', 'Z2', 'E2', 'P1', 'P2'])
tag=""
print("Total Compton events : {}".format(len(comp_hits_all)))
print("Events with first hit in Scatterer and second hit not in Scatterer : {}".format(diff_count))
for det in det_list:
    det.df=comp_hits_all.iloc[det.hits]
    det.df['P1']=det.sca_pixnum
    det.df['P2']=det.pixnum
    main_df=main_df.append(det.df, sort=True)
    tag+="_"+det.id
    print("\t For {}, Number of Compton events : {}".format(det.id, len(det.df)))
    #det.df.to_csv("{}_{}.csv".format(cfname, det.id))
#Sca.df.to_csv("{}_{}.csv".format(cfname, tag))
main_df.to_csv("{}_in{}.csv".format(cfname, tag))