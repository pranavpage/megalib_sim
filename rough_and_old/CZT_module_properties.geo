#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)

Constant N_Voxel 16
%
Voxel3D                         CZTDetector
CZTDetector.SensitiveVolume     CZT_module

CZTDetector.TriggerThreshold 20
CZTDetector.NoiseThresholdEqualsTriggerThreshold true

CZTDetector.DetectorVolume      CZT_module


CZTDetector.StructuralOffset    0.0   0.0   0.0
CZTDetector.StructuralPitch     0.0   0.0   0.0

CZTDetector.Offset              0.0   0.0    0.0
CZTDetector.VoxelNumber         N_Voxel     N_Voxel      1.0

CZTDetector.EnergyResolution  Gauss      14        14     1.15
CZTDetector.EnergyResolution  Gauss      60        60     1.26
CZTDetector.EnergyResolution  Gauss     122       122     1.47
CZTDetector.EnergyResolution  Gauss     662       662     4.125
CZTDetector.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector.FailureRate 0.0
#---------------------------------------------------------------------------

MDStrip3D                       NaIDetector
NaIDetector.SensitiveVolume     NaI_detector

NaIDetector.TriggerThreshold 20
NaIDetector.NoiseThresholdEqualsTriggerThreshold true

NaIDetector.DetectorVolume      NaI_detector

NaIDetector.StructuralOffset    0.0   0.0   0.0
NaIDetector.StructuralPitch     0.0   0.0   0.0

NaIDetector.Offset              0.1  0.1
NaIDetector.StripNumber         20  20


NaIDetector.EnergyResolution  Gauss   1       1 36.9077
NaIDetector.EnergyResolution  Gauss   2       2 36.9084
NaIDetector.EnergyResolution  Gauss   5       5 36.9102
NaIDetector.EnergyResolution  Gauss   10      10 36.9133
NaIDetector.EnergyResolution  Gauss   20      20 36.9195
NaIDetector.EnergyResolution  Gauss   50      50 36.9381
NaIDetector.EnergyResolution  Gauss   100     100 36.9691
NaIDetector.EnergyResolution  Gauss   200     200 37.031
NaIDetector.EnergyResolution  Gauss   500     500 37.216
NaIDetector.EnergyResolution  Gauss   1000    1000 37.5224
NaIDetector.EnergyResolution  Gauss   2000    2000 38.1277
NaIDetector.EnergyResolution  Gauss   5000    5000 39.8886
NaIDetector.EnergyResolution  Gauss   10000   10000 42.6623
NaIDetector.EnergyResolution  Gauss   20000   20000 47.7284
NaIDetector.EnergyResolution  Gauss   50000   50000 60.4301
NaIDetector.EnergyResolution  Gauss   100000  100000 77.0809


NaIDetector.PulseShape 2.78652e-03 1.11233e-04 1.13468e-07 -3.63642e-11 4.80242e-15 -3.56580e-19 1.60263e-23 -4.33004e-28 6.47700e-33 -4.12352e-38 0 30000

NaIDetector.FailureRate 0.096



%-------------------------------Trigger conditions--------------------------

Trigger T
T.Veto false
T.TriggerByDetector true
T.Detector CZTDetector 1
T.Detector NaIDetector 1
