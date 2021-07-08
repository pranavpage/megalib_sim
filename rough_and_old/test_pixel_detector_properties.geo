%%Note: later SIPMT is to be used with NaI, for which follow (most probably)

Constant N_Voxel 14
%
Voxel3D                         CZTDetector_central
CZTDetector_central.SensitiveVolume     CZT_central

CZTDetector_central.TriggerThreshold 20
CZTDetector_central.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_central.DetectorVolume      CZT_central


CZTDetector_central.StructuralOffset    0.0   0.0   0.0
CZTDetector_central.StructuralPitch     0.0   0.0   0.0

CZTDetector_central.Offset              0.0   0.0    0.0
CZTDetector_central.VoxelNumber         N_Voxel     N_Voxel      1.0

CZTDetector_central.EnergyResolution  Gauss      14        14     1.15
CZTDetector_central.EnergyResolution  Gauss      60        60     1.26
CZTDetector_central.EnergyResolution  Gauss     122       122     1.47
CZTDetector_central.EnergyResolution  Gauss     662       662     4.125
CZTDetector_central.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_central.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_central.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_central.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)

%
Voxel3D                         CZTDetector_side
CZTDetector_side.SensitiveVolume     CZT_side

CZTDetector_side.TriggerThreshold 20
CZTDetector_side.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_side.DetectorVolume      CZT_side


CZTDetector_side.StructuralOffset    0.0   0.0   0.0
CZTDetector_side.StructuralPitch     0.0   0.0   0.0

CZTDetector_side.Offset              0.0   0.0    0.0
CZTDetector_side.VoxelNumber         1.0   N_Voxel    1.0

CZTDetector_side.EnergyResolution  Gauss      14        14     1.15
CZTDetector_side.EnergyResolution  Gauss      60        60     1.26
CZTDetector_side.EnergyResolution  Gauss     122       122     1.47
CZTDetector_side.EnergyResolution  Gauss     662       662     4.125
CZTDetector_side.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_side.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_side.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_side.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)

%
Voxel3D                         CZTDetector_corner
CZTDetector_corner.SensitiveVolume     CZT_corner

CZTDetector_corner.TriggerThreshold 20
CZTDetector_corner.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_corner.DetectorVolume      CZT_corner


CZTDetector_corner.StructuralOffset    0.0   0.0   0.0
CZTDetector_corner.StructuralPitch     0.0   0.0   0.0

CZTDetector_corner.Offset              0.0   0.0    0.0
CZTDetector_corner.VoxelNumber         1.0   1.0    1.0

CZTDetector_corner.EnergyResolution  Gauss      14        14     1.15
CZTDetector_corner.EnergyResolution  Gauss      60        60     1.26
CZTDetector_corner.EnergyResolution  Gauss     122       122     1.47
CZTDetector_corner.EnergyResolution  Gauss     662       662     4.125
CZTDetector_corner.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_corner.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_corner.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_corner.FailureRate 0.0
#---------------------------------------------------------------------------

%-------------------------------Trigger conditions--------------------------

Trigger T
T.Veto false
T.TriggerByDetector true
T.Detector CZTDetector_central 1
T.Detector CZTDetector_side 1
T.Detector CZTDetector_corner 1
