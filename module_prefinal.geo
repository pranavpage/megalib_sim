
Constant P1 0.246
Constant P2 0.231
//Dimensions of module
Constant XMOD_DIM {7*P1+1*P2}
Constant YMOD_DIM {7*P1+1*P2}
Constant ZMOD_DIM 0.25
//Position of box
Constant XCZT_box_POS 0.0
Constant YCZT_box_POS 0.0
Constant ZCZT_box_POS 0.0
Constant ZCZT_box_DIM 4.0

Volume CZT_module_box
CZT_module_box.Material Vacuum
CZT_module_box.Color 1
CZT_module_box.Visibility 0
CZT_module_box.Shape BRIK XMOD_DIM YMOD_DIM ZCZT_box_DIM

Constant Z_offset {1.88+0.1/2}

Volume PCB_chip
PCB_chip.Material PCB
PCB_chip.Color 1
PCB_chip.Visibility 1
PCB_chip.Shape BRIK 1.953 1.968 0.1
PCB_chip.Position 0 -0.015 {-1.88+Z_offset}
PCB_chip.Rotation 0 0 0
PCB_chip.Mother CZT_module_box

Volume CZT_central
CZT_central.Material CZT
CZT_central.Color 2
CZT_central.Visibility 1
CZT_central.Shape BRIK {7*P1} {7*P1} ZMOD_DIM
CZT_central.Position 0 0 {0+Z_offset}
CZT_central.Mother CZT_module_box

Volume CZT_support
CZT_support.Material PCB
CZT_support.Color 6
CZT_support.Visibility 1
CZT_support.Shape BRIK XMOD_DIM YMOD_DIM 0.7015
CZT_support.Position 0 0 {-0.9515+Z_offset}
CZT_support.Mother CZT_module_box

Volume CZT_side
CZT_side.Material CZT
CZT_side.Color 3
CZT_side.Visibility 1
CZT_side.Shape BRIK {P2/2} {P1*7} ZMOD_DIM

Volume CZT_corner
CZT_corner.Material CZT
CZT_corner.Color 4
CZT_corner.Visibility 1
CZT_corner.Shape BRIK {P2/2} {P2/2} ZMOD_DIM

Volume CZT_side_1
CZT_side_1.Material CZT
CZT_side_1.Color 3
CZT_side_1.Visibility 1
CZT_side_1.Shape BRIK {P2/2} {P1*7} ZMOD_DIM
CZT_side_1.Position {7*P1+P2/2} 0 {0+Z_offset}
CZT_side_1.Rotation 0 0 0
CZT_side_1.Mother CZT_module_box

Volume CZT_side_2
CZT_side_2.Material CZT
CZT_side_2.Color 3
CZT_side_2.Visibility 1
CZT_side_2.Shape BRIK {P1*7} {P2/2} ZMOD_DIM
CZT_side_2.Position 0 {7*P1+P2/2} {0+Z_offset}
CZT_side_2.Rotation 0 0 0
CZT_side_2.Mother CZT_module_box

Volume CZT_side_3
CZT_side_3.Material CZT
CZT_side_3.Color 3
CZT_side_3.Visibility 1
CZT_side_3.Shape BRIK {P2/2} {P1*7} ZMOD_DIM
CZT_side_3.Position {-7*P1-P2/2} 0 {0+Z_offset}
CZT_side_3.Rotation 0 0 0
CZT_side_3.Mother CZT_module_box

Volume CZT_side_4
CZT_side_4.Material CZT
CZT_side_4.Color 3
CZT_side_4.Visibility 1
CZT_side_4.Shape BRIK  {P1*7} {P2/2} ZMOD_DIM
CZT_side_4.Position 0 {-7*P1-P2/2}  {0+Z_offset}
CZT_side_4.Rotation 0 0 0
CZT_side_4.Mother CZT_module_box

Volume CZT_corner_1
CZT_corner_1.Material CZT
CZT_corner_1.Color 4
CZT_corner_1.Visibility 1
CZT_corner_1.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_1.Position {7*P1+P2/2} {7*P1+P2/2} {0+Z_offset}
CZT_corner_1.Mother CZT_module_box

Volume CZT_corner_2
CZT_corner_2.Material CZT
CZT_corner_2.Color 4
CZT_corner_2.Visibility 1
CZT_corner_2.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_2.Position {-7*P1-P2/2} {7*P1+P2/2} {0+Z_offset}
CZT_corner_2.Mother CZT_module_box

Volume CZT_corner_3
CZT_corner_3.Material CZT
CZT_corner_3.Color 4
CZT_corner_3.Visibility 1
CZT_corner_3.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_3.Position {-7*P1-P2/2} {-7*P1-P2/2} {0+Z_offset}
CZT_corner_3.Mother CZT_module_box

Volume CZT_corner_4
CZT_corner_4.Material CZT
CZT_corner_4.Color 4
CZT_corner_4.Visibility 1
CZT_corner_4.Shape BRIK {P2/2} {P2/2} ZMOD_DIM
CZT_corner_4.Position {7*P1+P2/2} {-7*P1-P2/2} {0+Z_offset}
CZT_corner_4.Mother CZT_module_box
