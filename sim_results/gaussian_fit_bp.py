import numpy as np
import matplotlib.pyplot as plt 
import pandas as pd
from astropy.modeling import models, fitting
import os, cv2
#cols=["X1", "Y1", "Z1","E1", "X2", "Y2", "Z2", "E2"]
tag = "rec_5"
os.chdir("bp_"+tag+"/")
fname="back_project_{}.csv".format(tag)
img_df=pd.read_csv("back_project_{}.csv".format(tag), index_col=0)
img_array=img_df.to_numpy()
theta_bins,phi_bins=img_array.shape
#ith theta bin centered at (i+0.5)*bin_width
#plt.imshow(img_array)
xpeak, ypeak= np.unravel_index(img_array.argmax(), img_array.shape)
print((xpeak+0.5)*180/theta_bins, ((ypeak+0.5)*360/phi_bins - 180))
xwidth=int((20/180)*theta_bins)
ywidth=int((20/360)*phi_bins)
z=img_array[xpeak-xwidth:xpeak+xwidth, ypeak-ywidth:ypeak+ywidth]
z_convolved=cv2.GaussianBlur(z, (5,5), sigmaX=0.5, sigmaY=0.5)
x,y=np.mgrid[:2*xwidth, :2*ywidth]
p_init=models.Gaussian2D()
fit_p=fitting.LevMarLSQFitter()
p=fit_p(p_init,x,y, z_convolved)
print(np.max(z_convolved), np.min(z_convolved))
print(np.max(p(x,y)), np.min(p(x,y)))
print(p)
plt.subplot(2,2,3)
plt.imshow(p(x,y), vmin=0, vmax=np.max(z))
plt.title("Gaussian fit")
plt.subplot(2,2,1)
plt.imshow(z,vmin=0, vmax=np.max(z))
plt.title("Actual image")
plt.subplot(2,2,4)
plt.imshow(z-p(x,y),vmin=0, vmax=np.max(z))
plt.title("Residual")
plt.subplot(2,2,2)
plt.imshow(z_convolved,vmin=0, vmax=np.max(z))
plt.title("Gaussian Blur")
plt.subplots_adjust()
plt.savefig("gaussian_fit.png")