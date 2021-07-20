import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
class Det:
    def __init__(self, det_pos_vec, det_face_vec, id):
#det_pos_vec is the centre of the CZT crystal
#det_face_vec is the vector normal to the CZT crystal
        self.det_pos_vec=det_pos_vec
        self.det_face_vec=det_face_vec
        self.id=id
        self.face_centre_vec=self.det_pos_vec
        self.hits=[]

def hit_in_det(det_list, hit):
    for det in det_list:
        fc_vec=det.face_centre_vec
        hit_vec=np.array([hit['X'], hit['Y'], hit['Z']])-fc_vec
        dist_from_face_centre=np.linalg.norm(hit_vec)
        if(dist_from_face_centre<=2.7619 and np.dot(hit_vec, det.det_face_vec)==0):
            det.hits.append(hit)
            break
            #print("Hit in {}\n".format(det.id))
def main():
    names_c=["time", "X", "Y", "Z", "num_X", "num_Y", "energy"]
    hits=pd.read_csv("./sim_results/Voxel3d_hits.csv", names=["time", "X", "Y", "Z", "num_X", "num_Y", "energy"])
    total_hits=len(hits)
    Sca=Det(np.array([0, 0, -11.975]), np.array([0, 0, 1]), "Scatterer")
    Abs1=Det(np.array([-26.975, 0, -12.847]), np.array([1, 0, 0]), "Absorber 1")
    Abs2=Det(np.array([-26.975, 0, +12.847]), np.array([1, 0, 0]), "Absorber 2")
    Abs3=Det(np.array([-5, 0, 11.975]), np.array([0, 0, -1]), "Absorber 3")
    Abs4=Det(np.array([5, 0, 11.975]), np.array([0, 0, -1]), "Absorber 4")
    Abs5=Det(np.array([-5, -11.975, 0]), np.array([0, 1, 0]), "Absorber 5")
    Abs6=Det(np.array([-5, 11.975, 0]), np.array([0, -1, -0]), "Absorber 6")
    det_list=[Sca, Abs1, Abs2, Abs3, Abs4, Abs5, Abs6]
#    print(hit_in_det(det_list, hits.iloc[1]), hits.iloc[1])
    for index, hit in hits.iterrows():
        hit_in_det(det_list, hit)
    for det in det_list:
        det.hits=pd.DataFrame(det.hits, columns=names_c)
        print(det.id, len(det.hits))
    print("Total hits : {}".format(total_hits))
main()
