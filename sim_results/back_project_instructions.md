# Steps for using the backprojection algorithm in `back_projection.py`

1. Generate the .sim file using `cosima`
2. Delete the old `First_Second_Interactions.dat` file
3. Use `revan` to generate the .tra file, and the new `First_Second_Interactions.dat` file
4. Use the `dat_analysis.py` script to choose which events to store in the .csv file
5. Run the `back_projection.py` algorithm with appropriate tag

`revan` syntax : `revan -f <.sim> -g <.geo.setup>`

## Target : to use the `.sim` files generated for MEGAlib outputs to compare with MLEM
1. source at 5 degrees  
`.dat` created, `.csv` created, rec done
2. source at 15 degrees  
`.dat` created, `.csv` created, rec done
3. source at 25 degrees  
`.dat` created, `.csv` created, rec done
4. source at 30 degrees  
`.dat` created, `.csv` created, rec done
5. source at 40 degrees  
`.dat` created, `.csv` created, rec done