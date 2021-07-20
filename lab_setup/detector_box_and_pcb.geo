//includes the PCB chip for readout and the polypropylene box used
Include $(MEGALIB)/mycodes/Daksha/CZT_module.geo
Volume Detector_box
Detector_box.Material Vacuum
Detector_box.Visibility 0
Detector_box.Color 1
//Detector_box.Shape BRIK 5.3 7 1.9
Constant X_PP_box_DIM 5.3
Constant Y_PP_box_DIM 7
Constant Z_PP_box_DIM 1.9
Detector_box.Shape BRIK X_PP_box_DIM Y_PP_box_DIM Z_PP_box_DIM

Constant PP_box_thickness 0.2

Shape BRIK PP_whole
PP_whole.Parameters 5.3 7 1.9

Shape BRIK PP_inside
PP_inside.Parameters {5.3-PP_box_thickness} {7-PP_box_thickness} {1.9-PP_box_thickness}

Orientation PP_insideOrientation
PP_insideOrientation.Position 0 0 0
PP_insideOrientation.Rotation 0 0 0

Shape Subtraction PP_shape
PP_shape.Parameters PP_whole PP_inside PP_insideOrientation

Volume PP_box
PP_box.Material PP
PP_box.Color 3
PP_box.Visibility 1
PP_box.Shape PP_shape
PP_box.Position 0 0 0
PP_box.Mother Detector_box

Volume Readout_PCB
Readout_PCB.Material CircuitBoard
Readout_PCB.Color 2
Readout_PCB.Visibility 1
Readout_PCB.Shape BRIK 4 4 0.125
Readout_PCB.Position {-1.3+0.2} {3-0.2} {-1.9+PP_box_thickness+0.125}
Readout_PCB.Mother Detector_box
Constant X_CZT_module_in_PP_box {-3.347+PP_box_thickness}
Constant Y_CZT_module_in_PP_box {5.047-PP_box_thickness}
CZT_module_box.Copy Det1
Det1.Position X_CZT_module_in_PP_box Y_CZT_module_in_PP_box {-1.9+PP_box_thickness+0.125+0.125+ZCZT_box_DIM}
Det1.Mother Detector_box

//slight offsets needed to make sure there are no volume overlaps
//Make the Al box in a different .geo file
