

(* ###############            EWSB       ################# *) 

ParticleDefinitions[EWSB] = { 


{Ah,{ 
     Description -> "Pseudo-Scalar Higgs", 
     FeynArtsNr -> 2, 
     LaTeX -> "A^0", 
     Mass -> {0, 0, LesHouches, LesHouches}, 
     OutputName -> "Ah", 
     PDG -> {0, 0, 36, 46}, 
     ElectricCharge -> 0, 
     Width -> {0, 0, External, External}}}, 

{Fd,{ 
     Description -> "Down-Quarks", 
     FeynArtsNr -> 4, 
     LaTeX -> "d", 
     Mass -> {0.0035, 0.104, 4.2}, 
     OutputName -> "d", 
     PDG -> {1, 3, 5}, 
     ElectricCharge -> -1/3, 
     Width -> {0, 0, 0}}}, 

{Fe,{ 
     Description -> "Leptons", 
     FeynArtsNr -> 2, 
     LaTeX -> "e", 
     Mass -> {0.000511, 0.105, 1.776}, 
     OutputName -> "e", 
     PDG -> {11, 13, 15}, 
     ElectricCharge -> -1, 
     Width -> {0, 0, 0}}}, 

{Fu,{ 
     Description -> "Up-Quarks", 
     FeynArtsNr -> 3, 
     LaTeX -> "u", 
     Mass -> {0.0015, 1.27, 171.2}, 
     OutputName -> "u", 
     PDG -> {2, 4, 6}, 
     ElectricCharge -> 2/3, 
     Width -> {0, 0, 1.51}}}, 

{Fv,{ 
     Description -> "Neutrinos", 
     FeynArtsNr -> 1, 
     LaTeX -> "\\nu", 
     Mass -> {
     LesHouches, LesHouches, LesHouches,
     LesHouches, LesHouches, LesHouches,
     LesHouches, LesHouches, LesHouches
     }, 
     OutputName -> "nu", 
     PDG -> {
     12, 14, 16, 
     6000012, 6000014, 6000016,
     99198,99199,99197
     }, 
     ElectricCharge -> 0, 
     Width -> {
     External, External, External,
     External, External, External,
     External, External, External
     }}}, 

{gG,{ 
     Description -> "Gluon Ghost", 
     FeynArtsNr -> 5, 
     LaTeX -> "\\eta^G", 
     Mass -> 0, 
     OutputName -> "gG", 
     PDG -> {0}, 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{gP,{ 
     FeynArtsNr -> 1, 
     LaTeX -> "\\eta^P", 
     Mass -> 0, 
     OutputName -> "gP", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{gWLm,{ 
     Description -> "Negative W-Boson Ghost", 
     FeynArtsNr -> 3, 
     LaTeX -> "\\eta_L^-", 
     Mass -> Mass[VWLm], 
     OutputName -> "gWLm", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> -1, 
     Width -> Automatic}}, 

{gWLmC,{ 
     Description -> "Positive W-Boson Ghost", 
     FeynArtsNr -> 4, 
     LaTeX -> "\\eta_L^+", 
     Mass -> Mass[VWLm], 
     OutputName -> "gWLp", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> 1, 
     Width -> Automatic}}, 

{gWRm,{ 
     Description -> "Negative W'-Boson Ghost", 
     FeynArtsNr -> 93, 
     LaTeX -> "\\eta_R^-", 
     Mass -> Mass[VWRm], 
     OutputName -> "gWRm", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> -1, 
     Width -> 0}}, 

{gWRmC,{ 
     Description -> "Positive W'-Boson Ghost", 
     FeynArtsNr -> 83, 
     LaTeX -> "\\eta_R^+", 
     Mass -> Mass[VWRm], 
     OutputName -> "gWRp", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> 1, 
     Width -> 0}}, 

{gZ,{ 
     Description -> "Z-Boson Ghost", 
     FeynArtsNr -> 2, 
     LaTeX -> "\\eta^Z", 
     Mass -> Mass[VZ], 
     OutputName -> "gZ", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> 0, 
     Width -> Automatic}}, 

{gZR,{ 
     Description -> "Z'-Ghost", 
     FeynArtsNr -> 10, 
     LaTeX -> "\\eta^{Z'}", 
     Mass -> Mass[VZR], 
     OutputName -> "gZp", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{hh,{ 
     Description -> "Higgs", 
     FeynArtsNr -> 1, 
     LaTeX -> "h", 
     Mass -> LesHouches, 
     OutputName -> "hh", 
     PDG -> {25, 35, 335, 445}, 
     ElectricCharge -> 0, 
     Width -> Automatic}}, 

{Hpm,{ 
     Description -> "Charged Higgs", 
     FeynArtsNr -> {0, 0, 3, 303}, 
     LaTeX -> "H^\\pm"(*{"H^-","H^+"}*), 
     Mass -> {0, 0, LesHouches, LesHouches}, 
     OutputName -> "Hpm" (*{"Hm","Hp"}*), 
     PDG -> {0, 0, -37, -47}, 
     ElectricCharge -> -1, 
     Width -> {0, 0, External, External}}}, 

{VG,{ 
     Description -> "Gluon", 
     FeynArtsNr -> 5, 
     LaTeX -> "g", 
     Mass -> 0, 
     OutputName -> "g", 
     PDG -> {21}, 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{VP,{ 
     Description -> "Photon", 
     FeynArtsNr -> 1, 
     LaTeX -> "\\gamma", 
     Mass -> 0, 
     OutputName -> "A", 
     PDG -> {22}, 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{VWLm,{ 
     Description -> "W-Boson", 
     Goldstone -> Hpm[{1}], 
     FeynArtsNr -> 3, 
     LaTeX -> {"W^-","W^+"}, 
     Mass -> Dependence, 
     MassDependence -> Sqrt[Mass[VZ]^2/2 Cos[ThetaW]^2], 
     OutputName -> {"WLm","WLp"}, 
     PDG -> {-24}, 
     ElectricCharge -> -1, 
     Width -> 2.141}}, 

{VWRm,{ 
     Goldstone -> Hpm[{2}], 
     FeynArtsNr -> 20, 
     LaTeX -> {"W_R^-","W_R^+"}, 
     Mass -> LesHouches, 
     OutputName -> {"WRm","WRp"}, 
     PDG -> {34}, 
     ElectricCharge -> -1, 
     Width -> Automatic}}, 

{VZ,{ 
     Description -> "Z-Boson", 
     Goldstone -> Ah[{1}], 
     FeynArtsNr -> 2, 
     LaTeX -> "Z", 
     Mass -> 91.1876, 
     OutputName -> "Z", 
     PDG -> {23}, 
     ElectricCharge -> 0, 
     Width -> 2.4952}}, 

{VZR,{ 
     Description -> "Z'-Boson", 
     Goldstone -> Ah[{2}], 
     FeynArtsNr -> 10, 
     LaTeX -> "{Z'}", 
     Mass -> LesHouches, 
     OutputName -> "Zp", 
     PDG -> {32}, 
     ElectricCharge -> 0, 
     Width -> Automatic}} 
}; 




(* ###############            GaugeES       ################# *) 

ParticleDefinitions[GaugeES] = { 


{chiL0,{ 
     FeynArtsNr -> {511}, 
     LaTeX -> "\\chi_{L0}", 
     Mass -> Automatic, 
     OutputName -> "chiL0", 
     PDG -> {0}, 
     ElectricCharge -> 0, 
     Width -> {0}}}, 

{chiLp,{ 
     FeynArtsNr -> {512}, 
     LaTeX -> {"\\chi_{L}^+","\\chi_{L}^-"}, 
     Mass -> Automatic, 
     OutputName -> {"chiLp","chiLm"}, 
     PDG -> {0}, 
     ElectricCharge -> 1, 
     Width -> {0}}},

{chiR0,{ 
     FeynArtsNr -> {501}, 
     LaTeX -> "\\chi_{R0}", 
     Mass -> Automatic, 
     OutputName -> "chiR0", 
     PDG -> {0}, 
     ElectricCharge -> 0, 
     Width -> {0}}}, 

{chiRp,{ 
     FeynArtsNr -> {502}, 
     LaTeX -> {"\\chi_{R}^+","\\chi_{R}^-"}, 
     Mass -> Automatic, 
     OutputName -> {"chiRp","chiRm"}, 
     PDG -> {0}, 
     ElectricCharge -> 1, 
     Width -> {0}}}, 

{Fd1,{ 
     Description -> "Dirac Left Down-Quark", 
     FeynArtsNr -> 120, 
     LaTeX -> "d^1", 
     Mass -> LesHouches, 
     OutputName -> "d1", 
     PDG -> {1, 3, 5}, 
     Width -> {0, 0, 0}}}, 

{Fd2,{ 
     Description -> "Dirac Right Down-Quark", 
     FeynArtsNr -> 121, 
     LaTeX -> "d^2", 
     Mass -> LesHouches, 
     OutputName -> "d2", 
     PDG -> {0, 0, 0}, 
     Width -> {0, 0, 0}}}, 

{Fe1,{ 
     Description -> "Dirac Left Electron", 
     FeynArtsNr -> 130, 
     LaTeX -> "e^1", 
     Mass -> LesHouches, 
     OutputName -> "e1", 
     PDG -> {11, 13, 15}, 
     Width -> {0, 0, 0}}}, 

{Fe2,{ 
     Description -> "Dirac Right Electron", 
     FeynArtsNr -> 131, 
     LaTeX -> "e^2", 
     Mass -> LesHouches, 
     OutputName -> "e2", 
     PDG -> {0, 0, 0}, 
     Width -> {0, 0, 0}}}, 

{Fu1,{ 
     Description -> "Dirac Left Up-Quark", 
     FeynArtsNr -> 110, 
     LaTeX -> "u^1", 
     Mass -> LesHouches, 
     OutputName -> "u1", 
     PDG -> {2, 4, 6}, 
     Width -> {0, 0, 0}}}, 

{Fu2,{ 
     Description -> "Dirac Right Up-Quark", 
     FeynArtsNr -> 111, 
     LaTeX -> "u^2", 
     Mass -> LesHouches, 
     OutputName -> "u2", 
     PDG -> {0, 0, 0}, 
     Width -> {0, 0, 0}}}, 

{Fv1,{ 
     Description -> "Dirac Left Neutrino", 
     FeynArtsNr -> 140, 
     LaTeX -> "\\nu^1", 
     Mass -> LesHouches, 
     OutputName -> "v1", 
     PDG -> {12, 14, 16}, 
     Width -> {0, 0, 0}}}, 

{Fv2,{ 
     Description -> "Dirac Right Neutrino", 
     FeynArtsNr -> 141, 
     LaTeX -> "\\nu^2", 
     Mass -> LesHouches, 
     OutputName -> "v2", 
     PDG -> {0, 0, 0}, 
     Width -> {0, 0, 0}}}, 

{Fs,     {   Description -> "s neutrino", 
		PDG -> {99198,99199,99197},
          FeynArtsNr -> 20,                  
		LaTeX -> "S_1",
          ElectricCharge -> 0,
          OutputName -> "S1" }}, 

{gB,{ 
     Description -> "B-Boson Ghost", 
     FeynArtsNr -> 1, 
     LaTeX -> "\\eta^B", 
     Mass -> 0, 
     OutputName -> "gB", 
     PDG -> {0}, 
     Width -> 0}},

{gG,{ 
     Description -> "Gluon Ghost", 
     FeynArtsNr -> 5, 
     LaTeX -> "\\eta^G", 
     Mass -> 0, 
     OutputName -> "gG", 
     PDG -> {0}, 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{gWL,{ 
     Description -> "W-Boson Ghost", 
     FeynArtsNr -> 2, 
     LaTeX -> "\\eta^W", 
     Mass -> 0, 
     OutputName -> "gW", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     Width -> 0}}, 

{gWR,{ 
     FeynArtsNr -> 3, 
     LaTeX -> "\\eta^{WR}", 
     Mass -> LesHouches, 
     OutputName -> "gWR", 
     PDG -> {0}   (* adjusted number of PDGs to number of generations  *), 
     Width -> Automatic}}, 

{H0,{ 
     FeynArtsNr -> 1, 
     LaTeX -> "H^0", 
     Mass -> Automatic, 
     OutputName -> "H0", 
     PDG -> {0}, 
     Width -> 0}}, 

{Hm,{ 
     Description -> "Charged Higgs", 
     FeynArtsNr -> {4}, 
     LaTeX -> {"H_2^-","H_2^+"}, 
     Mass -> {0}, 
     OutputName -> {"H2m","H2p"}, 
     PDG -> {0}, 
     ElectricCharge -> -1, 
     Width -> {0}}}, 

{Hp,{ 
     Description -> "Charged Higgs", 
     FeynArtsNr -> {500}, 
     LaTeX -> {"H_1^+","H_1^-"}, 
     Mass -> {0}, 
     OutputName -> {"H1p","H1m"}, 
     PDG -> {0}, 
     ElectricCharge -> 1, 
     Width -> {0}}}, 

{HPrime0,{ 
     FeynArtsNr -> 301, 
     LaTeX -> "{H'}^0", 
     Mass -> Automatic, 
     OutputName -> "Hp0", 
     PDG -> {0}, 
     Width -> Automatic}}, 


{VB,{ 
     Description -> "B-Boson", 
     FeynArtsNr -> 1, 
     LaTeX -> "B", 
     Mass -> 0, 
     OutputName -> "B", 
     PDG -> {0}, 
     Width -> 0}},

{VG,{ 
     Description -> "Gluon", 
     FeynArtsNr -> 5, 
     LaTeX -> "g", 
     Mass -> 0, 
     OutputName -> "g", 
     PDG -> {21}, 
     ElectricCharge -> 0, 
     Width -> 0}}, 

{VWL,{ 
     Description -> "W-Bosons", 
     FeynArtsNr -> 2, 
     LaTeX -> "W", 
     Mass -> 0, 
     OutputName -> "W", 
     PDG -> {0, 24, 25}   (* adjusted number of PDGs to number of generations  *), 
     Width -> 0}}, 

{VWR,{ 
     FeynArtsNr -> 20, 
     LaTeX -> "W_R", 
     Mass -> LesHouches, 
     OutputName -> "WR", 
     PDG -> {29, 30, 31}   (* adjusted number of PDGs to number of generations  *), 
     Width -> Automatic}} 
}; 




(* ###############            Weyl Spinors and intermediate states       ################# *) 

WeylFermionAndIndermediate = { 
 

{dL,{ 
     LaTeX -> "d_L"}}, 

{uL,{ 
     LaTeX -> "u_L"}}, 

{eL,{ 
     LaTeX -> "e_L"}}, 

{nuL,{ 
     LaTeX -> "\\nu_L"}}, 

{dR,{ 
     LaTeX -> "d_R"}}, 

{uR,{ 
     LaTeX -> "u_R"}}, 

{eR,{ 
     LaTeX -> "e_R"}}, 

{nuR,{ 
     LaTeX -> "\\nu_R"}},

{s1,{ 
     LaTeX -> "s_1"}},

{S1,{ 
     LaTeX -> "S_1"}},

{DL,{ 
     LaTeX -> "D_L"}}, 

{DR,{ 
     LaTeX -> "D_R"}}, 

{UL,{ 
     LaTeX -> "U_L"}}, 

{UR,{ 
     LaTeX -> "U_R"}}, 

{EL,{ 
     LaTeX -> "E_L"}}, 

{ER,{ 
     LaTeX -> "E_R"}}, 

{Fv0,{ 
     LaTeX -> "\\nu_0"}}, 

{sigmaH10,{ 
     LaTeX -> "\\sigma_{H10}"}}, 

{phiH10,{ 
     LaTeX -> "\\phi_{H10}"}}, 

{sigmaH20,{ 
     LaTeX -> "\\sigma_{H20}"}}, 

{phiH20,{ 
     LaTeX -> "\\phi_{H20}"}}, 

{sigmaR0,{ 
     LaTeX -> "\\sigma_{R0}"}}, 

{phiR0,{ 
     LaTeX -> "\\phi_{R0}"}}, 

{sigmaL0,{ 
     LaTeX -> "\\sigma_{L0}"}}, 

{phiL0,{ 
     LaTeX -> "\\phi_{L0}"}}, 

{chiR,{ 
     LaTeX -> "\\hat{\\chi_R}^c"}}, 

{Phi,{ 
     LaTeX -> "\\Phi"}}, 


{chiL,{ 
     LaTeX -> "{\\chi}_{l}"   (* auto generated LaTeX name *)}}, 

{LLbar,{ 
     LaTeX -> "\\bar{ll}"   (* auto generated LaTeX name *)}}, 

{LR,{ 
     LaTeX -> "lr"   (* auto generated LaTeX name *)}}, 

{QLbar,{ 
     LaTeX -> "\\bar{ql}"   (* auto generated LaTeX name *)}}, 

{QR,{ 
     LaTeX -> "qr"   (* auto generated LaTeX name *)}}, 

{VB,{ 
     LaTeX -> "B"   (* auto generated LaTeX name *)}}, 

{VG,{ 
     LaTeX -> "G"   (* auto generated LaTeX name *)}}, 

{VWL,{ 
     LaTeX -> "{W}_L"   (* auto generated LaTeX name *)}}, 

{VWR,{ 
     LaTeX -> "{W}_R"   (* auto generated LaTeX name *)}} 
}; 




