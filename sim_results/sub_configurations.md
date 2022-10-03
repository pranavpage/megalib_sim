# Notes made while doing sub-configuration analysis
For the default collimated source position, the following distribution of Compton events is observed.  

Total photons generated : 1e7  
Estimated photos directed towards scatterer : 0.50987e7  
Total Compton events : 262802  
Events with first hit in Scatterer : 257635  
    Events with first hit in Scatterer and second hit in one of the Absorbers : 4535  
    Second hit in Absorber 1 : 352  
    Second hit in Absorber 2 : 553  
    Second hit in Absorber 3 : 311  
    Second hit in Absorber 4 : 955  
    Second hit in Absorber 5 : 1230  
    Second hit in Absorber 6 : 1134  

## Subconfigs : 
Each simulation to be done with 5e6 356 keV photons directed towards Scatterer.
1. Abs5,Abs6 : 81  
Good
2. Abs5,Abs4 : 85  
Bad
3. Abs5,Abs2 : 60 
Bad
4. Abs5,Abs1 : 56  
Bad
5. Abs1,Abs2 : 38  
Bad
6. Abs5, Abs3 : 50  
Bad
7. Abs4,Abs5,Abs6 : 127  
Good
8. Abs1,Abs5, Abs6: 98  
Good  
The best config will then be used to deal with 200 keV or 100 keV photons
for high number of Compton events   
5.09e6 photons impact the Scatterer
1. Abs5,Abs6 :   

2. Abs5,Abs4 : 1462

3. Abs6 : 780
4. Abs1 : 245
5. Abs2 : 364
6. Abs3 : 195
7. Abs4 : 666
8. Abs5 : 796
## Chosen subconfigs : 
1. Abs5, Abs6 : 1e6 
2. Abs5, Abs4 : 1e6
3. Abs2, Abs4 : 1e6
4. Abs1, Abs2 : 1e6
5. Abs2, Abs4, Abs5 : 1e6
6. Abs4, Abs5, Abs6 : 1e6