
Name ComptonIm
Version 0.0

SurroundingSphere 200.0  0.0  0.0  0.0  200.0

Include Comp_materials.geo
Include CompDetectorParameters.geo

Volume World
World.Material Vacuum
World.Visibility 0
World.Color 0
World.Shape BRIK 300. 300. 300.
World.Mother 0





#----------------------------------Camera---------------------------------------
Volume Camera
Camera.Material Vacuum
Camera.Visibility 0
Camera.Color 0
Camera.Shape BRIK XCam_Dim YCam_Dim ZCam_Dim
Camera.Position 0.0 0.0 0.0
Camera.Mother World




#---------------------------------Scatterer-------------------------------------
Constant XCZT_Posintv {XCZT_Dim + XCZT_Gap}
Constant YCZT_Posintv {YCZT_Dim + YCZT_Gap}


Constant XScBox_Dim {NCZT_X*XCZT_Posintv}
Constant YScBox_Dim {NCZT_Y*YCZT_Posintv}
Constant ZScBox_Dim ZCZT_Dim


Constant XScBox_Pos 0.0
Constant YScBox_Pos 0.0
%Constant ZScBox_Pos {(ZCam_Dim - ZScBox_Dim)*0.5}



%For I XCZT_Pos {-XCZT_Posintv *(NCZT_X/2 -1)} 2*XCZT_Posintv
%    For J YCZT_Pos {-YCZT_Posintv*(NCZT_Y/2 -1)} 2*YCZT_Posintv
%		Scatterer_CZT.Copy Scatterer_CZT_%I_%J
%		Scatterer_CZT_%I_%J.Position XCZT_Pos YCZT_Pos 0.0
%		Scatterer_CZT_%I_%J.Mother Scatterer_Box
%    Done
%Done



#-------------------------------- Absorber-------------------------------------
Constant XAbBox_Dim XAb_Dim
Constant YAbBox_Dim YAb_Dim
Constant ZAbBox_Dim ZAb_Dim

Constant XAbBox_Pos 0.0
Constant YAbBox_Pos 0.0
Constant ZAbBox_Pos {-(ZCam_Dim - ZAbBox_Dim)*0.5}

Constant ZScBox_Pos {(ZCam_Dim - ZScBox_Dim)*0.5}

%=============================================================
%Check

Volume Scatterer_Box
Scatterer_Box.Material Vacuum
Scatterer_Box.Color 0
Scatterer_Box.Visibility 0
Scatterer_Box.Shape BRIK XCZT_Dim YCZT_Dim ZCZT_Dim
Scatterer_Box.Position XAbBox_Pos YAbBox_Pos ZScBox_Pos
Scatterer_Box.Mother Camera


Volume Scatterer_CZT
Scatterer_CZT.Material CZT
Scatterer_CZT.Color 2
Scatterer_CZT.Visibility 1
Scatterer_CZT.Shape BRIK XCZT_Dim YCZT_Dim ZCZT_Dim
Scatterer_CZT.Position 0.0 0.0 0.0
Scatterer_CZT.Mother Scatterer_Box

%============================================================


Volume Absorber_Box
Absorber_Box.Material Vacuum
Absorber_Box.Color 0
Absorber_Box.Visibility 0
Absorber_Box.Shape BRIK XAbBox_Dim YAbBox_Dim ZAbBox_Dim
Absorber_Box.Position XAbBox_Pos YAbBox_Pos ZAbBox_Pos
Absorber_Box.Mother Camera


Volume Absorber_Det
Absorber_Det.Material NaI
Absorber_Det.Color 2
Absorber_Det.Visibility 1
Absorber_Det.Shape BRIK XAb_Dim YAb_Dim ZAb_Dim
Absorber_Det.Position 0.0 0.0 0.0
Absorber_Det.Mother Absorber_Box
