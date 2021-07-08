import numpy as np
import csv
class Position:
    def __init__(self, x, y, z, nametag):
        self.x=x
        self.y=y
        self.z=z
        self.nametag=nametag
        self.vec=np.array([x,y,z])
        self.theta=0
        self.phi=0
    def distance_from(self, x1, y1, z1):
        return np.sqrt((self.x-x1)**2 + (self.y-y1)**2 + (self.z-z1)**2)
    def angles_from(self, origin, absorber):
        temp=np.dot((self.vec-origin.vec), (absorber.vec-self.vec))
        temp/=np.linalg.norm((self.vec-origin.vec))*np.linalg.norm((absorber.vec-self.vec))
        theta=np.arccos(temp)*180/np.pi
        acap=(self.vec-origin.vec)/np.linalg.norm(self.vec-origin.vec)
        z_refvec=acap
        acapdotz=np.dot(acap, np.array([0, 0, 1.0]))
        x_refvec=(-acapdotz*acap + np.array([0, 0, 1.0]))
        x_refvec/=np.linalg.norm(x_refvec)
        rcap=(absorber.vec-self.vec)/(np.linalg.norm(absorber.vec-self.vec))
        y_refvec=np.cross(acap, x_refvec)
        x_ref=np.dot(rcap, x_refvec)
        y_ref=np.dot(rcap, y_refvec)
        z_ref=np.dot(rcap, z_refvec)
        phi=180/np.pi*np.arctan(y_ref/x_ref)
#        phi=180.0/np.pi*np.arccos(np.dot(x_refvec, rcap_proj))
        return theta, phi

##################################main##########################################
Scatterer=Position(0,0,-11.975, "Scatterer")
Abs1=Position(-26.975, 0, -12.847, "Absorber1")
Abs2=Position(-26.975, 0, 12.847, "Absorber2")
Abs3=Position(-5, 0, 11.975, "Absorber3")
Abs4=Position(5, 0, 11.975, "Absorber4")
Abs5=Position(-5,-11.975, 0, "Absorber5")
Abs6=Position(-5, 11.975, 0, "Absorber6")
Source=Position(29.0, 0, 0, "Source")
filename="positions_and_angles.csv"
Abs1.theta, Abs1.phi = Scatterer.angles_from(Source, Abs1)
Abs2.theta, Abs2.phi = Scatterer.angles_from(Source, Abs2)
Abs3.theta, Abs3.phi = Scatterer.angles_from(Source, Abs3)
Abs4.theta, Abs4.phi = Scatterer.angles_from(Source, Abs4)
Abs5.theta, Abs5.phi = Scatterer.angles_from(Source, Abs5)
Abs6.theta, Abs6.phi = Scatterer.angles_from(Source, Abs6)
Source.theta, Source.phi = Scatterer.angles_from(Source, Source)
with open(filename, 'w') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(["Name", "X (cm)", "Y (cm)", "Z (cm)", "theta (degrees)", "phi (degrees)"])
    csvwriter.writerow([Scatterer.nametag, Scatterer.x, Scatterer.y, Scatterer.z, 0,0])
    csvwriter.writerow([Source.nametag, Source.x, Source.y, Source.z, Source.theta, Source.phi])
    csvwriter.writerow([Abs1.nametag, Abs1.x, Abs1.y, Abs1.z, Abs1.theta, Abs1.phi])
    csvwriter.writerow([Abs2.nametag, Abs2.x, Abs2.y, Abs2.z, Abs2.theta, Abs2.phi])
    csvwriter.writerow([Abs3.nametag, Abs3.x, Abs3.y, Abs3.z, Abs3.theta, Abs3.phi])
    csvwriter.writerow([Abs4.nametag, Abs4.x, Abs4.y, Abs4.z, Abs4.theta, Abs4.phi])
    csvwriter.writerow([Abs5.nametag, Abs5.x, Abs5.y, Abs5.z, Abs5.theta, Abs5.phi])
    csvwriter.writerow([Abs6.nametag, Abs6.x, Abs6.y, Abs6.z, Abs6.theta, Abs6.phi])
