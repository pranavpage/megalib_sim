#-------------------------Sensitive detectors------------------------------


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
Voxel3D                         CZTDetector_side_1
CZTDetector_side_1.SensitiveVolume     CZT_side_1

CZTDetector_side_1.TriggerThreshold 20
CZTDetector_side_1.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_side_1.DetectorVolume      CZT_side_1


CZTDetector_side_1.StructuralOffset    0.0   0.0   0.0
CZTDetector_side_1.StructuralPitch     0.0   0.0   0.0

CZTDetector_side_1.Offset              0.0   0.0    0.0
CZTDetector_side_1.VoxelNumber         1.0     N_Voxel      1.0

CZTDetector_side_1.EnergyResolution  Gauss      14        14     1.15
CZTDetector_side_1.EnergyResolution  Gauss      60        60     1.26
CZTDetector_side_1.EnergyResolution  Gauss     122       122     1.47
CZTDetector_side_1.EnergyResolution  Gauss     662       662     4.125
CZTDetector_side_1.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_side_1.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_side_1.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_side_1.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_side_2
CZTDetector_side_2.SensitiveVolume     CZT_side_2

CZTDetector_side_2.TriggerThreshold 20
CZTDetector_side_2.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_side_2.DetectorVolume      CZT_side_2


CZTDetector_side_2.StructuralOffset    0.0   0.0   0.0
CZTDetector_side_2.StructuralPitch     0.0   0.0   0.0

CZTDetector_side_2.Offset              0.0   0.0    0.0
CZTDetector_side_2.VoxelNumber         N_Voxel     1.0      1.0

CZTDetector_side_2.EnergyResolution  Gauss      14        14     1.15
CZTDetector_side_2.EnergyResolution  Gauss      60        60     1.26
CZTDetector_side_2.EnergyResolution  Gauss     122       122     1.47
CZTDetector_side_2.EnergyResolution  Gauss     662       662     4.125
CZTDetector_side_2.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_side_2.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_side_2.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_side_2.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)

%
Voxel3D                         CZTDetector_side_3
CZTDetector_side_3.SensitiveVolume     CZT_side_3

CZTDetector_side_3.TriggerThreshold 20
CZTDetector_side_3.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_side_3.DetectorVolume      CZT_side_3


CZTDetector_side_3.StructuralOffset    0.0   0.0   0.0
CZTDetector_side_3.StructuralPitch     0.0   0.0   0.0

CZTDetector_side_3.Offset              0.0   0.0    0.0
CZTDetector_side_3.VoxelNumber         1.0     N_Voxel      1.0

CZTDetector_side_3.EnergyResolution  Gauss      14        14     1.15
CZTDetector_side_3.EnergyResolution  Gauss      60        60     1.26
CZTDetector_side_3.EnergyResolution  Gauss     122       122     1.47
CZTDetector_side_3.EnergyResolution  Gauss     662       662     4.125
CZTDetector_side_3.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_side_3.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_side_3.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_side_3.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_side_4
CZTDetector_side_4.SensitiveVolume     CZT_side_4

CZTDetector_side_4.TriggerThreshold 20
CZTDetector_side_4.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_side_4.DetectorVolume      CZT_side_4


CZTDetector_side_4.StructuralOffset    0.0   0.0   0.0
CZTDetector_side_4.StructuralPitch     0.0   0.0   0.0

CZTDetector_side_4.Offset              0.0   0.0    0.0
CZTDetector_side_4.VoxelNumber         N_Voxel     1.0      1.0

CZTDetector_side_4.EnergyResolution  Gauss      14        14     1.15
CZTDetector_side_4.EnergyResolution  Gauss      60        60     1.26
CZTDetector_side_4.EnergyResolution  Gauss     122       122     1.47
CZTDetector_side_4.EnergyResolution  Gauss     662       662     4.125
CZTDetector_side_4.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_side_4.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_side_4.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_side_4.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_corner_1
CZTDetector_corner_1.SensitiveVolume     CZT_corner_1

CZTDetector_corner_1.TriggerThreshold 20
CZTDetector_corner_1.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_corner_1.DetectorVolume      CZT_corner_1


CZTDetector_corner_1.StructuralOffset    0.0   0.0   0.0
CZTDetector_corner_1.StructuralPitch     0.0   0.0   0.0

CZTDetector_corner_1.Offset              0.0   0.0    0.0
CZTDetector_corner_1.VoxelNumber         1.0     1.0      1.0

CZTDetector_corner_1.EnergyResolution  Gauss      14        14     1.15
CZTDetector_corner_1.EnergyResolution  Gauss      60        60     1.26
CZTDetector_corner_1.EnergyResolution  Gauss     122       122     1.47
CZTDetector_corner_1.EnergyResolution  Gauss     662       662     4.125
CZTDetector_corner_1.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_corner_1.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_corner_1.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_corner_1.FailureRate 0.0
#---------------------------------------------------------------------------

#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_corner_2
CZTDetector_corner_2.SensitiveVolume     CZT_corner_2

CZTDetector_corner_2.TriggerThreshold 20
CZTDetector_corner_2.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_corner_2.DetectorVolume      CZT_corner_2


CZTDetector_corner_2.StructuralOffset    0.0   0.0   0.0
CZTDetector_corner_2.StructuralPitch     0.0   0.0   0.0

CZTDetector_corner_2.Offset              0.0   0.0    0.0
CZTDetector_corner_2.VoxelNumber         1.0     1.0      1.0

CZTDetector_corner_2.EnergyResolution  Gauss      14        14     1.15
CZTDetector_corner_2.EnergyResolution  Gauss      60        60     1.26
CZTDetector_corner_2.EnergyResolution  Gauss     122       122     1.47
CZTDetector_corner_2.EnergyResolution  Gauss     662       662     4.125
CZTDetector_corner_2.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_corner_2.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_corner_2.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_corner_2.FailureRate 0.0
#---------------------------------------------------------------------------

#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_corner_3
CZTDetector_corner_3.SensitiveVolume     CZT_corner_3

CZTDetector_corner_3.TriggerThreshold 20
CZTDetector_corner_3.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_corner_3.DetectorVolume      CZT_corner_3


CZTDetector_corner_3.StructuralOffset    0.0   0.0   0.0
CZTDetector_corner_3.StructuralPitch     0.0   0.0   0.0

CZTDetector_corner_3.Offset              0.0   0.0    0.0
CZTDetector_corner_3.VoxelNumber         1.0     1.0      1.0

CZTDetector_corner_3.EnergyResolution  Gauss      14        14     1.15
CZTDetector_corner_3.EnergyResolution  Gauss      60        60     1.26
CZTDetector_corner_3.EnergyResolution  Gauss     122       122     1.47
CZTDetector_corner_3.EnergyResolution  Gauss     662       662     4.125
CZTDetector_corner_3.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_corner_3.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_corner_3.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_corner_3.FailureRate 0.0
#---------------------------------------------------------------------------
#-------------------------Sensitive detectors------------------------------


%%Note: later SIPMT is to be used with NaI, for which follow (most probably)
%
Voxel3D                         CZTDetector_corner_4
CZTDetector_corner_4.SensitiveVolume     CZT_corner_4

CZTDetector_corner_4.TriggerThreshold 20
CZTDetector_corner_4.NoiseThresholdEqualsTriggerThreshold true

CZTDetector_corner_4.DetectorVolume      CZT_corner_4


CZTDetector_corner_4.StructuralOffset    0.0   0.0   0.0
CZTDetector_corner_4.StructuralPitch     0.0   0.0   0.0

CZTDetector_corner_4.Offset              0.0   0.0    0.0
CZTDetector_corner_4.VoxelNumber         1.0     1.0      1.0

CZTDetector_corner_4.EnergyResolution  Gauss      14        14     1.15
CZTDetector_corner_4.EnergyResolution  Gauss      60        60     1.26
CZTDetector_corner_4.EnergyResolution  Gauss     122       122     1.47
CZTDetector_corner_4.EnergyResolution  Gauss     662       662     4.125
CZTDetector_corner_4.EnergyResolution  Gauss   10000     10000    16.04


CZTDetector_corner_4.EnergyResolution Gauss  10        10        {      10 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  20        20        {      20 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  50        50        {      50 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  100       100       {     100 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  200       200       {     200 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  500       500       {     500 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  1000      1000      {    1000 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  2000      2000      {    2000 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  5000      5000      {    5000 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  10000     10000     {   10000 *0.01/2.35 + 6.6  }
CZTDetector_corner_4.EnergyResolution Gauss  100000    100000    {  100000 *0.01/2.35 + 6.6  }

CZTDetector_corner_4.FailureRate 0.0
#---------------------------------------------------------------------------
%-------------------------------Trigger conditions--------------------------
