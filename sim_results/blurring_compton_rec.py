import numpy as np
from pandas import read_csv
import matplotlib.pyplot as plt
from cv2 import blur, imwrite
img_df=read_csv("back_project.csv", index_col=0)
img_array=img_df.to_numpy()
kernel_list=[3,5,7]
for kernel_size in kernel_list:
    img_blurred=blur(img_array, (kernel_size, kernel_size))
    #img_blurred/=np.max(img_blurred)
    #img_blurred*=255
    plt.cla()
    plt.imshow(img_blurred)
    plt.title("Kernel of size {}".format(kernel_size))
    plt.xlabel("Phi (degrees)")
    plt.ylabel("Theta (degrees)")
    plt.grid(True)
    #plt.xticks(np.arange(0,360,20))
    #plt.yticks(np.arange(0,180,20))
    plt.savefig("new_blurred_with_kernel_{}.png".format(kernel_size))