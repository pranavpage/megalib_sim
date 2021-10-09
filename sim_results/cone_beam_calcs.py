import numpy as np
import csv
f_source=3.7e7
theta_req=[0,5,10,15,20,22.4372, 25, 30, 35, 40]
theta_req=np.array(theta_req)
p_width=((3.906**2+0.5**2)**0.5)*np.cos(np.radians(90-7.29468-theta_req))
p_length=np.full_like(p_width, 3.906)
p_diag=(p_width**2+p_length**2)**0.5
source_pos_z=np.tan(np.radians(theta_req))*29-11.975
p_dist=29/np.cos(np.radians(theta_req))
cone_half_angle=np.degrees(np.arctan(p_diag/2/p_dist))
p_area=p_length*p_width
p_solid_angle=p_area/(p_dist**2)
fraction_of_cone_base=p_length*p_width/(np.pi*(p_dist*np.tan(np.radians(cone_half_angle)))**2)
cone_solid_angle=4*np.pi*(np.sin(np.radians(cone_half_angle)/2))**2
f_directed=f_source*cone_solid_angle/(4*np.pi)
f_incident=f_directed*p_solid_angle/cone_solid_angle
with open("/media/pranav/page/Project_Daksha/MEGALIB_PARAM/megalib/mycodes/sim_results/cone_beam_calcs.csv", 'w') as csvfile:
    fwriter=csv.writer(csvfile)
    fwriter.writerow(["theta", "origin", "half-angle", "fraction", "distance", "area", "solid_angle","cone_solid_angle" ,"f_incident"])
    for i in range(len(theta_req)):
        fwriter.writerow([theta_req[i], source_pos_z[i], cone_half_angle[i], fraction_of_cone_base[i],p_dist[i], p_area[i], p_solid_angle[i], cone_solid_angle[i], f_incident[i] ])
