# Back-projection code pipeline
The following document explains the flow for the back-projection pipeline
## Simulating events using MEGAlib
### Setting up the experiment 
The experiment setup is done in a `.geo.setup` file, with helper `.geo` files for the CZT module and the CZT module box. The setup can be viewed by running the file using `geomega`. 
### Setting up the source 
The source is defined in a `.source` file, with the beam shape, source position, spectrum and other parameters. 
### Running the simulation
Events are simulated using `cosima`, and processed using `revan` and `mimrec`. The file `MComptonEvent.cxx` in `src/global/misc/src` needs to be changed in order to store Compton events in a `.dat` fle. Modify the `MComptonEvent::Stream()` function so that while streaming the events out, it also stores them in a file, by adding the following snippet  

```
    std::ofstream ofiled;
    ofiled.open("First_Second_Interaction_Coords.dat", std::ios::app);
    ofiled<<m_C1[0]<<"\t"<<m_C1[1]<<"\t"<<m_C1[2]<<"\t"<<m_Ee<<"\t"<<m_C2[0]<<"\t"<<m_C2[1]<<"\t"<<m_C2[2]<<"\t"<<m_Eg<<endl;
    ofiled.close();
```
Then the `.sim` file generated using `cosima` can be loaded into `revan`, and a `.dat` file will be generated along with a `.tra` file which is used by `mimrec`. 
## Back-projection
### Extracting and storing events
The `.dat` file contains double event data in terms of `[X1, Y1, Z1, E1, X2, Y2, Z2, E2]` which corresponds to the position of the first interaction, energy of the first interaction, position of the second interaction and energy of the second interaction.  
After getting the `.dat` file, the `dat_analysis.py` script is to be run. It converts the `.dat` file into a `comp_hits_all.csv` file, and rejects some spurious events whose first hit is not in the Scatterer. Further operations are to be done on the `.csv` file. 
### Pixelization
The file `pixelization.py` contains a class `Det` which is used to represent the position and orientation of a CZT detector. To initialize the class, the geometric centre of the detector and the two axes for the detector are given as arguments. The class contains a method, namely `pixel_number_of()`, which returns the pixel number in the detector where the hit was recorded, given the position of the hit in Cartesian coordinates.  
The script `pix_compton.py` is to be run after `dat_analysis.py`. It uses the `Det` class and generates individual `.csv` files according to the `det_list` specified. Thus, it makes 6 files if 6 Absorbers have been defined and passed.  
### Back-projection
The script `back_projection.py` contains the back projection algorithm used for source reconstruction. It is to be run after the double events have been pixelized and segregated into individual detectors such that the first hit is in the Scatterer and the second hit is in the Absorber.  
