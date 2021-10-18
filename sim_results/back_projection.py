#back_projection.py
import numpy as np
import cv2
import time
import os
from scipy.constants import c, physical_constants
import matplotlib.pyplot as plt
cols=["X1", "Y1", "Z1","E1", "X2", "Y2", "Z2", "E2"]
tag = "rec_40"
fname="comp_hits_{}.csv".format(tag)
import pandas as pd
theta_bins=180
phi_bins=360
degrees_step=20
theta_step=degrees_step/(180/theta_bins)
phi_step=degrees_step/(360/phi_bins)
hits=pd.read_csv(fname)
im_array=np.zeros((theta_bins, phi_bins))
plt.rcParams["figure.figsize"]=(9,8)
os.mkdir("bp_{}".format(tag))
os.chdir("bp_{}".format(tag))
for index, hit in hits.iterrows():
    dir_vec=-np.array([hit['X2']-hit['X1'], hit['Y2']-hit['Y1'], hit['Z2']-hit['Z1']])
    dir_vec/=np.linalg.norm(dir_vec)
    #print(dir_vec)
    #arctan2() instead of arctan()
    theta_cc=(np.arctan2(np.sqrt(dir_vec[0]**2+dir_vec[1]**2), dir_vec[2]))
    #print(theta_cc)
    phi_cc=np.arctan2(dir_vec[1], dir_vec[0])
    #print(phi_cc)
    Ee=hit['E1']/(physical_constants['electron mass energy equivalent in MeV'][0]*1e+3)
    Eg=hit['E2']/(physical_constants['electron mass energy equivalent in MeV'][0]*1e+3)
    t_val=1-(1/Eg-1/(Ee+Eg))
    if(np.abs(t_val)<1):
        delta_sc=np.arccos(t_val)
        #print(delta_sc)
        if(theta_cc-delta_sc<0):
            theta_min=0
            phi_min=-np.pi
            phi_max=np.pi
        else:
            theta_min=max(theta_cc-delta_sc, 0)    
        if(theta_cc+delta_sc>np.pi):
            theta_max=np.pi
            phi_min=-np.pi
            phi_max=np.pi
        else:
            theta_max=min(theta_cc+delta_sc, np.pi)
        if(theta_cc-delta_sc>=0 and theta_cc+delta_sc<=np.pi):
            phi_min=max(phi_cc-delta_sc, -np.pi)
            phi_max=min(phi_cc+delta_sc,  np.pi)

        theta_bin_min=int(theta_min/np.pi*theta_bins)
        theta_bin_max=min(int(theta_max/np.pi*theta_bins)+1, theta_bins)
        
        phi_bin_min=int((phi_min+np.pi)/(2*np.pi)*phi_bins)
        phi_bin_max=min(int((phi_max+np.pi)/(2*np.pi)*phi_bins)+1, phi_bins)
        tol=np.abs(np.arccos(np.cos(np.pi/(theta_bins))*np.cos(2*np.pi/(phi_bins)))/2)
        #print(theta_bin_min, theta_bin_max, phi_bin_min ,phi_bin_max)
        for i in range(theta_bin_min, theta_bin_max, 1):
            for j in range(phi_bin_min, phi_bin_max, 1):
                #ith theta bin centered at (i+0.5)*bin_width
                t1=theta_cc
                t2=((i+0.5)*np.pi/theta_bins)
                p1=phi_cc
                p2=((j+0.5)*2*np.pi/phi_bins - np.pi)
                d_val=np.arccos(np.cos(t1)*np.cos(t2)+np.sin(t1)*np.sin(t2)*np.cos(p1-p2))
                if(np.abs(d_val-delta_sc)<=tol):
                    im_array[i,j]+=1
                #if(index==1 and t2<np.radians(95.)):
                #    print(d_val, tol, np.degrees(t2), np.degrees(p2))
        '''if(index<2):
            plt.imshow(im_array)
            plt.xticks(np.arange(0, phi_bins, 20), np.round((np.arange(0, phi_bins, 20)+0.5)*360/phi_bins -180),rotation=90)
            plt.yticks(np.arange(0, theta_bins, 20), np.round((np.arange(0, theta_bins, 20)+0.5)*180/theta_bins))
            plt.title("{}, {}, {}, {}, {}".format(np.round(np.degrees(theta_cc),2), np.round(np.degrees(phi_cc),2), np.round(np.degrees(delta_sc),2), np.degrees(phi_min), np.degrees(phi_max)))
            plt.grid(True)
            plt.show()
            time.sleep(1)'''
    else:
        print("Invalid at {}, t_val={}".format(index, t_val))
    print("Index {}/{}".format(index, hits.shape[0]), end='\r')
    if(index%50==0):
        plt.imshow(im_array)
        plt.xticks(np.arange(0, phi_bins, phi_step), np.round((np.arange(0, phi_bins, phi_step))*360/phi_bins -180),rotation=90)
        plt.yticks(np.arange(0, theta_bins, theta_step), np.round((np.arange(0, theta_bins, theta_step))*180/theta_bins))
        plt.title("Back projected image")
        plt.grid(True)
        plt.savefig("bp_raw_{}.jpg".format(tag))

    if(index==500):
        break
im_array_img=np.round(im_array*255/np.max(im_array))
im_array_df=pd.DataFrame(im_array)
im_array_df.to_csv("back_project_{}.csv".format(tag))
#print("Done")
print(np.max(im_array))
plt.imshow(im_array)
plt.xticks(np.arange(0, phi_bins, phi_step), np.round((np.arange(0, phi_bins, phi_step))*360/phi_bins -180),rotation=90)
plt.yticks(np.arange(0, theta_bins, theta_step), np.round((np.arange(0, theta_bins, theta_step))*180/theta_bins))
plt.title("Back projected image")
plt.grid(True)
plt.savefig("bp_raw_{}.jpg".format(tag))
img_df=pd.read_csv("back_project_{}.csv".format(tag), index_col=0)
img_array=img_df.to_numpy()
kernel_list=[3,5,7]
for kernel_size in kernel_list:
    img_blurred=cv2.blur(img_array, (kernel_size, kernel_size))
    #img_blurred/=np.max(img_blurred)
    #img_blurred*=255
    plt.cla()
    plt.imshow(img_blurred)
    plt.title("Kernel of size {}".format(kernel_size))
    plt.xlabel("Phi (degrees)")
    plt.ylabel("Theta (degrees)")
    plt.grid(True)
    plt.xticks(np.arange(0, phi_bins, phi_step), np.round((np.arange(0, phi_bins, phi_step))*360/phi_bins -180),rotation=90)
    plt.yticks(np.arange(0, theta_bins, theta_step), np.round((np.arange(0, theta_bins, theta_step))*180/theta_bins))
    plt.savefig("{}_blurred_with_kernel_{}.png".format(tag, kernel_size))