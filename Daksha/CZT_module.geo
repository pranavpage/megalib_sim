#contains description of CZT_module_box
Constant P1 0.246
Constant P2 0.231
//Dimensions of module
Constant XMOD_DIM {7*P1+1*P2}
Constant YMOD_DIM {7*P1+1*P2}
Constant ZMOD_DIM 0.25
//
Constant XCOV_DIM {3.94/2}
Constant YCOV_DIM {3.94/2}

//Position of box
Constant XCZT_box_POS 0.0
Constant YCZT_box_POS 0.0
Constant ZCZT_box_POS 0.0
Constant Z_PCB_DIM 0.125
Constant ZCZT_box_DIM {1.2875+Z_PCB_DIM}
Constant Z_CZT_module_POS {ZCZT_box_DIM-ZMOD_DIM}
Constant ZCZT_support_POS  {1.2875-ZCZT_box_DIM} //0
Constant Z_ASIC_BASE_POS {0.6625-Z_PCB_DIM} //0.6625
Constant Z_ASIC_POS {Z_ASIC_BASE_POS+Z_PCB_DIM+0.125}

Volume CZT_module_box
CZT_module_box.Material Vacuum
CZT_module_box.Color 1
CZT_module_box.Visibility 0
CZT_module_box.Shape BRIK {XCOV_DIM} {YCOV_DIM} ZCZT_box_DIM

Volume CZT_central
CZT_central.Material CZT
CZT_central.Color 2
CZT_central.Visibility 1
CZT_central.Shape BRIK {7*P1} {7*P1} ZMOD_DIM
CZT_central.Position 0 0 {0+Z_CZT_module_POS}
CZT_central.Mother CZT_module_box

Shape BRIK CZT_cover_out
CZT_cover_out.Parameters {XCOV_DIM} {YCOV_DIM} ZMOD_DIM
Shape BRIK CZT_cover_in
CZT_cover_in.Parameters XMOD_DIM YMOD_DIM ZMOD_DIM
Orientation CoverOrientation
CoverOrientation.Position 0 0 0
Shape Subtraction CZT_cover_s
CZT_cover_s.Parameters CZT_cover_out CZT_cover_in CoverOrientation

Volume CZT_cover
CZT_cover.Material PMTPlastic
CZT_cover.Color 5
CZT_cover.Visibility 1
CZT_cover.Shape CZT_cover_s
CZT_cover.Position 0 0 {0+Z_CZT_module_POS}
CZT_cover.Mother CZT_module_box

Shape BRIK CZT_support_whole
CZT_support_whole.Parameters XMOD_DIM YMOD_DIM 0.5375

Shape Tube Hole
Hole.Parameters 0 0.21 0.539 0 360

Orientation HoleOrientation
HoleOrientation.Position 1.15 1.625 0
HoleOrientation.Rotation 0 0 0

Shape Subtraction CZT_support_without_hole
CZT_support_without_hole.Parameters CZT_support_whole Hole HoleOrientation

Shape BRIK RectHole
RectHole.Parameters 0.2 0.85 0.5376

Orientation RectHoleOrientation_1
RectHoleOrientation_1.Position 1.36 -0.8 0
RectHoleOrientation_1.Rotation 0 0 0

Orientation RectHoleOrientation_2
RectHoleOrientation_2.Position -0.54 0.8 0
RectHoleOrientation_2.Rotation 0 0 0

Shape Subtraction CZT_support_without_hole_2
CZT_support_without_hole_2.Parameters CZT_support_without_hole RectHole RectHoleOrientation_1

Shape Subtraction CZT_support_without_hole_3
CZT_support_without_hole_3.Parameters CZT_support_without_hole_2 RectHole RectHoleOrientation_2

Shape BRIK RectHoleCentral
RectHoleCentral.Parameters 0.375 0.575 0.54

Orientation RectHoleCentralOrientation
RectHoleCentralOrientation.Position 0.41 0.001 0

Shape Subtraction CZT_support_without_hole_4
CZT_support_without_hole_4.Parameters CZT_support_without_hole_3 RectHoleCentral RectHoleCentralOrientation

Volume CZT_support_1
CZT_support_1.Material PMTPlastic // VT Plastic
CZT_support_1.Color 6
CZT_support_1.Visibility 1
CZT_support_1.Shape CZT_support_without_hole_4
CZT_support_1.Position 0 0 ZCZT_support_POS
CZT_support_1.Mother CZT_module_box
//CZT support done

//ASIC Base
Shape BRIK AsicBase
AsicBase.Parameters XMOD_DIM YMOD_DIM 0.125

Shape Tube AsicBaseHole_2
AsicBaseHole_2.Parameters 0 0.21 0.125 0 360

Orientation AsicBaseHole_2Orientation
AsicBaseHole_2Orientation.Position 1.15 1.625 0
AsicBaseHole_2Orientation.Rotation 0 0 0

Shape Subtraction AsicBaseWithHole_2
AsicBaseWithHole_2.Parameters AsicBase AsicBaseHole_2 AsicBaseHole_2Orientation

Volume ASIC_BASE
ASIC_BASE.Material Aluminium // Mylar actually
ASIC_BASE.Color 4
ASIC_BASE.Visibility 1
ASIC_BASE.Shape AsicBaseWithHole_2
ASIC_BASE.Position 0 0 Z_ASIC_BASE_POS
ASIC_BASE.Mother CZT_module_box

//ASIC Stand
Shape BRIK AsicStand
AsicStand.Parameters 0.325 0.525 0.9125

Shape Tube AsicStandHole
AsicStandHole.Parameters 0 0.15 0.6 0 360

Orientation AsicStandHoleOrientation
AsicStandHoleOrientation.Position 0 0 -0.875
AsicStandHoleOrientation.Rotation 0 0 0

Shape Subtraction AsicStandWithHole_1
AsicStandWithHole_1.Parameters AsicStand AsicStandHole AsicStandHoleOrientation

Volume ASIC_STAND
ASIC_STAND.Material Aluminium // Mylar
ASIC_STAND.Color 4
ASIC_STAND.Visibility 1
ASIC_STAND.Shape AsicStandWithHole_1
ASIC_STAND.Position 0.41 -0.01 {-1.0375+Z_ASIC_BASE_POS}
ASIC_STAND.Mother CZT_module_box

//ASIC
Volume PCB_chip
PCB_chip.Material CircuitBoard
PCB_chip.Color 1
PCB_chip.Visibility 1
PCB_chip.Shape BRIK XMOD_DIM YMOD_DIM Z_PCB_DIM
PCB_chip.Position 0 0 Z_ASIC_POS
PCB_chip.Mother CZT_module_box
//Connectors
Shape BRIK ConnectorBase
ConnectorBase.Parameters 0.1524 0.65405 0.2095

Shape BRIK ConnectorScrews
ConnectorScrews.Parameters 0.0635 0.06985 0.1775

Orientation ConnectorScrewOrientation1
ConnectorScrewOrientation1.Position 0 0.7239 -0.14573
ConnectorScrewOrientation1.Rotation 0 0 0

Shape Union Connector_1
Connector_1.Parameters ConnectorBase ConnectorScrews ConnectorScrewOrientation1

Orientation ConnectorScrewOrientation2
ConnectorScrewOrientation2.Position 0 -0.7239 -0.14573
ConnectorScrewOrientation2.Rotation 0 0 0

Shape Union Connector_2
Connector_2.Parameters Connector_1 ConnectorScrews ConnectorScrewOrientation2

Shape BRIK ConnectorPins_1
ConnectorPins_1.Parameters 0.00635 0.654 0.08128

Shape BRIK ConnectorPins_2
ConnectorPins_2.Parameters 0.0215 0.654 0.00635

Orientation ConnectorPins_1Orientation1
ConnectorPins_1Orientation1.Position 0.0588 0 -0.29083

Orientation ConnectorPins_1Orientation2
ConnectorPins_1Orientation2.Position -0.0588 0 -0.29083

Shape Union Connector_3
Connector_3.Parameters Connector_2 ConnectorPins_1 ConnectorPins_1Orientation1

Shape Union Connector_4
Connector_4.Parameters Connector_3 ConnectorPins_1 ConnectorPins_1Orientation2

Orientation ConnectorPins_2Orientation1
ConnectorPins_2Orientation1.Position 0.0215 0 -0.2159

Orientation ConnectorPins_2Orientation2
ConnectorPins_2Orientation2.Position -0.0215 0 -0.2159

Shape Union Connector_5
Connector_5.Parameters Connector_4 ConnectorPins_2 ConnectorPins_2Orientation1

Shape Union Connector_6
Connector_6.Parameters Connector_5 ConnectorPins_2 ConnectorPins_2Orientation2

Volume VConnector_1
VConnector_1.Material Aluminium
VConnector_1.Color 7
VConnector_1.Visibility 1
VConnector_1.Shape Connector_6
VConnector_1.Position 1.36 -0.8 {Z_ASIC_BASE_POS-0.2-0.14} //Offset due to overlaps and change of geometric center
VConnector_1.Mother CZT_module_box

Volume VConnector_2
VConnector_2.Material Aluminium
VConnector_2.Color 7
VConnector_2.Visibility 1
VConnector_2.Shape Connector_6
VConnector_2.Position -0.54 0.8 {Z_ASIC_BASE_POS-0.2-0.14}
VConnector_2.Mother CZT_module_box

//CZT panels
Volume CZT_side
CZT_side.Material CZT
CZT_side.Color 2
CZT_side.Visibility 1
CZT_side.Shape BRIK {P2/2} {P1*7} ZMOD_DIM

Volume CZT_corner
CZT_corner.Material CZT
CZT_corner.Color 2
CZT_corner.Visibility 1
CZT_corner.Shape BRIK {P2/2} {P2/2} ZMOD_DIM

Volume CZT_side_1
CZT_side_1.Material CZT
CZT_side_1.Color 2
CZT_side_1.Visibility 1
CZT_side_1.Shape BRIK {P2/2} {P1*7} ZMOD_DIM
CZT_side_1.Position {7*P1+P2/2} 0 {0+Z_CZT_module_POS}
CZT_side_1.Rotation 0 0 0
CZT_side_1.Mother CZT_module_box

Volume CZT_side_2
CZT_side_2.Material CZT
CZT_side_2.Color 2
CZT_side_2.Visibility 1
CZT_side_2.Shape BRIK {P1*7} {P2/2} ZMOD_DIM
CZT_side_2.Position 0 {7*P1+P2/2} {0+Z_CZT_module_POS}
CZT_side_2.Rotation 0 0 0
CZT_side_2.Mother CZT_module_box

Volume CZT_side_3
CZT_side_3.Material CZT
CZT_side_3.Color 2
CZT_side_3.Visibility 1
CZT_side_3.Shape BRIK {P2/2} {P1*7} ZMOD_DIM
CZT_side_3.Position {-7*P1-P2/2} 0 {0+Z_CZT_module_POS}
CZT_side_3.Rotation 0 0 0
CZT_side_3.Mother CZT_module_box

Volume CZT_side_4
CZT_side_4.Material CZT
CZT_side_4.Color 2
CZT_side_4.Visibility 1
CZT_side_4.Shape BRIK  {P1*7} {P2/2} ZMOD_DIM
CZT_side_4.Position 0 {-7*P1-P2/2}  {0+Z_CZT_module_POS}
CZT_side_4.Rotation 0 0 0
CZT_side_4.Mother CZT_module_box

Volume CZT_corner_1
CZT_corner_1.Material CZT
CZT_corner_1.Color 2
CZT_corner_1.Visibility 1
CZT_corner_1.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_1.Position {7*P1+P2/2} {7*P1+P2/2} {0+Z_CZT_module_POS}
CZT_corner_1.Mother CZT_module_box

Volume CZT_corner_2
CZT_corner_2.Material CZT
CZT_corner_2.Color 2
CZT_corner_2.Visibility 1
CZT_corner_2.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_2.Position {-7*P1-P2/2} {7*P1+P2/2} {0+Z_CZT_module_POS}
CZT_corner_2.Mother CZT_module_box

Volume CZT_corner_3
CZT_corner_3.Material CZT
CZT_corner_3.Color 2
CZT_corner_3.Visibility 1
CZT_corner_3.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_3.Position {-7*P1-P2/2} {-7*P1-P2/2} {0+Z_CZT_module_POS}
CZT_corner_3.Mother CZT_module_box

Volume CZT_corner_4
CZT_corner_4.Material CZT
CZT_corner_4.Color 2
CZT_corner_4.Visibility 1
CZT_corner_4.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_4.Position {7*P1+P2/2} {-7*P1-P2/2} {0+Z_CZT_module_POS}
CZT_corner_4.Mother CZT_module_box
Include module_with_accurate_pixels_detector_properties.geo
