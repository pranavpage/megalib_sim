/*Describes geometry of a single detector module, out of 64 modules total*/
Include Comp_materials.geo

Constant XMOD_DIM 1.953
Constant YMOD_DIM 1.953
Constant ZMOD_DIM 0.25
/*Each Module to be placed at XMOD, YMOD, ZMOD*/

Volume CZT_module
CZT_module.Material CZT
CZT_module.Color 2
CZT_module.Visibility 1
CZT_module.Shape BRIK XMOD_DIM YMOD_DIM ZMOD_DIM
