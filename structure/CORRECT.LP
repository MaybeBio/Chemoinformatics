
 ***** CORRECT ***** (VERSION Feb 5, 2021  BUILT=20210323)   6-May-2021

 INPUT PARAMETER VALUES
 ----------------------
 SPACE_GROUP_NUMBER=   19 as used in the INTEGRATE step
 UNIT_CELL_CONSTANTS=    40.159    85.846   114.073  90.000  90.000  90.000 as used by INTEGRATE
 FRIEDEL'S_LAW=TRUE 
 PROFILE_FITTING= TRUE 
 OVERLOAD=   2275950     MINPK=  75.00000    WFAC1=   1.0
 INCLUDE_RESOLUTION_RANGE=    50.000     2.080
 NAME_TEMPLATE_OF_DATA_FRAMES=/home/DATA/09302022BL02U1/P2S14_1/P2S14_1_??????.cbf CBF
 DATA_RANGE=       1     355
 ROTATION_AXIS= -0.999963  0.003868  0.007710
 OSCILLATION_RANGE=  0.500000
 STARTING_ANGLE=     0.000     STARTING_FRAME=       1
 X-RAY_WAVELENGTH=  0.979145
 INCIDENT_BEAM_DIRECTION=  0.000824  0.001633  0.999998
 FRACTION_OF_POLARIZATION=   0.990
 POLARIZATION_PLANE_NORMAL=  0.000000  1.000000  0.000000
 AIR=   0.00032
 DETECTOR=PILATUS
 SILICON=  3.702907 SENSOR_THICKNESS=  0.450000
 NUMBER OF DETECTOR SEGMENTS   1
 NX=  3108  NY=  3262    QX=  0.075000  QY=  0.075000
 ORGX=   1732.01  ORGY=   1694.61
 DETECTOR_DISTANCE=   233.799
 DIRECTION_OF_DETECTOR_X-AXIS=  -1.00000   0.00000   0.00000
 DIRECTION_OF_DETECTOR_Y-AXIS=   0.00000  -1.00000   0.00000
 BEAM_DIVERGENCE_E.S.D.=   0.045
 REFLECTING_RANGE_E.S.D.=   0.139
 MINIMUM_ZETA=     0.050
 MAXIMUM_ERROR_OF_SPOT_POSITION=   3.0
 MAXIMUM_ERROR_OF_SPINDLE_POSITION=   2.0
 MINIMUM_I/SIGMA=   3.0
 REFLECTIONS/CORRECTION_FACTOR=      50
 SNRC=  0.10 I/sigma for use in scaling factor determination
 STRICT_ABSORPTION_CORRECTION=FALSE 
 CORRECTIONS= DECAY MODULATION ABSORPTION                      
 REFERENCE_DATA_SET=                                                  
 FIT_B-FACTOR_TO_REFERENCE_DATA_SET=FALSE 
 EXCLUDE_DATA_RANGE=    30    65
 EXCLUDE_DATA_RANGE=   280   325

  121925 REFLECTIONS ON FILE "INTEGRATE.HKL"
       0 CORRUPTED REFLECTION RECORDS (IGNORED)
       0 MATCHING REFLECTIONS SPECIFIED IN FILE "FILTER.HKL"
      26 REFLECTIONS INCOMPLETE OR OUTSIDE IMAGE RANGE       1 ...     355
       0 OVERLOADED REFLECTIONS (IGNORED)
      89 REFLECTIONS OUTSIDE ACCEPTED RESOLUTION RANGES
                OR TOO CLOSE TO ROTATION AXIS (IGNORED)
  121810 REFLECTIONS ACCEPTED



 ******************************************************************************
                      AUTOMATIC SPACE GROUP ASSIGNMENT
 ******************************************************************************

 XDS adopts the following approach.
 (1) it looks for possible symmetries of the crystal lattice
 (2) it computes a redundancy independent R-factor for all enantiomorphous
     point groups compatible with the observed lattice symmetry.
 (3) it selects the group which explains the intensity data at an acceptable,
     redundancy-independent R-factor (Rmeas, Rrim) using a minimum number of
     unique reflections.

 This approach does not test for the presence of screw axes. Consequently,
 orthorhombic cell axes will be specified in increasing length (following
 conventions), despite the possibility that different assignments for the
 cell axes could become necessary for space groups P222(1) and P2(1)2(1)2
 containing one or two screw axes, respectively.

 The user can always override the automatic decisions by specifying the
 correct space group number and unit cell constants in XDS.INP and repeating
 the CORRECT step of XDS. This provides a simple way to rename orthorhombic
 cell constants if screw axes are present.

 In addition, the user has the option to specify in XDS.INP
 (a) a reference data set or
 (b) a reindexing transformation or
 (c) the three basis vectors (if known from processing a previous data set
 taken at the same crystal orientation in a multi-wavelength experiment).
 These features of XDS are useful for resolving the issue of alternative
 settings of polar or rhombohedral cells (like P4, P6, R3).

 =====> Specifications provided by the user in XDS.INP:
 SPACE_GROUP_NUMBER=   19 (0: unknown symmetry and unit cell)
 UNIT_CELL_CONSTANTS=    39.98    85.55   113.74  90.000  90.000  90.000
 UNIT_CELL_A-AXIS=     0.000     0.000     0.000 (0 0 0 : unknown)
 UNIT_CELL_B-AXIS=     0.000     0.000     0.000 (0 0 0 : unknown)
 UNIT_CELL_C-AXIS=     0.000     0.000     0.000 (0 0 0 : unknown)
 REIDX=  0  0  0  0  0  0  0  0  0  0  0  0 (all 0 : not specified)
 TEST_RESOLUTION_RANGE=   10.00    5.00 (Angstrom) for space group determination
 NUMBER OF ACCEPTED REFLECTIONS FOR CALCULATING Rmeas             7813
 NUMBER OF ACCEPTED UNIQUE REFLECTIONS FROM REFERENCE DATA SET       0


 *********** DETERMINATION OF LATTICE CHARACTER AND BRAVAIS LATTICE ***********

 The CHARACTER OF A LATTICE is defined by the metrical parameters of its
 reduced cell as described in the INTERNATIONAL TABLES FOR CRYSTALLOGRAPHY
 Volume A, p. 746 (KLUWER ACADEMIC PUBLISHERS, DORDRECHT/BOSTON/LONDON, 1989).
 Note that more than one lattice character may have the same BRAVAIS LATTICE.

 A lattice character is marked "*" to indicate a lattice consistent with the
 observed locations of the diffraction spots. These marked lattices must have
 low values for the QUALITY OF FIT and their implicated UNIT CELL CONSTANTS
 should not violate the ideal values by more than
 MAX_CELL_AXIS_ERROR=  0.03
 MAX_CELL_ANGLE_ERROR=           2.0 (Degrees)

 The REINDEXING TRANSFORMATION REIDX() consists of 12 integers that relate
 the original indices H,K,L from file INTEGRATE.HKL to the indices H',K',L'
 with respect to the new cell.
    H'=(REIDX(1)*H+REIDX( 2)*K+REIDX( 3)*L)/IDXV+REIDX( 4)
    K'=(REIDX(5)*H+REIDX( 6)*K+REIDX( 7)*L)/IDXV+REIDX( 8)
    L'=(REIDX(9)*H+REIDX(10)*K+REIDX(11)*L)/IDXV+REIDX(12)
 The value of the integer IDXV depends on the lattice type used for
 specifying reflections on file INTEGRATE.HKL; IDXV is
 1 for a primitive,
 2 for a face or body centred,
 3 for a rhombohedral,
 4 for a lattice centred on all faces.
 IDXV is set by XDS and cannot be input by the user.

  LATTICE-  BRAVAIS-   QUALITY  UNIT CELL CONSTANTS (ANGSTROEM & DEGREES)    REINDEXING TRANSFORMATION
 CHARACTER  LATTICE     OF FIT      a      b      c   alpha  beta gamma

 *  44        aP          0.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
 *  31        aP          0.0      40.2   85.8  114.1  90.0  90.0  90.0   -1  0  0  0  0 -1  0  0  0  0  1  0
 *  35        mP          0.0      85.8   40.2  114.1  90.0  90.0  90.0    0 -1  0  0 -1  0  0  0  0  0 -1  0
 *  33        mP          0.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
 *  34        mP          0.0      40.2  114.1   85.8  90.0  90.0  90.0   -1  0  0  0  0  0 -1  0  0 -1  0  0
 *  32        oP          0.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
    37        mC        250.0     231.7   40.2   85.8  90.0  90.0  80.0    1  0  2  0  1  0  0  0  0  1  0  0
    39        mC        250.0     176.3   40.2  114.1  90.0  90.0  76.8   -1 -2  0  0 -1  0  0  0  0  0 -1  0
    36        oC        250.0      40.2  231.7   85.8  90.0  90.0 100.0    1  0  0  0 -1  0 -2  0  0  1  0  0
    28        mC        250.0      40.2  231.7   85.8  90.0  90.0  80.0    1  0  0  0  1  0  2  0  0 -1  0  0
    38        oC        250.0      40.2  176.3  114.1  90.0  90.0 103.2   -1  0  0  0  1  2  0  0  0  0 -1  0
    29        mC        250.0      40.2  176.3  114.1  90.0  90.0  76.8   -1  0  0  0 -1 -2  0  0  0  0  1  0
    27        mC        500.0     176.3   40.2  142.8  90.0 125.8  76.8    1 -2  0  0  1  0  0  0  0  1  1  0
    26        oF        625.0      40.2  176.3  231.7  87.7 100.0 103.2   -1  0  0  0  1 -2  0  0  1  0  2  0
     1        cF        999.0     148.3  148.3  148.3 109.3  79.4 148.6   -1  1  1  0 -1 -1 -1  0  1 -1  1  0
     2        hR        999.0      94.8  120.9  148.3 129.5  65.8  98.1    1  1  0  0 -1  0 -1  0 -1  1  1  0
     3        cP        999.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
     5        cI        999.0     120.9   94.8  142.8  57.0  41.1  81.9    1  0  1  0  1  1  0  0  0  1  1  0
     4        hR        999.0      94.8  120.9  148.3 129.5  65.8  98.1    1 -1  0  0 -1  0  1  0 -1 -1 -1  0
     6        tI        999.0     142.8  120.9   94.8  81.9  57.0  41.1    0  1  1  0  1  0  1  0  1  1  0  0
     7        tI        999.0     120.9   94.8  142.8  57.0  41.1  81.9    1  0  1  0  1  1  0  0  0  1  1  0
     8        oI        999.0      94.8  114.1  148.3  39.7  65.8  90.0   -1  1  0  0  0  0  1  0  1  1  1  0
     9        hR        999.0      40.2   94.8  355.1  99.8  96.5 115.1   -1  0  0  0  1 -1  0  0  1  1  3  0
    10        mC        999.0      94.8   94.8  114.1  90.0  90.0 129.9   -1 -1  0  0 -1  1  0  0  0  0 -1  0
    11        tP        999.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
    12        hP        999.0      40.2   85.8  114.1  90.0  90.0  90.0    1  0  0  0  0  1  0  0  0  0  1  0
    13        oC        999.0      94.8   94.8  114.1  90.0  90.0  50.1    1  1  0  0 -1  1  0  0  0  0  1  0
    15        tI        999.0      40.2   85.8  247.0  69.7  80.6  90.0    1  0  0  0  0  1  0  0  1  1  2  0
    16        oF        999.0      94.8   94.8  247.0 112.6 104.2  50.1   -1 -1  0  0  1 -1  0  0 -1  1  2  0
    14        mC        999.0      94.8   94.8  114.1  90.0  90.0  50.1    1  1  0  0 -1  1  0  0  0  0  1  0
    17        mC        999.0      94.8   94.8  114.1  90.0  90.0  50.1    1 -1  0  0 -1 -1  0  0  0  0 -1  0
    18        tI        999.0     142.8  148.3   40.2  74.3  90.0 105.5    0  1  1  0 -1  1 -1  0 -1  0  0  0
    19        oI        999.0      40.2  142.8  148.3  74.5  74.3  90.0    1  0  0  0  0  1  1  0  1 -1  1  0
    20        mC        999.0     142.8  142.8   40.2  90.0  90.0 106.1    0 -1 -1  0  0 -1  1  0 -1  0  0  0
    21        tP        999.0      85.8  114.1   40.2  90.0  90.0  90.0    0  1  0  0  0  0  1  0  1  0  0  0
    22        hP        999.0      85.8  114.1   40.2  90.0  90.0  90.0    0  1  0  0  0  0  1  0  1  0  0  0
    23        oC        999.0     142.8  142.8   40.2  90.0  90.0  73.9    0  1  1  0  0 -1  1  0  1  0  0  0
    24        hR        999.0     210.0  142.8   40.2  90.0  79.0  93.3    1  2  1  0  0 -1  1  0  1  0  0  0
    25        mC        999.0     142.8  142.8   40.2  90.0  90.0  73.9    0  1  1  0  0 -1  1  0  1  0  0  0
    30        mC        999.0      85.8  243.8   40.2  90.0  90.0  69.4    0 -1  0  0  0 -1 -2  0  1  0  0  0
    40        oC        999.0      85.8  243.8   40.2  90.0  90.0 110.6    0 -1  0  0  0  1  2  0 -1  0  0  0
    42        oI        999.0      40.2   85.8  247.0 110.3  99.4  90.0   -1  0  0  0  0 -1  0  0  1  1  2  0
    41        mC        999.0     243.8   85.8   40.2  90.0  90.0  69.4    0 -1 -2  0  0 -1  0  0 -1  0  0  0
    43        mI        999.0      94.8  247.0   85.8 110.3 154.9  75.8    1  1  0  0 -1  1  2  0  0 -1  0  0

 ****** LATTICE SYMMETRY IMPLICATED BY SPACE GROUP SYMMETRY ******

BRAVAIS-            POSSIBLE SPACE-GROUPS FOR PROTEIN CRYSTALS
  TYPE                     [SPACE GROUP NUMBER,SYMBOL]
  aP      [1,P1]
  mP      [3,P2] [4,P2(1)]
 mC,mI    [5,C2]
  oP      [16,P222] [17,P222(1)] [18,P2(1)2(1)2] [19,P2(1)2(1)2(1)]
  oC      [21,C222] [20,C222(1)]
  oF      [22,F222]
  oI      [23,I222] [24,I2(1)2(1)2(1)]
  tP      [75,P4] [76,P4(1)] [77,P4(2)] [78,P4(3)] [89,P422] [90,P42(1)2]
          [91,P4(1)22] [92,P4(1)2(1)2] [93,P4(2)22] [94,P4(2)2(1)2]
          [95,P4(3)22] [96,P4(3)2(1)2]
  tI      [79,I4] [80,I4(1)] [97,I422] [98,I4(1)22]
  hP      [143,P3] [144,P3(1)] [145,P3(2)] [149,P312] [150,P321] [151,P3(1)12]
          [152,P3(1)21] [153,P3(2)12] [154,P3(2)21] [168,P6] [169,P6(1)]
          [170,P6(5)] [171,P6(2)] [172,P6(4)] [173,P6(3)] [177,P622]
          [178,P6(1)22] [179,P6(5)22] [180,P6(2)22] [181,P6(4)22] [182,P6(3)22]
  hR      [146,R3] [155,R32]
  cP      [195,P23] [198,P2(1)3] [207,P432] [208,P4(2)32] [212,P4(3)32]
          [213,P4(1)32]
  cF      [196,F23] [209,F432] [210,F4(1)32]
  cI      [197,I23] [199,I2(1)3] [211,I432] [214,I4(1)32]


 Several solutions exist for the given space group that explain the data. The
 selected solution (marked "*") correlates best with the given reference data set.
 The independent settings of the cell can be obtained by application of the
 REINDEXING TRANSFORMATION to the original indices H,K,L from file INTEGRATE.HKL

 CORRELATION = correlation factor with the reference data set
 NPAIR       = number of unique reflection pairs correlated 
 Rmeas=Rrim  = redundancy independent R-factor (intensities)
               For definition see:
               Rmeas : Diederichs & Karplus,
                       Nature Struct. Biol. 4, 269-275 (1997);
               Rrim  : Weiss & Hilgenfeld,
                       J.Appl.Cryst. 30,203-205 (1997).
 COMPARED    = number of reflections used for calculating Rmeas
 ESD         = Agreement with given unit cell geometry

 CORRELATION  NPAIR  Rmeas  COMPARED  ESD       REINDEX TRANSFORMATION

  *   0.00        0   44.1    6203    0.01  1  0  0  0  0  1  0  0  0  0  1  0

 ************ SELECTED SPACE GROUP AND UNIT CELL FOR THIS DATA SET ************

 SPACE_GROUP_NUMBER=   19
 UNIT_CELL_CONSTANTS=    39.98    85.55   113.74  90.000  90.000  90.000
 UNIT_CELL_A-AXIS=     2.687    17.505   -36.044
 UNIT_CELL_B-AXIS=   -80.821    27.940     7.544
 UNIT_CELL_C-AXIS=    37.691    95.717    49.295
 REFLECTIONS H,K,L FROM "INTEGRATE.HKL" WILL BE REINDEXED BY
 H' = (  1*H +  0*K +  0*L)/ 1 +  0
 K' = (  0*H +  1*K +  0*L)/ 1 +  0
 L' = (  0*H +  0*K +  1*L)/ 1 +  0

 *****  4 EQUIVALENT POSITIONS IN SPACE GROUP # 19 *****

    If x',y',z' is an equivalent position to x,y,z, then
        x'=x*ML(1)+y*ML( 2)+z*ML( 3)+ML( 4)/12.0
        y'=x*ML(5)+y*ML( 6)+z*ML( 7)+ML( 8)/12.0
        z'=x*ML(9)+y*ML(10)+z*ML(11)+ML(12)/12.0

    #    1  2  3  4    5  6  7  8    9 10 11 12 
    1    1  0  0  0    0  1  0  0    0  0  1  0
    2   -1  0  0  6    0 -1  0  0    0  0  1  6
    3    1  0  0  6    0 -1  0  6    0  0 -1  0
    4   -1  0  0  0    0  1  0  6    0  0 -1  6

 ******************************************************************************
      MEAN DISCREPANCIES BETWEEN OBSERVED AND CALCULATED SPOT LOCATIONS
 ******************************************************************************

 The discrepancies in X- and Y-coordinates of the spots are depicted in the
 two images DX-CORRECTIONS.cbf and DY-CORRECTIONS.cbf for inspection with
 the XDS-Viewer.



 ******************************************************************************
  REFINEMENT OF DIFFRACTION PARAMETERS USING ALL IMAGES
 ******************************************************************************


 REFINED VALUES OF DIFFRACTION PARAMETERS DERIVED FROM     35522 INDEXED SPOTS
 REFINED PARAMETERS:   POSITION BEAM AXIS ORIENTATION CELL
 STANDARD DEVIATION OF SPOT    POSITION (PIXELS)     1.76
 STANDARD DEVIATION OF SPINDLE POSITION (DEGREES)    0.12
 SPACE GROUP NUMBER     19
 UNIT CELL PARAMETERS     40.035    85.587   113.755  90.000  90.000  90.000
 E.S.D. OF CELL PARAMETERS  5.1E-02 7.9E-02 1.4E-01 0.0E+00 0.0E+00 0.0E+00
 REC. CELL PARAMETERS   0.024978  0.011684  0.008791  90.000  90.000  90.000
 COORDINATES OF UNIT CELL A-AXIS     2.740    17.408   -35.947
 COORDINATES OF UNIT CELL B-AXIS   -80.586    27.874     7.357
 COORDINATES OF UNIT CELL C-AXIS    37.517    95.503    49.109
 CRYSTAL MOSAICITY (DEGREES)     0.139
 LAB COORDINATES OF ROTATION AXIS -0.999972  0.004382  0.006006
 DIRECT BEAM COORDINATES (REC. ANGSTROEM)  -0.001503  0.002014  1.021296
 DETECTOR COORDINATES (PIXELS) OF DIRECT BEAM    1729.20   1689.61
 DETECTOR ORIGIN (PIXELS) AT                     1724.62   1695.74
 CRYSTAL TO DETECTOR DISTANCE (mm)       233.14
 LAB COORDINATES OF DETECTOR X-AXIS -1.000000  0.000000  0.000000
 LAB COORDINATES OF DETECTOR Y-AXIS  0.000000 -1.000000  0.000000


 THE DATA COLLECTION STATISTICS REPORTED BELOW ASSUMES:
 SPACE_GROUP_NUMBER=   19
 UNIT_CELL_CONSTANTS=    40.03    85.59   113.75  90.000  90.000  90.000


 ******************************************************************************
        MEAN INTENSITY AS FUNCTION OF SPINDLE POSITION WITHIN DATA IMAGE
 ******************************************************************************

 This statistics could serve as a diagnostic tool for detecting
 shutter problems (suggested by Kay Diederichs).
 Data are corrected for this effect if PATCH_SHUTTER_PROBLEM=TRUE in XDS.INP.
 ===> Selected : PATCH_SHUTTER_PROBLEM=FALSE

 INTERVAL = Angular interval in units of the oscillation range
            covered by a data image.
 NUMBER   = Number of reflections in each interval
 INTENSITY= Mean intensity of the reflections in each interval
 FACTOR   = Correction factor applied to intensities;
            INTENSITY(overall)/INTENSITY(interval)

   INTERVAL     NUMBER      INTENSITY      FACTOR
 -0.05  0.05     12198       1568.091       0.960
  0.05  0.15     12135       1522.854       0.988
  0.15  0.25     12198       1529.199       0.984
  0.25  0.35     12144       1480.471       1.016
  0.35  0.45     12153       1409.396       1.068
  0.45  0.55     12168       1527.658       0.985
  0.55  0.65     12461       1471.535       1.023
  0.65  0.75     12129       1529.420       0.984
  0.75  0.85     12027       1479.436       1.017
  0.85  0.95     12197       1530.309       0.983
 
 -0.05  0.95    121810       1504.818       1.000
 

 ******************************************************************************
           CORRECTION FACTORS AS FUNCTION OF IMAGE NUMBER & RESOLUTION
 ******************************************************************************

 RECIPROCAL CORRECTION FACTORS FOR INPUT DATA SETS MERGED TO
 OUTPUT FILE: XDS_ASCII.HKL                                     

 THE CALCULATIONS ASSUME         FRIEDEL'S_LAW= TRUE
 TOTAL NUMBER OF CORRECTION FACTORS DEFINED      720
 DEGREES OF FREEDOM OF CHI^2 FIT             79610.3
 CHI^2-VALUE OF FIT OF CORRECTION FACTORS      0.808
 NUMBER OF CYCLES CARRIED OUT                      6

 CORRECTION FACTORS for visual inspection by XDS-Viewer DECAY.cbf           
 XMIN=     0.2 XMAX=   354.8 NXBIN=   36
 YMIN= 0.00062 YMAX= 0.23252 NYBIN=   20
 NUMBER OF REFLECTIONS USED FOR DETERMINING CORRECTION FACTORS     104938


 ******************************************************************************
  CORRECTION FACTORS AS FUNCTION OF X (fast) & Y(slow) IN THE DETECTOR PLANE
 ******************************************************************************

 RECIPROCAL CORRECTION FACTORS FOR INPUT DATA SETS MERGED TO
 OUTPUT FILE: XDS_ASCII.HKL                                     

 THE CALCULATIONS ASSUME         FRIEDEL'S_LAW= TRUE
 TOTAL NUMBER OF CORRECTION FACTORS DEFINED     2068
 DEGREES OF FREEDOM OF CHI^2 FIT             79557.0
 CHI^2-VALUE OF FIT OF CORRECTION FACTORS      0.746
 NUMBER OF CYCLES CARRIED OUT                      6

 CORRECTION FACTORS for visual inspection by XDS-Viewer MODPIX.cbf          
 XMIN=   132.6 XMAX=  3101.7 NXBIN=   44
 YMIN=    86.8 YMAX=  3255.8 NYBIN=   47
 NUMBER OF REFLECTIONS USED FOR DETERMINING CORRECTION FACTORS     104938


 ******************************************************************************
   CORRECTION FACTORS AS FUNCTION OF IMAGE NUMBER & DETECTOR SURFACE POSITION
 ******************************************************************************

 RECIPROCAL CORRECTION FACTORS FOR INPUT DATA SETS MERGED TO
 OUTPUT FILE: XDS_ASCII.HKL                                     

 THE CALCULATIONS ASSUME         FRIEDEL'S_LAW= TRUE
 TOTAL NUMBER OF CORRECTION FACTORS DEFINED      468
 DEGREES OF FREEDOM OF CHI^2 FIT             79614.0
 CHI^2-VALUE OF FIT OF CORRECTION FACTORS      0.685
 NUMBER OF CYCLES CARRIED OUT                      4

 CORRECTION FACTORS for visual inspection by XDS-Viewer ABSORP.cbf          
 XMIN=     0.2 XMAX=   354.8 NXBIN=   36
 DETECTOR_SURFACE_POSITION=    1617    1671
 DETECTOR_SURFACE_POSITION=    2121    2210
 DETECTOR_SURFACE_POSITION=    1113    2210
 DETECTOR_SURFACE_POSITION=    1113    1133
 DETECTOR_SURFACE_POSITION=    2121    1133
 DETECTOR_SURFACE_POSITION=    2758    2176
 DETECTOR_SURFACE_POSITION=    2090    2889
 DETECTOR_SURFACE_POSITION=    1144    2889
 DETECTOR_SURFACE_POSITION=     476    2176
 DETECTOR_SURFACE_POSITION=     476    1167
 DETECTOR_SURFACE_POSITION=    1144     453
 DETECTOR_SURFACE_POSITION=    2090     453
 DETECTOR_SURFACE_POSITION=    2758    1167
 NUMBER OF REFLECTIONS USED FOR DETERMINING CORRECTION FACTORS     104938


 ******************************************************************************
    CORRECTION PARAMETERS FOR THE STANDARD ERROR OF REFLECTION INTENSITIES
 ******************************************************************************

 The variance v0(I) of the intensity I obtained from counting statistics is
 replaced by v(I)=a*(v0(I)+b*I^2). The model parameters a, b are chosen to
 minimize the discrepancies between v(I) and the variance estimated from
 sample statistics of symmetry related reflections. This model implicates
 an asymptotic limit ISa=1/SQRT(a*b) for the highest I/Sigma(I) that the
 experimental setup can produce (Diederichs (2010) Acta Cryst D66, 733-740).

     a        b          ISa
 1.779E+00  3.241E-03   13.17


 ******************************************************************************
      STANDARD ERROR OF REFLECTION INTENSITIES AS FUNCTION OF RESOLUTION
      FOR DATA SET  XDS_ASCII.HKL                                     
 ******************************************************************************

  I/Sigma  = mean intensity/Sigma of a reflection in shell
  Chi^2    = goodness of fit between sample variances of
             symmetry-related intensities and their errors
             (Chi^2 = 1 for perfect agreement)
  R-FACTOR
  observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
  expected = expected R-FACTOR derived from Sigma(I)

   NUMBER  = number of reflections in resolution shell
             used for calculation of R-FACTOR
  ACCEPTED = number of accepted reflections
  REJECTED = number of rejected reflections (MISFITS),
             recognized by comparison with symmetry-related
             reflections.

 RESOLUTION RANGE  I/Sigma  Chi^2  R-FACTOR  R-FACTOR  NUMBER ACCEPTED REJECTED
                                   observed  expected

   40.053  18.436    12.40   1.09      4.72      5.31      91      98      27
   18.436  13.787    12.75   1.26      5.87      5.45     200     211      10
   13.787  11.486    12.89   0.60      3.62      5.52     358     366       6
   11.486  10.051    13.09   0.74      4.05      5.51     331     340       5
   10.051   9.047    12.67   0.69      3.98      5.53     452     460      15
    9.047   8.294    12.61   0.87      5.24      5.56     438     450      12
    8.294   7.702    12.35   0.88      4.79      5.58     503     513       9
    7.702   7.222    11.85   0.86      4.77      5.66     538     548      15
    7.222   6.821    11.79   0.96      4.58      5.70     518     529      17
    6.821   6.480    10.74   1.07      5.24      5.81     590     601      20
    6.480   6.186    11.03   1.02      5.45      5.77     549     564      29
    6.186   5.929    10.64   1.15      5.86      5.86     509     524      19
    5.929   5.701    10.94   1.09      5.54      5.75     565     578      12
    5.701   5.497    10.63   1.15      5.67      5.99     703     721      31
    5.497   5.314    11.28   1.09      5.37      5.79     653     669      36
    5.314   5.148    11.54   1.05      5.54      5.69     690     706      35
    5.148   4.997    11.40   1.20      5.61      5.70     596     614      22
    4.997   4.858    11.84   1.14      5.46      5.54     700     719      17
    4.858   4.731    11.45   1.08      5.80      5.66     730     743      24
    4.731   4.613    11.46   1.13      5.39      5.66     733     745      41
    4.613   4.503    12.17   1.02      5.21      5.60     706     721      24
    4.503   4.401    11.18   1.11      5.42      5.73     858     871      43
    4.401   4.305    10.86   1.04      5.26      5.83     837     849      35
    4.305   4.215    11.13   1.10      5.45      5.76     873     885      45
    4.215   4.131    11.48   1.04      5.42      5.74     899     910      26
    4.131   4.052     9.97   1.17      5.71      5.98     811     820      41
    4.052   3.977    10.28   1.04      5.64      5.95     943     947      37
    3.977   3.906    10.08   1.02      5.60      6.21     974     984      39
    3.906   3.838    10.39   1.14      6.22      6.13    1028    1033      33
    3.838   3.775    10.04   1.10      6.33      6.30     922     930      37
    3.775   3.714     9.56   1.15      6.81      6.51    1050    1058      37
    3.714   3.656     9.58   1.14      6.41      6.49     948     951      37
    3.656   3.600     8.61   0.92      6.43      7.16    1106    1110      40
    3.600   3.547     8.73   1.03      6.77      7.06    1067    1074      36
    3.547   3.497     8.22   1.04      7.38      7.38    1187    1191      39
    3.497   3.448     8.68   1.07      7.21      7.32    1074    1078      33
    3.448   3.402     8.74   1.02      6.82      7.27    1119    1122      41
    3.402   3.357     8.13   1.10      8.26      8.12    1098    1100      43
    3.357   3.314     7.73   0.93      7.73      8.65    1145    1151      36
    3.314   3.272     7.43   0.90      7.97      8.82    1225    1228      37
    3.272   3.233     6.88   0.92      8.98      9.76    1253    1255      36
    3.233   3.194     6.98   0.94      9.18      9.98    1168    1173      34
    3.194   3.157     6.87   1.06      9.92      9.98    1176    1181      33
    3.157   3.121     6.20   0.90     10.26     11.42    1265    1272      35
    3.121   3.086     6.18   0.96     10.55     11.70    1142    1145      26
    3.086   3.053     5.94   1.04     12.04     12.45    1249    1252      37
    3.053   3.020     5.74   0.95     11.81     12.79    1117    1121      30
    3.020   2.989     5.35   0.96     12.68     14.51    1237    1240      36
    2.989   2.958     5.24   0.87     13.04     15.28    1100    1104      34
    2.958   2.929     5.43   0.89     13.02     14.60    1205    1208      37
    2.929   2.900     4.86   0.91     15.07     16.97    1250    1252      30
    2.900   2.872     4.99   0.91     13.84     15.86    1225    1227      35
    2.872   2.845     4.67   0.86     14.57     17.14    1369    1373      16
    2.845   2.819     4.21   0.85     17.12     20.39    1382    1383      35
    2.819   2.793     4.25   0.95     19.01     21.47    1302    1305      21
    2.793   2.768     3.86   0.87     20.95     24.63    1320    1324      30
    2.768   2.744     4.04   0.83     19.68     23.41    1197    1206      31
    2.744   2.720     3.77   0.94     21.25     24.47    1210    1217      28
    2.720   2.697     3.72   0.90     21.87     24.74    1209    1214      31
    2.697   2.675     3.50   0.86     23.57     28.63    1246    1250      25
    2.675   2.653     3.22   0.78     24.14     30.24    1403    1408      27
    2.653   2.632     3.27   0.83     25.31     30.70    1400    1403      20
    2.632   2.611     3.07   0.85     26.63     32.50    1461    1464      20
    2.611   2.590     3.14   0.75     26.26     33.66    1415    1417      28
    2.590   2.570     3.11   0.75     26.01     33.80    1556    1559      42
    2.570   2.551     2.90   0.79     29.80     36.14    1314    1317      33
    2.551   2.532     2.62   0.80     33.38     41.01    1506    1507      16
    2.532   2.513     2.91   0.81     31.54     38.08    1379    1382      34
    2.513   2.495     2.74   0.76     33.99     42.98    1532    1536      23
    2.495   2.477     2.61   0.75     34.44     43.32    1555    1556      20
    2.477   2.460     2.40   0.74     38.02     47.81    1565    1566      31
    2.460   2.443     2.41   0.75     38.09     48.51    1590    1592      25
    2.443   2.426     2.47   0.75     37.74     47.11    1520    1523      31
    2.426   2.410     2.38   0.69     39.41     52.33    1588    1590      31
    2.410   2.394     2.56   0.76     35.47     46.65    1542    1543      25
    2.394   2.378     2.15   0.73     43.94     56.29    1540    1541      22
    2.378   2.362     2.14   0.79     46.11     59.31    1590    1594      23
    2.362   2.347     2.00   0.70     48.49     63.16    1670    1673      26
    2.347   2.332     1.97   0.77     47.94     60.05    1700    1703      34
    2.332   2.318     1.87   0.67     50.64     67.88    1644    1649      19
    2.318   2.304     1.95   0.69     49.11     64.84    1629    1637      19
    2.304   2.289     1.83   0.73     53.96     68.93    1744    1751      32
    2.289   2.276     1.77   0.72     58.23     72.46    1565    1568      24
    2.276   2.262     1.83   0.72     57.07     72.66    1682    1691      25
    2.262   2.249     1.64   0.69     57.97     78.17    1598    1606      22
    2.249   2.236     1.61   0.77     64.07     80.62    1600    1606      21
    2.236   2.223     1.33   0.63     71.97     96.88    1664    1672      23
    2.223   2.210     1.50   0.69     63.59     83.48    1691    1703      25
    2.210   2.198     1.53   0.69     64.78     84.18    1731    1737      19
    2.198   2.186     1.25   0.58     71.95    100.06    1719    1732      25
    2.186   2.174     1.39   0.69     69.36     89.32    1726    1732      18
    2.174   2.162     1.32   0.67     67.34     86.55    1710    1719      18
    2.162   2.150     1.26   0.69     76.85     97.96    1700    1710      15
    2.150   2.139     1.18   0.71     78.73     98.35    1679    1693      22
    2.139   2.128     1.07   0.62     79.93    107.40    1781    1789      23
    2.128   2.116     1.19   0.64     72.59     96.66    1586    1591      17
    2.116   2.106     1.01   0.65     84.76    111.28    1636    1644      22
    2.106   2.095     1.07   0.71     79.87    103.64    1563    1573      24
    2.095   2.084     0.92   0.65     89.08    119.54    1670    1680      22
    2.084   2.074     0.59   0.54    144.50    199.15    1235    1272       3
   --------------------------------------------------------------------------
   40.053   2.074     4.74   0.84     11.75     13.90  118318  119043    2710
 


 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR VARIOUS SUBSETS OF INCLUDED DATA IMAGES
 ******************************************************************************

 Data set statistics is reported below several times, each with a different
 upper limit on the number of images included. This provides the user with
 the information for deciding which data images should be excluded from the
 final data set because of radiation damage or other defects. If the user
 decides for a subset of "good" images that differs from the specification
 as given by the input parameter (see DATA_RANGE= in XDS.INP) the CORRECT-
 step of XDS must be repeated with the new parameter values for DATA_RANGE=.


 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1      40
 ******************************************************************************


 AVERAGE INTENSITY FOR       9 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.5% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16         464     259      1049       24.7%       3.2%      4.8%      340   15.99      4.1%    99.7*     4    0.655      17
     4.38         820     557      1733       32.1%       3.7%      4.5%      498   14.21      5.2%    99.1*   -38    0.981       3
     3.58        1084     748      2184       34.2%       4.5%      4.5%      664   13.17      6.3%    99.1*     0    0.000       0
     3.11        1310     913      2547       35.8%       6.2%      5.2%      794   10.77      8.8%    98.5*     0    0.000       0
     2.78        1368     966      2871       33.6%       8.2%      7.6%      802    7.60     11.6%    98.1*     0    0.000       0
     2.54        1489    1058      3156       33.5%      14.5%     12.7%      852    5.17     20.4%    95.6*     0    0.000       0
     2.35        1759    1216      3404       35.7%      19.5%     20.6%     1076    3.84     27.4%    91.2*     0    0.000       0
     2.20        1907    1286      3640       35.3%      28.3%     31.4%     1220    2.78     39.6%    83.4*     0    0.000       0
     2.07        1859    1274      3893       32.7%      37.1%     47.7%     1137    1.68     51.7%    72.4*   -64    0.416      12
    total       12060    8277     24477       33.8%       7.3%      7.9%     7383    6.64     10.2%    99.3*   -29    0.596      32


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     12804
 NUMBER OF REJECTED MISFITS                               735
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                    9
 NUMBER OF ACCEPTED OBSERVATIONS                        12060
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                   8277



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1      80
 ******************************************************************************


 AVERAGE INTENSITY FOR      25 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.6% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16         639     321      1049       30.6%       4.9%      5.0%      485   16.49      6.2%    97.6*   -23    0.685      39
     4.38        1151     644      1733       37.2%       5.7%      4.8%      852   15.40      7.4%    98.6*    -6    0.969      29
     3.58        1537     855      2184       39.1%       5.7%      4.8%     1182   14.46      7.5%    99.1*   -37    0.895      16
     3.11        1869    1074      2547       42.2%       7.1%      5.4%     1415   11.81      9.5%    98.5*    35    0.748       3
     2.78        1982    1185      2871       41.3%       9.3%      7.6%     1435    8.67     12.6%    97.9*    71    1.380       2
     2.54        2161    1286      3156       40.7%      14.3%     12.2%     1547    6.24     19.1%    96.8*     1    0.798      17
     2.35        2576    1472      3404       43.2%      19.6%     19.5%     1893    4.97     25.7%    93.5*    47    0.841      36
     2.20        2799    1528      3640       42.0%      28.7%     30.3%     2130    3.71     37.1%    90.0*    19    0.817      65
     2.07        2773    1547      3893       39.7%      38.6%     46.2%     2058    2.42     50.1%    81.5*     7    0.685      70
    total       17487    9912     24477       40.5%       8.6%      7.9%    12997    7.60     11.2%    98.6*     9    0.791     277


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     19205
 NUMBER OF REJECTED MISFITS                              1693
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   25
 NUMBER OF ACCEPTED OBSERVATIONS                        17487
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                   9912



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     119
 ******************************************************************************


 AVERAGE INTENSITY FOR      34 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.3% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        1327     486      1049       46.3%       4.6%      5.3%     1112   19.33      5.3%    99.7*    -9    0.738     120
     4.38        2253     940      1733       54.2%       5.5%      5.1%     1883   17.98      6.6%    99.0*    -4    0.933     175
     3.58        3073    1246      2184       57.1%       6.1%      5.2%     2660   17.54      7.4%    99.1*     0    1.021     270
     3.11        3709    1525      2547       59.9%       7.2%      5.5%     3276   15.28      8.8%    98.7*    -4    1.002     321
     2.78        3949    1707      2871       59.5%       8.9%      7.1%     3467   12.13     11.1%    98.5*    -3    0.866     253
     2.54        4346    1951      3156       61.8%      12.0%     10.5%     3687    9.23     14.9%    97.7*    -1    0.850     262
     2.35        5098    2153      3404       63.2%      16.0%     15.4%     4416    7.76     19.7%    96.3*   -10    0.723     386
     2.20        5411    2262      3640       62.1%      22.2%     22.7%     4653    5.87     27.2%    94.1*    -9    0.689     445
     2.07        5292    2262      3893       58.1%      30.9%     35.2%     4521    3.93     37.9%    88.6*     0    0.690     412
    total       34458   14532     24477       59.4%       8.0%      7.4%    29675   10.25      9.7%    99.4*    -4    0.817    2644


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     36579
 NUMBER OF REJECTED MISFITS                              2087
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   34
 NUMBER OF ACCEPTED OBSERVATIONS                        34458
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  14532



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     158
 ******************************************************************************


 AVERAGE INTENSITY FOR      34 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.3% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        2024     701      1049       66.8%       4.3%      5.2%     1812   20.02      5.0%    99.7*   -19    0.655     207
     4.38        3380    1315      1733       75.9%       5.4%      5.1%     2963   18.46      6.4%    99.2*   -13    0.869     289
     3.58        4591    1703      2184       78.0%       5.9%      5.2%     4130   17.97      7.1%    99.1*     3    1.006     427
     3.11        5594    2068      2547       81.2%       7.0%      5.8%     5080   15.30      8.5%    99.0*     1    0.982     508
     2.78        5930    2291      2871       79.8%       9.6%      8.1%     5328   11.53     11.7%    98.4*    -4    0.895     482
     2.54        6503    2583      3156       81.8%      13.9%     12.7%     5823    8.44     17.1%    97.2*     0    0.831     471
     2.35        7567    2856      3404       83.9%      18.9%     19.1%     6830    6.84     22.9%    95.6*    -5    0.776     623
     2.20        8039    3036      3640       83.4%      27.3%     29.2%     7192    5.04     32.9%    92.3*   -10    0.715     713
     2.07        7938    3127      3893       80.3%      37.7%     44.1%     6940    3.27     45.2%    85.8*    -3    0.695     673
    total       51566   19680     24477       80.4%       8.4%      8.1%    46098    9.85     10.1%    99.5*    -4    0.819    4393


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     53964
 NUMBER OF REJECTED MISFITS                              2364
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   34
 NUMBER OF ACCEPTED OBSERVATIONS                        51566
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  19680



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     198
 ******************************************************************************


 AVERAGE INTENSITY FOR      34 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.3% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        2725     874      1049       83.3%       4.3%      5.2%     2537   20.87      5.0%    99.8*   -27    0.577     340
     4.38        4523    1614      1733       93.1%       5.2%      5.2%     4156   19.10      6.2%    99.3*   -20    0.768     437
     3.58        6217    2069      2184       94.7%       5.6%      5.4%     5897   18.49      6.7%    99.3*    -6    0.816     677
     3.11        7570    2473      2547       97.1%       6.9%      6.5%     7255   15.15      8.3%    99.0*    -6    0.818     795
     2.78        8001    2691      2871       93.7%      11.0%     10.2%     7702   10.95     13.4%    97.8*    -7    0.813     694
     2.54        8803    3066      3156       97.1%      17.5%     17.8%     8414    7.72     21.5%    94.8*    -1    0.817     699
     2.35       10145    3339      3404       98.1%      25.3%     28.3%     9779    6.19     30.8%    90.8*    -7    0.707     892
     2.20       10785    3551      3640       97.6%      37.9%     43.6%    10311    4.52     45.9%    83.3*   -10    0.686     994
     2.07       10689    3644      3893       93.6%      51.4%     62.6%    10144    2.93     62.3%    74.4*    -4    0.678     923
    total       69458   23321     24477       95.3%       9.3%      9.9%    66195    9.66     11.3%    99.4*    -7    0.745    6451


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     71995
 NUMBER OF REJECTED MISFITS                              2503
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   34
 NUMBER OF ACCEPTED OBSERVATIONS                        69458
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  23321



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     237
 ******************************************************************************


 AVERAGE INTENSITY FOR      42 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     0.9% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        3465     959      1049       91.4%       4.2%      5.3%     3330   22.39      4.8%    99.7*   -24    0.561     546
     4.38        5690    1702      1733       98.2%       5.0%      5.3%     5491   20.75      5.8%    99.4*   -21    0.693     709
     3.58        7771    2147      2184       98.3%       5.5%      5.6%     7664   19.90      6.4%    99.5*   -12    0.717    1074
     3.11        9461    2528      2547       99.3%       7.2%      7.3%     9382   16.13      8.4%    99.2*    -8    0.746    1305
     2.78       10023    2844      2871       99.1%      12.2%     12.7%     9914   11.06     14.4%    98.1*   -12    0.741    1102
     2.54       11064    3130      3156       99.2%      21.3%     23.4%    10949    7.89     25.0%    95.3*    -6    0.730    1163
     2.35       12666    3387      3404       99.5%      31.2%     37.2%    12586    6.32     36.4%    91.2*    -8    0.650    1530
     2.20       13498    3605      3640       99.0%      47.4%     58.2%    13304    4.57     55.1%    83.3*   -10    0.629    1696
     2.07       13368    3721      3893       95.6%      63.8%     80.9%    13050    2.95     74.3%    74.2*    -8    0.617    1569
    total       87006   24023     24477       98.1%      10.3%     11.6%    85670   10.21     12.0%    99.5*   -10    0.677   10694


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES     89588
 NUMBER OF REJECTED MISFITS                              2540
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   42
 NUMBER OF ACCEPTED OBSERVATIONS                        87006
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  24023



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     276
 ******************************************************************************


 AVERAGE INTENSITY FOR      50 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     2.0% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        4153     962      1049       91.7%       4.3%      5.5%     4024   24.19      4.8%    99.8*   -18    0.614     609
     4.38        6820    1705      1733       98.4%       5.2%      5.6%     6633   22.30      5.9%    99.5*   -19    0.701     934
     3.58        9385    2148      2184       98.4%       5.6%      6.0%     9294   21.31      6.4%    99.6*   -12    0.707    1354
     3.11       11398    2528      2547       99.3%       7.7%      8.1%    11341   17.02      8.7%    99.3*    -9    0.722    1669
     2.78       12108    2853      2871       99.4%      13.3%     14.7%    12039   11.51     15.1%    98.4*    -8    0.719    1656
     2.54       13290    3130      3156       99.2%      23.5%     27.7%    13196    8.11     26.6%    96.2*    -7    0.683    1792
     2.35       15133    3387      3404       99.5%      34.9%     43.3%    15071    6.47     39.3%    93.3*   -12    0.634    2141
     2.20       16226    3609      3640       99.1%      52.9%     67.2%    16069    4.67     59.5%    86.7*    -8    0.623    2293
     2.07       16088    3753      3893       96.4%      71.8%     92.9%    15847    2.98     81.2%    78.9*    -8    0.598    2199
    total      104601   24075     24477       98.4%      11.0%     12.9%   103514   10.73     12.5%    99.6*   -10    0.663   14647


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES    107255
 NUMBER OF REJECTED MISFITS                              2604
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   50
 NUMBER OF ACCEPTED OBSERVATIONS                       104601
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  24075



 ******************************************************************************
  SUMMARY OF DATA SET STATISTICS FOR IMAGE   DATA_RANGE=       1     316
 ******************************************************************************


 AVERAGE INTENSITY FOR      50 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     2.0% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        4206     962      1049       91.7%       4.3%      5.5%     4078   24.33      4.8%    99.8*   -15    0.621     611
     4.38        6897    1705      1733       98.4%       5.2%      5.6%     6712   22.40      5.9%    99.5*   -20    0.699     940
     3.58        9486    2148      2184       98.4%       5.6%      6.0%     9395   21.38      6.4%    99.6*   -13    0.716    1359
     3.11       11524    2528      2547       99.3%       7.7%      8.1%    11467   17.06      8.7%    99.2*    -9    0.718    1674
     2.78       12246    2853      2871       99.4%      13.4%     14.8%    12179   11.53     15.2%    98.5*    -8    0.728    1677
     2.54       13430    3130      3156       99.2%      23.5%     27.8%    13338    8.13     26.6%    96.5*    -8    0.682    1809
     2.35       15304    3387      3404       99.5%      35.1%     43.5%    15242    6.48     39.5%    93.2*   -10    0.626    2171
     2.20       16387    3609      3640       99.1%      53.2%     67.6%    16231    4.67     59.7%    87.2*    -8    0.618    2305
     2.07       16279    3755      3893       96.5%      72.3%     93.5%    16040    2.98     81.6%    78.9*    -8    0.600    2213
    total      105759   24077     24477       98.4%      11.1%     13.0%   104682   10.76     12.5%    99.6*   -10    0.663   14759


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES    108418
 NUMBER OF REJECTED MISFITS                              2609
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   50
 NUMBER OF ACCEPTED OBSERVATIONS                       105759
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  24077



 ******************************************************************************
  STATISTICS OF SAVED DATA SET "XDS_ASCII.HKL" (DATA_RANGE=       1     355)
 FILE TYPE:         XDS_ASCII      MERGE=FALSE          FRIEDEL'S_LAW=TRUE 
 ******************************************************************************

   REFLECTIONS OF TYPE H,0,0  0,K,0  0,0,L OR EXPECTED TO BE ABSENT (*)
   --------------------------------------------------------------------

   H    K    L  RESOLUTION  INTENSITY     SIGMA    INTENSITY/SIGMA  #OBSERVED

    0    0   21     5.417   0.7753E+02  0.9618E+02         0.81           1*
    0    0   22     5.171   0.3526E+04  0.2854E+03        12.35           1 
    0    0   25     4.550  -0.2598E+02  0.6156E+02        -0.42           1*
    0    0   26     4.375   0.5461E+03  0.8484E+02         6.44           1 
    0    0   27     4.213  -0.5423E+02  0.5863E+02        -0.92           1*
    0    0   28     4.063   0.2298E+05  0.1748E+04        13.15           1 
    0    0   29     3.923   0.3109E+02  0.4547E+02         0.68           1*
    0    0   30     3.792   0.1270E+05  0.9668E+03        13.13           1 
    0    0   31     3.669  -0.1891E+02  0.4026E+02        -0.47           1*
    0    0   32     3.555   0.8585E+04  0.6542E+03        13.12           1 
    0    0   33     3.447  -0.1622E+02  0.2963E+02        -0.55           1*
    0    0   34     3.346   0.1094E+03  0.2672E+02         4.10           1 
    0    0   35     3.250  -0.5523E+01  0.2849E+02        -0.19           1*
    0    0   36     3.160   0.1932E+04  0.1501E+03        12.87           1 
    0    0   37     3.074  -0.6459E+01  0.2821E+02        -0.23           1*
    0    0   38     2.994   0.1309E+04  0.1039E+03        12.59           1 
    0    0   39     2.917  -0.3882E+02  0.2898E+02        -1.34           1*
    0    0   40     2.844   0.2574E+03  0.3435E+02         7.49           1 
    0    0   41     2.775  -0.2150E+01  0.3079E+02        -0.07           1*
    0    0   42     2.708   0.4104E+04  0.3151E+03        13.03           1 
    0    0   45     2.528  -0.2682E+02  0.3372E+02        -0.80           1*
    0    0   46     2.473   0.2124E+03  0.3961E+02         5.36           1 
    0    0   47     2.420   0.1265E+02  0.3221E+02         0.39           1*
    0    0   48     2.370   0.1116E+04  0.9298E+02        12.01           1 
    0    0   49     2.322  -0.2755E+02  0.2905E+02        -0.95           2*
    0    0   50     2.275   0.7510E+03  0.6553E+02        11.46           2 
    0    0   51     2.230   0.3768E+01  0.2950E+02         0.13           2*
    0    0   52     2.188   0.3147E+03  0.4343E+02         7.24           2 
    0    0   53     2.146   0.3693E+02  0.3410E+02         1.08           2*
    0    0   54     2.107   0.1741E+03  0.3877E+02         4.49           2 
    0    5    0    17.117   0.3108E+02  0.6082E+01         5.11           1*
    0    6    0    14.264   0.1338E+04  0.1022E+03        13.10           1 
    0    7    0    12.227  -0.2018E+00  0.8481E+01        -0.02           1*
    0    8    0    10.698   0.1470E+05  0.1117E+04        13.16           1 
    0    9    0     9.510   0.5635E+02  0.1258E+02         4.48           1*
    0   10    0     8.559   0.9045E+05  0.6871E+04        13.16           1 
    0   11    0     7.781   0.1469E+02  0.1220E+02         1.20           1*
    0   12    0     7.132   0.6690E+04  0.5088E+03        13.15           1 
    0   13    0     6.584   0.2425E+02  0.1461E+02         1.66           1*
    0   14    0     6.113   0.2983E+02  0.1607E+02         1.86           1 
    0   15    0     5.706  -0.2788E+01  0.1687E+02        -0.17           1*
    0   16    0     5.349   0.5155E+03  0.6144E+02         8.39           1 
    0   17    0     5.035   0.6054E+02  0.5013E+02         1.21           1*
    0   18    0     4.755   0.1232E+05  0.9396E+03        13.11           1 
    0   19    0     4.505   0.2667E+02  0.2606E+02         1.02           2*
    0   20    0     4.279   0.4328E+04  0.2364E+03        18.31           2 
    0   21    0     4.076  -0.2039E+01  0.1328E+02        -0.15           2*
    0   22    0     3.890   0.9541E+04  0.5161E+03        18.49           2 
    0   23    0     3.721   0.9241E+01  0.1217E+02         0.76           2*
    0   24    0     3.566   0.2856E+04  0.1646E+03        17.35           2 
    0   25    0     3.423  -0.4188E+01  0.9842E+01        -0.43           2*
    0   27    0     3.170   0.9224E+00  0.1031E+02         0.09           2*
    0   28    0     3.057   0.2128E+04  0.1316E+03        16.18           2 
    0   29    0     2.951   0.3678E+00  0.1570E+02         0.02           2*
    0   30    0     2.853   0.9723E+02  0.1844E+02         5.27           1 
    0   31    0     2.761  -0.7981E+01  0.1711E+02        -0.47           1*
    0   32    0     2.675   0.1551E+04  0.1199E+03        12.94           1 
    0   33    0     2.594  -0.4017E+01  0.2198E+02        -0.18           1*
    0   34    0     2.517   0.7519E+03  0.6297E+02        11.94           1 
    0   35    0     2.445   0.3161E+02  0.2601E+02         1.22           1*
    0   36    0     2.377   0.5862E+02  0.2874E+02         2.04           1 
    0   37    0     2.313  -0.5942E+01  0.4225E+02        -0.14           1*
    2    0    0    20.017   0.4797E+04  0.2588E+03        18.54           2 
    3    0    0    13.345  -0.1203E+02  0.1905E+02        -0.63           2*
    4    0    0    10.009   0.6180E+02  0.2704E+02         2.29           2 
    5    0    0     8.007  -0.2695E+02  0.3319E+02        -0.81           2*
    6    0    0     6.672   0.3078E+03  0.4756E+02         6.47           2 
    7    0    0     5.719   0.1099E+02  0.5291E+02         0.21           2*
    8    0    0     5.004   0.1996E+02  0.7832E+02         0.25           1 
    9    0    0     4.448   0.8729E+02  0.7338E+02         1.19           2*
   10    0    0     4.003   0.5452E+03  0.9082E+02         6.00           2 
   11    0    0     3.640  -0.4041E+02  0.1153E+03        -0.35           2*
   12    0    0     3.336   0.1233E+04  0.1626E+03         7.59           2 
   13    0    0     3.080   0.7875E+02  0.2919E+03         0.27           1*
   14    0    0     2.860   0.5492E+03  0.2173E+03         2.53           2 
   15    0    0     2.669   0.3666E+03  0.2493E+03         1.47           2*
   16    0    0     2.502   0.1985E+03  0.2956E+03         0.67           2 
   17    0    0     2.355   0.1945E+03  0.2685E+03         0.72           2*
   18    0    0     2.224   0.3845E+02  0.2625E+03         0.15           2 
   19    0    0     2.107   0.3876E+02  0.1663E+03         0.23           1*

 AVERAGE INTENSITY FOR      57 REFLECTIONS WHICH SHOULD
 BE SYSTEMATICALLY ABSENT IS     1.9% OF MEAN INTENSITY


          COMPLETENESS AND QUALITY OF DATA SET
          ------------------------------------

 R-FACTOR
 observed = (SUM(ABS(I(h,i)-I(h))))/(SUM(I(h,i)))
 expected = expected R-FACTOR derived from Sigma(I)

 COMPARED = number of reflections used for calculating R-FACTOR
 I/SIGMA  = mean of intensity/Sigma(I) of unique reflections
            (after merging symmetry-related observations)
 Sigma(I) = standard deviation of reflection intensity I
            estimated from sample statistics

 R-meas   = redundancy independent R-factor (intensities)
            Diederichs & Karplus (1997), Nature Struct. Biol. 4, 269-275.

 CC(1/2)  = percentage of correlation between intensities from
            random half-datasets. Correlation significant at
            the 0.1% level is marked by an asterisk.
            Karplus & Diederichs (2012), Science 336, 1030-33
 Anomal   = percentage of correlation between random half-sets
  Corr      of anomalous intensity differences. Correlation
            significant at the 0.1% level is marked.
 SigAno   = mean anomalous difference in units of its estimated
            standard deviation (|F(+)-F(-)|/Sigma). F(+), F(-)
            are structure factor estimates obtained from the
            merged intensity observations in each parity class.
  Nano    = Number of unique reflections used to calculate
            Anomal_Corr & SigAno. At least two observations
            for each (+ and -) parity are required.


 SUBSET OF INTENSITY DATA WITH SIGNAL/NOISE >= -3.0 AS FUNCTION OF RESOLUTION
 RESOLUTION     NUMBER OF REFLECTIONS    COMPLETENESS R-FACTOR  R-FACTOR COMPARED I/SIGMA   R-meas  CC(1/2)  Anomal  SigAno   Nano
   LIMIT     OBSERVED  UNIQUE  POSSIBLE     OF DATA   observed  expected                                      Corr

     6.16        4722     963      1049       91.8%       4.6%      5.6%     4607   25.65      5.0%    99.8*   -10    0.678     633
     4.38        7757    1707      1733       98.5%       5.5%      5.7%     7588   23.48      6.1%    99.6*   -13    0.741    1033
     3.58       10688    2148      2184       98.4%       5.9%      6.2%    10605   22.31      6.6%    99.5*   -11    0.722    1454
     3.11       12954    2528      2547       99.3%       8.2%      8.6%    12905   17.57      9.1%    99.3*    -7    0.716    1775
     2.78       13788    2853      2871       99.4%      14.1%     16.0%    13755   11.77     15.8%    98.5*    -7    0.708    1870
     2.54       15112    3134      3156       99.3%      24.8%     30.2%    15066    8.24     27.7%    96.5*    -7    0.680    2041
     2.35       17230    3390      3404       99.6%      37.6%     47.8%    17205    6.54     41.7%    93.7*    -9    0.638    2419
     2.20       18427    3613      3640       99.3%      56.7%     73.6%    18353    4.71     63.0%    87.0*    -9    0.622    2591
     2.07       18365    3760      3893       96.6%      78.0%    102.5%    18234    3.00     87.0%    79.6*    -7    0.609    2540
    total      119043   24096     24477       98.4%      11.8%     13.9%   118318   11.08     13.1%    99.6*    -8    0.668   16356


 NUMBER OF REFLECTIONS IN SELECTED SUBSET OF IMAGES    121810
 NUMBER OF REJECTED MISFITS                              2710
 NUMBER OF SYSTEMATIC ABSENT REFLECTIONS                   57
 NUMBER OF ACCEPTED OBSERVATIONS                       119043
 NUMBER OF UNIQUE ACCEPTED REFLECTIONS                  24096



 ******************************************************************************
    WILSON STATISTICS OF DATA SET  "XDS_ASCII.HKL"
 ******************************************************************************

 Data is divided into resolution shells and a straight line 
 A - 2*B*SS is fitted to log<I>, where
   RES    = mean resolution (Angstrom) in shell
   SS     = mean of (sin(THETA)/LAMBDA)**2 in shell
   <I>    = mean reflection intensity in shell
   BO     = (A - log<I>)/(2*SS)
    #     = number of reflections in resolution shell

   WILSON LINE (using all data) : A=   9.116 B=  36.956 CORRELATION=  0.98
      #      RES      SS        <I>       log(<I>)       BO
     326    11.316   0.002  8.9579E+03       9.100       3.9
     565     7.195   0.005  4.1313E+03       8.326      81.7
     726     5.647   0.008  2.8319E+03       7.949      74.4
     839     4.800   0.011  4.7024E+03       8.456      30.4
     950     4.243   0.014  4.5249E+03       8.417      25.1
    1036     3.842   0.017  3.4611E+03       8.149      28.5
    1143     3.535   0.020  2.5778E+03       7.855      31.5
    1207     3.292   0.023  1.7833E+03       7.486      35.3
    1288     3.093   0.026  1.3788E+03       7.229      36.1
    1318     2.929   0.029  1.0206E+03       6.928      37.5
    1440     2.787   0.032  8.3443E+02       6.727      37.1
    1487     2.662   0.035  6.4362E+02       6.467      37.5
    1501     2.555   0.038  5.3816E+02       6.288      36.9
    1628     2.459   0.041  4.5222E+02       6.114      36.3
    1641     2.372   0.044  3.6213E+02       5.892      36.3
    1713     2.295   0.047  2.9867E+02       5.699      36.0
    1738     2.224   0.051  2.2153E+02       5.401      36.8
    1781     2.160   0.054  1.5815E+02       5.064      37.8
    1769     2.101   0.057  1.0733E+02       4.676      39.2


 HIGHER ORDER MOMENTS OF WILSON DISTRIBUTION OF  CENTRIC DATA
    AS COMPARED WITH THEORETICAL VALUES. (EXPECTED: 1.00)    
      #      RES        <I**2>/      <I**3>/      <I**4>/  
                         3<I>**2     15<I>**3    105<I>**4 

     111    11.316        0.584        0.379        0.208
     135     7.195        1.217        1.524        1.827
     149     5.647        0.973        0.932        0.891
     156     4.800        0.574        0.332        0.162
     153     4.243        1.163        1.182        1.105
     149     3.842        1.267        1.548        1.715
     161     3.535        1.263        1.531        1.701
     159     3.292        0.922        0.945        0.881
     168     3.093        1.920        3.513        5.811
     149     2.929        1.109        1.302        1.526
     167     2.787        1.226        1.506        1.712
     163     2.662        1.049        1.028        0.918
     148     2.555        1.109        1.166        1.204
     175     2.459        1.942        4.002        7.717
     162     2.372        1.571        2.348        3.372
     158     2.295        1.750        2.547        3.485
     158     2.224        0.762        0.593        0.428
     151     2.160        2.174        4.204        7.437
     143     2.101        4.121       17.595       70.981
    2915   overall        1.412        2.521        5.788


 HIGHER ORDER MOMENTS OF WILSON DISTRIBUTION OF ACENTRIC DATA
    AS COMPARED WITH THEORETICAL VALUES. (EXPECTED: 1.00)    
      #      RES        <I**2>/      <I**3>/      <I**4>/  
                         2<I>**2      6<I>**3     24<I>**4 

     215    11.316        1.466        2.761        5.857
     430     7.195        1.019        1.083        1.119
     577     5.647        0.985        0.984        0.964
     683     4.800        0.984        0.896        0.803
     797     4.243        0.991        0.976        0.908
     887     3.842        1.036        1.087        1.085
     982     3.535        1.064        1.161        1.231
    1048     3.292        1.063        1.171        1.361
    1120     3.093        0.985        1.060        1.236
    1169     2.929        1.036        1.140        1.296
    1273     2.787        1.087        1.347        1.867
    1324     2.662        1.144        1.477        2.083
    1353     2.555        1.074        1.201        1.329
    1453     2.459        1.030        1.106        1.207
    1479     2.372        1.108        1.339        1.731
    1555     2.295        1.053        1.122        1.173
    1580     2.224        1.196        1.474        2.007
    1630     2.160        1.108        1.327        1.779
    1626     2.101        1.211        1.466        1.928
   21181   overall        1.084        1.245        1.527

   ======= CUMULATIVE INTENSITY DISTRIBUTION =======
 DEFINITIONS:
   <I>    = mean reflection intensity
 Na(Z)exp = expected number of acentric reflections with I <= Z*<I>
 Na(Z)obs = observed number of acentric reflections with I <= Z*<I>
 Nc(Z)exp = expected number of  centric reflections with I <= Z*<I>
 Nc(Z)obs = observed number of  centric reflections with I <= Z*<I>



 Nc(Z)obs/Nc(Z)exp versus resolution and Z (0.1-1.0)
      #      RES     0.1   0.2   0.3   0.4   0.5   0.6   0.7   0.8   0.9   1.0

     111    11.316  1.20  1.12  1.23  1.20  1.14  1.12  1.10  1.09  1.08  1.08
     135     7.195  0.87  0.92  0.98  0.94  1.01  1.03  0.99  0.98  1.01  1.01
     149     5.647  0.70  0.89  0.85  0.91  0.93  0.93  0.94  0.98  1.00  1.01
     156     4.800  1.14  1.08  1.00  1.07  1.00  1.06  1.07  1.03  1.02  1.02
     153     4.243  0.84  1.00  1.00  0.99  0.97  0.94  0.95  0.98  0.98  1.00
     149     3.842  0.95  0.97  1.02  1.06  1.06  1.05  1.06  1.06  1.06  1.04
     161     3.535  0.88  0.97  1.06  1.08  1.09  1.13  1.10  1.07  1.09  1.06
     159     3.292  0.94  1.16  1.19  1.18  1.15  1.17  1.15  1.09  1.08  1.08
     168     3.093  0.77  0.90  0.97  0.96  0.96  0.98  0.98  0.97  0.97  0.99
     149     2.929  0.97  0.97  1.02  0.98  1.03  1.03  1.00  1.02  1.03  1.03
     167     2.787  1.16  1.06  1.09  1.06  1.06  1.03  1.02  0.99  0.98  0.97
     163     2.662  1.19  1.14  1.15  1.08  1.05  1.05  1.04  1.03  1.02  1.01
     148     2.555  0.84  0.92  0.94  0.97  1.00  1.04  1.04  1.02  0.98  0.97
     175     2.459  0.71  0.69  0.77  0.87  0.91  1.00  1.00  0.99  1.02  1.01
     162     2.372  0.92  0.93  0.92  0.97  0.92  0.93  0.94  0.96  0.97  0.99
     158     2.295  0.97  0.93  0.84  0.90  0.92  0.98  0.95  0.97  0.96  0.98
     158     2.224  1.07  0.92  1.00  1.03  1.07  1.06  1.04  1.05  1.04  1.02
     151     2.160  0.88  0.88  0.86  0.81  0.81  0.84  0.89  0.92  0.93  1.00
     143     2.101  0.99  0.87  0.84  0.84  0.93  0.91  0.91  0.92  0.92  0.89
    2915   overall  0.94  0.96  0.98  0.99  1.00  1.01  1.01  1.01  1.01  1.01


 Na(Z)obs/Na(Z)exp versus resolution and Z (0.1-1.0)
      #      RES     0.1   0.2   0.3   0.4   0.5   0.6   0.7   0.8   0.9   1.0

     215    11.316  0.59  0.64  0.77  0.82  0.85  0.82  0.90  0.90  0.92  0.94
     430     7.195  1.08  1.08  1.07  1.08  1.05  1.03  0.99  1.03  1.02  1.01
     577     5.647  1.00  1.06  1.02  1.00  0.98  0.94  0.97  1.00  0.98  0.97
     683     4.800  0.88  0.85  0.90  0.87  0.87  0.89  0.90  0.90  0.90  0.93
     797     4.243  1.13  1.06  1.05  1.08  1.07  1.02  1.03  1.03  1.04  1.02
     887     3.842  0.91  0.98  1.04  1.06  1.08  1.08  1.06  1.05  1.03  1.01
     982     3.535  0.98  1.15  1.09  1.09  1.08  1.08  1.06  1.05  1.03  1.03
    1048     3.292  0.86  0.97  0.99  1.00  0.98  0.97  0.99  1.01  1.00  1.01
    1120     3.093  1.03  1.03  1.06  1.07  1.04  1.05  1.03  1.02  1.02  1.01
    1169     2.929  0.91  1.01  1.00  0.99  1.00  1.01  1.02  1.03  1.02  1.00
    1273     2.787  0.94  1.03  1.01  1.06  1.06  1.04  1.01  1.02  1.01  1.02
    1324     2.662  1.10  1.04  1.03  1.03  1.02  1.03  1.03  1.02  1.04  1.03
    1353     2.555  1.19  1.04  0.98  1.00  1.03  1.02  1.03  1.03  1.03  1.02
    1453     2.459  1.29  1.03  0.99  1.00  1.01  1.03  1.03  1.03  1.04  1.03
    1479     2.372  1.47  1.12  1.05  0.99  1.01  1.01  1.02  1.02  1.03  1.02
    1555     2.295  1.44  1.06  0.99  1.00  0.97  0.98  1.00  1.01  1.02  1.02
    1580     2.224  1.57  1.13  1.01  0.98  0.99  0.98  0.99  0.99  0.98  0.98
    1630     2.160  1.57  1.11  0.98  0.95  0.94  0.94  0.97  0.95  0.97  0.99
    1626     2.101  2.12  1.33  1.07  0.98  0.97  0.94  0.94  0.94  0.95  0.96
   21181   overall  1.26  1.07  1.02  1.01  1.00  1.00  1.00  1.00  1.01  1.01


 List of     10 reflections *NOT* obeying Wilson distribution (Z> 10.0)

   h    k    l     RES      Z     Intensity    Sigma

    0   34   30    2.10   12.93  0.3396E+04  0.1821E+03 "alien"
    9   26   28    2.22   11.54  0.2557E+04  0.1619E+03 "alien"
    5   24   25    2.65   11.24  0.7236E+04  0.2564E+03 "alien"
    2   30   33    2.18   11.09  0.1754E+04  0.9412E+02 "alien"
    2    8    1    9.40   10.93  0.9788E+05  0.3328E+04 "alien"
    1   26   33    2.38   10.64  0.3854E+04  0.1595E+03 "alien"
    2    7    2   10.26   10.27  0.9196E+05  0.2854E+04 "alien"
   11    7   26    2.73   10.25  0.8553E+04  0.3620E+03 "alien"
    1   29   19    2.64   10.19  0.6557E+04  0.2966E+03 "alien"
    8   22   15    2.85   10.18  0.8497E+04  0.3190E+03 "alien"


 List of     10 reflections *NOT* obeying Wilson distribution (sorted by resolution)
 Ice rings could occur at (Angstrom):
 3.897,3.669,3.441, 2.671,2.249,2.072, 1.948,1.918,1.883,1.721

   h    k    l     RES      Z     Intensity    Sigma

    0   34   30    2.10   12.93  0.3396E+04  0.1821E+03
    2   30   33    2.18   11.09  0.1754E+04  0.9412E+02
    9   26   28    2.22   11.54  0.2557E+04  0.1619E+03
    1   26   33    2.38   10.64  0.3854E+04  0.1595E+03
    1   29   19    2.64   10.19  0.6557E+04  0.2966E+03
    5   24   25    2.65   11.24  0.7236E+04  0.2564E+03
   11    7   26    2.73   10.25  0.8553E+04  0.3620E+03
    8   22   15    2.85   10.18  0.8497E+04  0.3190E+03
    2    8    1    9.40   10.93  0.9788E+05  0.3328E+04
    2    7    2   10.26   10.27  0.9196E+05  0.2854E+04

 NUMBER OF UNIQUE ALIEN REFLECTIONS WITH A Z-SCORE ABOVE LIMIT         0
 (ALIENS ABOVE LIMIT (REJECT_ALIEN=      20.0) ARE MARKED INVALID)

 NUMBER OF REFLECTION RECORDS ON OUTPUT FILE "XDS_ASCII.HKL"      121810
 NUMBER OF ACCEPTED OBSERVATIONS (INCLUDING SYSTEMATIC ABSENCES)  119100
 NUMBER OF REJECTED MISFITS & ALIENS (marked by -1*SIGMA(IOBS))     2710


 cpu time used                 43.8 sec
 elapsed wall-clock time        3.4 sec
