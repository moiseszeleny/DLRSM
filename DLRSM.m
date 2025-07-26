(* ::Package:: *)

Off[General::spell]

Model`Name = "DLRSM";
Model`NameLaTeX ="Doublet Left-Right Symmetric Model";
Model`Authors = "M. Zeleny";
Model`Date = "2025-5-20";




(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Gauge Groups *)

Gauge[[1]]={B,   U[1], bminl,       gBL,False};
Gauge[[2]]={WL, SU[2], left,        g2,True};
Gauge[[3]]={WR, SU[2], right,       g2,True}; (*assuming g2 = gR*)
Gauge[[4]]={G,  SU[3], color,       g3,False};


(* Matter Fields: Using Q=T3L+T3R+QBL*)
(* QLbar = {uL, dL}^T, LLbar = {nuL, eL}^T, QR = {uR, dR}^T, LR = {nuR, eR}^T *)

FermionFields[[1]] = {QLbar, 3, {conj[uL], conj[dL]},     -1/6, -2, 1,  -3};  
FermionFields[[2]] = {LLbar, 3, {conj[nuL], conj[eL]},    1/2, -2, 1,  1};
FermionFields[[3]] = {QR,  3, {uR,  dR},    1/6, 1, 2, 3};
FermionFields[[4]] = {LR,  3, {nuR, eR},     -1/2, 1,  2, 1};

FermionFields[[5]] = {s1, 3, S1, 0,  1, 1,   1};


ScalarFields[[1]]  = {Phi, 1, {{H0, Hp},{Hm, HPrime0}},      0,  2,  -2, 1}; 
ScalarFields[[2]]  = {chiR,1, {chiRp, chiR0}, 1/2, 1, 2, 1};
ScalarFields[[3]]  = {chiL,1, {chiLp, chiL0}, 1/2, 2, 1, 1};


(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput] = {
	{LagHC, {AddHC->True}},
	{LagNoHC,{AddHC->False}}};


LagNoHC = -(
  -mu12 Delta[rig1,rig2] Delta[lef2,lef1] Phi.conj[Phi]
  + lam1 Delta[rig1,rig2] Delta[lef2,lef1] Delta[rig3,rig4] Delta[lef4,lef3] 
        Phi.conj[Phi].Phi.conj[Phi]
  + lam2 Delta[lef1,lef2] Delta[rig2,rig3] Delta[lef3,lef4] Delta[rig1,rig4] 
        Phi.conj[Phi].Phi.conj[Phi] 
  + (1/2) lam3 (
      epsTensor[lef1,lef2] epsTensor[rig1,rig2] epsTensor[lef3,lef4] epsTensor[rig3,rig4] conj[Phi].conj[Phi].conj[Phi].conj[Phi]
      + epsTensor[rig1,rig2] epsTensor[lef1,lef2] epsTensor[rig3,rig4] epsTensor[lef3,lef4] Phi.Phi.Phi.Phi
      + 2 epsTensor[lef1,lef2] epsTensor[rig1,rig2] epsTensor[rig3,rig4] epsTensor[lef3,lef4] conj[Phi].conj[Phi].Phi.Phi                              
  )
  + (1/2) lam4 (
      epsTensor[lef1,lef2] epsTensor[rig1,rig2] epsTensor[lef3,lef4] epsTensor[rig3,rig4] conj[Phi].conj[Phi].conj[Phi].conj[Phi] 
      + epsTensor[rig1,rig2] epsTensor[lef1,lef2] epsTensor[rig3,rig4] epsTensor[lef3,lef4] Phi.Phi.Phi.Phi
      - 2 epsTensor[lef1,lef2] epsTensor[rig1,rig2] epsTensor[rig3,rig4] epsTensor[lef3,lef4] conj[Phi].conj[Phi].Phi.Phi                                    
    )
  + lam5 epsTensor[rig2,rig3] epsTensor[rig1,rig4] Delta[lef1, lef2] Delta[lef3, lef4] conj[Phi].Phi.Phi.conj[Phi] 
  + (1/2) lam6 (
    epsTensor[lef1,lef2] epsTensor[rig2,rig3] epsTensor[lef3,lef4] epsTensor[rig4,rig1] conj[Phi].conj[Phi].conj[Phi].conj[Phi]
    + epsTensor[rig4,rig1] epsTensor[lef1,lef2] epsTensor[rig2,rig3] epsTensor[lef3,lef4] Phi.Phi.Phi.Phi
    )
  - mu22 (conj[chiL].chiL + conj[chiR].chiR)
  + rho1 conj[chiL].chiL.conj[chiL].chiL + rho1 conj[chiR].chiR.conj[chiR].chiR             (* ρ₁ (χ_L†χ_L)² + (χ_R†χ_R)² *)
  + rho2 conj[chiL].chiL.conj[chiR].chiR                                                   (* ρ₂ χ_L†χ_L χ_R†χ_R *)
  + alp1(
    Delta[rig1,rig2] Delta[lef1,lef2] Delta[lef3, lef4] conj[Phi].Phi.conj[chiL].chiL
    + Delta[rig1,rig2] Delta[lef1,lef2] Delta[rig3, rig4] conj[Phi].Phi.conj[chiR].chiR
  )
  + alp2 (
      Delta[lef1, lef2] Delta[rig2, rig3] Delta[lef3, lef4] conj[chiL].Phi.conj[Phi].chiL 
      + Delta[rig1, rig2] Delta[lef2, lef3] Delta[rig3, rig4] conj[chiR].conj[Phi].Phi.chiR
    )                                                                                      (* α₂ χ_L†ΦΦ†χ_L + χ_R†Φ†Φχ_R *)
  + alp3 (
      epsTensor[lef2,lef1] epsTensor[lef3,lef4] Delta[rig2, rig3] conj[chiL].conj[Phi].Phi.chiL 
      + epsTensor[rig1,rig2] epsTensor[rig4,rig3] Delta[lef2, lef3] conj[chiR].Phi.conj[Phi].chiR
    ) 
)


LagHC = - ( Y Phi.LLbar.LR 
          + Yt conj[Phi].LLbar.LR 
          + YQ1 QLbar.Phi.QR 
          + YQ2 QLbar.conj[Phi].QR 
          + YL epsTensor[lef1, lef2] LLbar.conj[chiL].s1 + YR epsTensor[rig1, rig2] conj[LR].conj[chiR].s1 + Mux/2 s1.s1
          );


(* Gauge Sector *)
DEFINITION[EWSB][GaugeSector] =
{ {{VWL[3],VWR[3],VB},{VP,VZ,VZR},ZZ},
  {{VWL[1],VWL[2],VWR[1],VWR[2]},{VWLm,conj[VWLm],VWRm,conj[VWRm]},ZW} };     
        
(* ----- VEVs ---- *)
DEFINITION[EWSB][VEVs]={
{H0,       {k1, 1/Sqrt[2]}, 
                    {sigmaH10, I/Sqrt[2]},{phiH10, 1/Sqrt[2]}},
{HPrime0, {0, 0}, 
                    {sigmaH20, I/Sqrt[2]},{phiH20,1/Sqrt[2]}},
{chiR0, {vR, 1/Sqrt[2]}, 
                    {sigmaR0, I/Sqrt[2]},{phiR0,1/Sqrt[2]}},
{chiL0, {0, 0}, 
                    {sigmaL0, I/Sqrt[2]},{phiL0,1/Sqrt[2]}} };

DEFINITION[EWSB][MatterSector]=   
    { (*Neutral scalars*)
    {{phiH20,phiL0,phiH10,phiR0},{hh,ZH}},
      (*Pseudoscalars*)
    {{sigmaH20,sigmaL0,sigmaH10,sigmaR0},{Ah,UP}},
      (*Singly charged scalars*)
    {{Hm, conj[chiLp] , conj[Hp], conj[chiRp]},{Hpm,UC}},
      (*Fermions*)
    {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
    {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
    {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
    {{nuL,conj[nuR],S1},{Fv0,ZM}}
    (*,{{S1},{Fs,Mux}}*)
    };  


(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)


DEFINITION[GaugeES][DiracSpinors]={
  Fd1 -> {dL, 0},
  Fd2 -> {0, dR},
  Fu1 -> {uL, 0},
  Fu2 -> {0, uR},
  Fe1 -> {eL, 0},
  Fe2 -> {0, eR},
  Fv1  -> {nuL,0},
  Fv2 -> {0,nuR},
  Fs -> {S1, conj[S1]}
  };



DEFINITION[EWSB][DiracSpinors]={
Fd ->{  DL, conj[DR]},
Fe ->{  EL, conj[ER]},
Fu ->{  UL, conj[UR]},
Fv ->{Fv0, conj[Fv0]}
(*,Fs -> {S1, conj[S1]}*)
};
