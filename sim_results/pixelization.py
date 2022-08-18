import pandas as pd
import numpy as np
class Det:
    def __init__(self, center, x, y, id):
        self.center=center
        self.x=x
        self.y=y
        self.id=id
        self.origin=center-(7*0.246+1*0.231)*self.x - (7*0.246+1*0.231)*self.y 
        pixel_matrix=np.array([[[None,None,None]]*16]*16)
        pm_x=np.array([[0.246]*16]*16)
        pm_x[:,0]=0.231
        pm_x[:,-1]=0.231
        pm_y=np.array([[0.246]*16]*16)
        pm_y[0, :]=0.231
        pm_y[-1,:]=0.231
        for i in range(16):
            #ith row
            for j in range(16):
                #jth col
                pixel_matrix[i,j]=np.round(self.origin+self.x*(np.sum(pm_x[i, 0:j])+pm_x[i,j]/2)+self.y*(np.sum(pm_y[0:i,j])+pm_y[i,j]/2), 4)
        self.pixel_matrix=pixel_matrix
        self.hits=[]
        self.pixnum=[]
        self.df=pd.DataFrame(columns=["timestamp", "X", "Y", "Z", "energy_deposit"])
        self.sca_pixnum=[]
    def pixel_number_of(self, hit):
        pixnum=-1
        for i in range(16):
            for j in range(16):
                if(np.array_equal(self.pixel_matrix[i,j], np.round(hit, 4))):
                    pixnum=i*16+j
        return pixnum
    def __repr__(self):
        return "{} at {} with x-axis {} and y-axis {}\n ".format(self.id, self.center, self.x, self.y )
if __name__=="__main__":
    hits_all_df=pd.read_csv("hits_all.csv", index_col=0)
    new_cols=["timestamp", "X", "Y", "Z", "energy_deposit", "pixel_number"]
    X_global=np.array([1,0,0])
    Y_global=np.array([0,1,0])
    Z_global=np.array([0,0,1])
    Sca=Det(np.array([0,0,-11.975]), X_global, Y_global, "scatterer")
    print(Sca)
    Abs1=Det(np.array([-26.975, 0, -12.847]), Y_global, Z_global, "abs_1")
    print(Abs1)
    det_list=[Sca, Abs1]
    for det in det_list:
        for index, hit in hits_all_df.iterrows():
            pixnum=det.pixel_number_of(np.array([hit['X'], hit['Y'], hit['Z']]))
            if(pixnum>-1):
                det.hits.append(index)
                det.pixnum.append(pixnum)
        det.df=hits_all_df.iloc[det.hits]
        print(det.df)
        det.df["pix_num"]=det.pixnum
        print(det.df)
        det.df.to_csv("hits_in_{}.csv".format(det.id))