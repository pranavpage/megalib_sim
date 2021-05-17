
AbsorptionFileDirectory $(MEGALIB)/resource/examples/geomega/materials

Material Vacuum
Vacuum.Density                  1E-12
Vacuum.Component                H   1



Material CZT
CZT.Density                     6.06
CZT.ComponentByAtoms            Cd    9
CZT.ComponentByAtoms            Zn   1
CZT.ComponentByAtoms            Te   10


Material CsI
CsI.Density                     4.5
CsI.Component                   Cs  1
CsI.Component                   I   1


Material PMTPlastic
PMTPlastic.Density                     1.0
PMTPlastic.Component               H   8
PMTPlastic.Component               C   5
PMTPlastic.Component               O   2


Material NaI
NaI.Density                     3.67
NaI.Component                   Na  1
NaI.Component                   I   1

Material PCB
PCB.Density                     1.2
PCB.Component                   H   8
PCB.Component                   C   5
PCB.Component                   O   2

Material Aluminium
Aluminium.Density               2.7
Aluminium.Component             Al  1

Material active_si_recoil
active_si_recoil.Density 2.33
active_si_recoil.ComponentByMass 28.08 14.0 1
