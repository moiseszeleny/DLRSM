# DLRSM - Doublet Left-Right Symmetric Model

A SARAH model implementation of the Doublet Left-Right Symmetric Model (DLRSM) with Manifest Left-Right symmetry (MLRS) ($g_L = g_R$).

## Model Description

The Doublet Left-Right Symmetric Model (DLRSM) is an extension of the Standard Model that incorporates left-right symmetry through an additional SU(2)_R gauge group. This implementation assumes gauge coupling unification where $g_L = g_R$.

### Key Features

- **Left-Right Symmetry**: The model includes both SU(2)_L and SU(2)_R gauge groups with equal coupling constants (MLRS).
- **Extended Scalar Sector**: Contains bidoublet Higgs field Φ and left/right triplet fields χ_L, χ_R
- **Right-Handed Neutrinos**: Naturally incorporates right-handed neutrinos for neutrino mass generation
- **Sterile Fermions**: Includes additional singlet fermions s1

## Gauge Structure

The model is based on the gauge group:
$$G = SU(2)_L \times SU(2)_R \times U(1)_{B-L} \times SU(3)_C$$

Where:
- **$SU(2)_L$**: Standard Model left-handed weak isospin with coupling $g_L$
- **$SU(2)_R$**: Right-handed weak isospin with coupling $g_R = g_L$ (MLRS condition)
- **$U(1)_{B-L}$**: Baryon minus lepton number with coupling $g_{BL}$
- **$SU(3)_C$**: Strong interactions with coupling $g_3$

## Particle Content

### Fermion Fields

| Field | Generations | Components | $Q_{B-L}$ | $SU(2)_L$ | $SU(2)_R$ | $SU(3)_C$ |
|-------|-------------|------------|-----------|-----------|-----------|-----------|
| $\bar{Q}_L$ | 3 | $\{\bar{u}_L, \bar{d}_L\}$ | $-1/6$ | $\mathbf{2}$ | $\mathbf{1}$ | $\mathbf{\bar{3}}$ |
| $\bar{L}_L$ | 3 | $\{\bar{\nu}_L, \bar{e}_L\}$ | $1/2$ | $\mathbf{2}$ | $\mathbf{1}$ | $\mathbf{1}$ |
| $Q_R$ | 3 | $\{u_R, d_R\}$ | $1/6$ | $\mathbf{1}$ | $\mathbf{2}$ | $\mathbf{3}$ |
| $L_R$ | 3 | $\{\nu_R, e_R\}$ | $-1/2$ | $\mathbf{1}$ | $\mathbf{2}$ | $\mathbf{1}$ |
| $s_1$ | 3 | $S_1$ | $0$ | $\mathbf{1}$ | $\mathbf{1}$ | $\mathbf{1}$ |

### Scalar Fields

| Field | Components | $Q_{B-L}$ | $SU(2)_L$ | $SU(2)_R$ | $SU(3)_C$ |
|-------|------------|-----------|-----------|-----------|-----------|
| $\Phi$ | $\begin{pmatrix} H^0 & H^+ \\ H^- & H'^0 \end{pmatrix}$ | $0$ | $\mathbf{2}$ | $\mathbf{\bar{2}}$ | $\mathbf{1}$ |
| $\chi_R$ | $\begin{pmatrix} \chi_R^+ \\ \chi_R^0 \end{pmatrix}$ | $1/2$ | $\mathbf{1}$ | $\mathbf{2}$ | $\mathbf{1}$ |
| $\chi_L$ | $\begin{pmatrix} \chi_L^+ \\ \chi_L^0 \end{pmatrix}$ | $1/2$ | $\mathbf{2}$ | $\mathbf{1}$ | $\mathbf{1}$ |

## Files Description

### Core Model Files

- **`DLRSM.m`**: Main model file containing:
  - Gauge group definitions
  - Particle content specifications
  - Lagrangian definitions (scalar potential and Yukawa terms)
  - Symmetry breaking patterns
  - Mass matrix definitions

- **`parameters.m`**: Parameter definitions including:
  - Gauge couplings ($g_L = g_R$, $g_{BL}$, $g_3$)
  - Scalar potential parameters ($\lambda_1$-$\lambda_6$, $\rho_1$-$\rho_2$, $\alpha_1$-$\alpha_3$)
  - Yukawa coupling matrices ($Y$, $Y_t$, $Y_{Q1}$, $Y_{Q2}$, $Y_L$, $Y_R$)
  - Mass parameters ($\mu_1^2$, $\mu_2^2$, $M_{ux}$)

- **`particles.m`**: Physical particle definitions after EWSB:
  - Mass eigenstates
  - Mixing matrices
  - PDG codes and particle properties

- **`SPheno.m`**: SPheno configuration file for:
  - Numerical parameter input (MINPAR block)
  - Real parameter specifications
  - Interface with SPheno spectrum generator

## Scalar Potential

The scalar potential includes terms for:

### Bidoublet Self-Interactions
$$V_{\Phi} = -\mu_1^2 \text{Tr}[\Phi^\dagger \Phi] + \lambda_1 [\text{Tr}(\Phi^\dagger \Phi)]^2 + \lambda_2 \text{Tr}[(\Phi^\dagger \Phi)^2] + \frac{1}{2}\lambda_3 [\text{Tr}(\Phi \Phi^\dagger)]^2 + \frac{1}{2}\lambda_4 [\text{Tr}(\Phi \Phi^\dagger)]^2$$

Where:
- $\lambda_1, \lambda_2$: Standard quartic terms
- $\lambda_3, \lambda_4$: P and CP violating terms  
- $\lambda_5, \lambda_6$: Additional quartic interactions

### Triplet Self-Interactions
$$V_{\chi} = -\mu_2^2 (\chi_L^\dagger \chi_L + \chi_R^\dagger \chi_R) + \rho_1 [(\chi_L^\dagger \chi_L)^2 + (\chi_R^\dagger \chi_R)^2] + \rho_2 (\chi_L^\dagger \chi_L)(\chi_R^\dagger \chi_R)$$

Where:
- $\rho_1$: Diagonal triplet quartic terms
- $\rho_2$: Mixed triplet interaction

### Bidoublet-Triplet Interactions
$$V_{\Phi\chi} = \alpha_1 \text{Tr}[\Phi^\dagger \Phi](\chi_L^\dagger \chi_L + \chi_R^\dagger \chi_R) + \alpha_2 (\chi_L^\dagger \Phi \Phi^\dagger \chi_L + \chi_R^\dagger \Phi^\dagger \Phi \chi_R) + \alpha_3 (\chi_L^\dagger \Phi^\dagger \Phi \chi_L + \chi_R^\dagger \Phi \Phi^\dagger \chi_R)$$

Where:
- $\alpha_1$: $\Phi^\dagger\Phi$ interactions with triplets
- $\alpha_2$: $\Phi\Phi^\dagger$ mixed terms
- $\alpha_3$: Left-right mixing interactions

## Symmetry Breaking Pattern

The model undergoes a two-step symmetry breaking:

1. **Right-handed scale**: $\langle\chi_R^0\rangle = v_R$, breaking $SU(2)_R \times U(1)_{B-L} \to U(1)_Y$
2. **Electroweak scale**: $\langle H^0\rangle = k_1$, breaking $SU(2)_L \times U(1)_Y \to U(1)_{EM}$

$$SU(2)_L \times SU(2)_R \times U(1)_{B-L} \times SU(3)_C \xrightarrow{v_R} SU(2)_L \times U(1)_Y \times SU(3)_C \xrightarrow{k_1} U(1)_{EM} \times SU(3)_C$$

The VEV structure is:
$$\langle\Phi\rangle = \begin{pmatrix} k_1/\sqrt{2} & 0 \\ 0 & 0 \end{pmatrix}, \quad \langle\chi_R\rangle = \begin{pmatrix} 0 \\ v_R/\sqrt{2} \end{pmatrix}, \quad \langle\chi_L\rangle = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$$

## Usage with SARAH

This model is designed to work with the SARAH (Mathematica package for model building). To use:

1. Load the model in SARAH:
```mathematica
$PATH = "path/to/DLRSM/";
<< SARAH`
Start["DLRSM"];
```

2. Generate model files:
```mathematica
MakeAll[];
```

3. For SPheno integration:
```mathematica
MakeSPheno[];
```

## Physical Outputs

After symmetry breaking, the model predicts:

### Scalar Sector
- 4 CP-even neutral scalars (hh)
- 4 CP-odd neutral scalars (Ah) 
- 4 charged scalars (Hpm)

### Gauge Sector
- Photon ($A_\mu$, massless)
- $Z$ boson (SM-like, mass $\sim k_1$)
- $Z'$ boson (heavy, mass $\sim g_{BL} v_R$)
- $W^\pm_L$ bosons (SM-like, mass $\sim g_L k_1/2$)
- $W^\pm_R$ bosons (heavy, mass $\sim g_R v_R/2$)

### Fermion Sector
- Standard Model fermions with modified mixing
- Heavy right-handed neutrinos (mass $\sim Y_R v_R$)
- Additional sterile fermions (mass $\sim \mu_{x}$)

## Authors and References

- **Author**: M. Zeleny
- **Date**: 2025-05-20
- **Model**: Doublet Left-Right Symmetric Model
- **Bibliography**: 
  - Senjanović, Goran, "Spontaneous breakdown of parity in a class of gauge theories", Nuclear Physics B 153 (1979), pp. 334-364.
  - Brdar, Vedran and Smirnov, Alexei Yu, "Low Scale Left-Right Symmetry and Naturally Small Neutrino Mass", JHEP 02 (2019), pp. 045.

## Requirements

- SARAH (Mathematica package)
- Mathematica 10.0 or higher
- Optional: SPheno for numerical calculations

## License

This model implementation is provided for research purposes. Please cite appropriately when using in publications.
