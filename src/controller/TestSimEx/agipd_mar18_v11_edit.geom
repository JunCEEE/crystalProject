; Adapted to fit running ss limits
; Adapted to virtual dataset dimensions in CXI file, 21 November 2018
; OY: Use ONLY geoptimiser from CrystFEL > 0.7.0
; OY: I think this is a very well optimized geometry!
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Manually optimized with hdfsee
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Manually optimized with hdfsee
; Optimized panel offsets can be found at the end of the file
; Manually optimized with hdfsee
; Optimized panel offsets can be found at the end of the file
; Manually optimized with hdfsee
; Camera length from LiTiO calibration
; Manually optimized with hdfsee
; Now all distances between panels is 5.8mm (29 pixels)
; OY: ACHTUNG! Orientation of the 2 halves of the detector might be wrong!
; A bit changed by OY: now 128 panels, rigid groups, bad lines to mask double pixels.
; Fixed errors noticed by Oleksandr
; Beginning of an AGIPD geometry construction by Helen Ginn on Thursday before beam time.
; Global panel positions not guesses
; Local positioning largely - but not entirely - guesses
; fast and slow scan directions have the potential to be accurate.

data = /entry_1/data_1/data
mask = /entry_1/data_1/mask
dim0 = %                      ; placeholder: this is the running frame# dimension

mask_good = 0x0
mask_bad = 0xffff

adu_per_eV = 0.0075  ; no idea
clen = 0.1249
;+clen = 0.1248
;clen = 0.164 ;for ADDU=-800
;19.57mm per 100ADDU
photon_energy = 9300
res = 5000 ; 200 um pixels

rigid_group_q0 = p0a0,p0a1,p0a2,p0a3,p0a4,p0a5,p0a6,p0a7,p1a0,p1a1,p1a2,p1a3,p1a4,p1a5,p1a6,p1a7,p2a0,p2a1,p2a2,p2a3,p2a4,p2a5,p2a6,p2a7,p3a0,p3a1,p3a2,p3a3,p3a4,p3a5,p3a6,p3a7
rigid_group_q1 = p4a0,p4a1,p4a2,p4a3,p4a4,p4a5,p4a6,p4a7,p5a0,p5a1,p5a2,p5a3,p5a4,p5a5,p5a6,p5a7,p6a0,p6a1,p6a2,p6a3,p6a4,p6a5,p6a6,p6a7,p7a0,p7a1,p7a2,p7a3,p7a4,p7a5,p7a6,p7a7
rigid_group_q2 = p8a0,p8a1,p8a2,p8a3,p8a4,p8a5,p8a6,p8a7,p9a0,p9a1,p9a2,p9a3,p9a4,p9a5,p9a6,p9a7,p10a0,p10a1,p10a2,p10a3,p10a4,p10a5,p10a6,p10a7,p11a0,p11a1,p11a2,p11a3,p11a4,p11a5,p11a6,p11a7
rigid_group_q3 = p12a0,p12a1,p12a2,p12a3,p12a4,p12a5,p12a6,p12a7,p13a0,p13a1,p13a2,p13a3,p13a4,p13a5,p13a6,p13a7,p14a0,p14a1,p14a2,p14a3,p14a4,p14a5,p14a6,p14a7,p15a0,p15a1,p15a2,p15a3,p15a4,p15a5,p15a6,p15a7

rigid_group_p0 = p0a0,p0a1,p0a2,p0a3,p0a4,p0a5,p0a6,p0a7
rigid_group_p1 = p1a0,p1a1,p1a2,p1a3,p1a4,p1a5,p1a6,p1a7
rigid_group_p2 = p2a0,p2a1,p2a2,p2a3,p2a4,p2a5,p2a6,p2a7
rigid_group_p3 = p3a0,p3a1,p3a2,p3a3,p3a4,p3a5,p3a6,p3a7
rigid_group_p4 = p4a0,p4a1,p4a2,p4a3,p4a4,p4a5,p4a6,p4a7
rigid_group_p5 = p5a0,p5a1,p5a2,p5a3,p5a4,p5a5,p5a6,p5a7
rigid_group_p6 = p6a0,p6a1,p6a2,p6a3,p6a4,p6a5,p6a6,p6a7
rigid_group_p7 = p7a0,p7a1,p7a2,p7a3,p7a4,p7a5,p7a6,p7a7
rigid_group_p8 = p8a0,p8a1,p8a2,p8a3,p8a4,p8a5,p8a6,p8a7
rigid_group_p9 = p9a0,p9a1,p9a2,p9a3,p9a4,p9a5,p9a6,p9a7
rigid_group_p10 = p10a0,p10a1,p10a2,p10a3,p10a4,p10a5,p10a6,p10a7
rigid_group_p11 = p11a0,p11a1,p11a2,p11a3,p11a4,p11a5,p11a6,p11a7
rigid_group_p12 = p12a0,p12a1,p12a2,p12a3,p12a4,p12a5,p12a6,p12a7
rigid_group_p13 = p13a0,p13a1,p13a2,p13a3,p13a4,p13a5,p13a6,p13a7
rigid_group_p14 = p14a0,p14a1,p14a2,p14a3,p14a4,p14a5,p14a6,p14a7
rigid_group_p15 = p15a0,p15a1,p15a2,p15a3,p15a4,p15a5,p15a6,p15a7

rigid_group_collection_quadrants = q0,q1,q2,q3
rigid_group_collection_asics = p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15


p0a0/dim1 = 0        ; panel number
p0a0/dim2 = ss       ; slow scan pixel direction within panel
p0a0/dim3 = fs       ; fast scan pixel direction within panel
p0a0/min_fs = 0
p0a0/min_ss = 0
p0a0/max_fs = 127
p0a0/max_ss = 63
p0a0/fs = -0.001328x -0.999995y
p0a0/ss = +0.999995x -0.001328y
p0a0/corner_x = -526.111
p0a0/corner_y = 629.565
p0a0/coffset = 0.001112

p0a1/dim1 = 0
p0a1/dim2 = ss
p0a1/dim3 = fs
p0a1/min_fs = 0
p0a1/min_ss = 64
p0a1/max_fs = 127
p0a1/max_ss = 127
p0a1/fs = -0.001328x -0.999995y
p0a1/ss = +0.999995x -0.001328y
p0a1/corner_x = -460.111
p0a1/corner_y = 629.456
p0a1/coffset = 0.001112

p0a2/dim1 = 0
p0a2/dim2 = ss
p0a2/dim3 = fs
p0a2/min_fs = 0
p0a2/min_ss = 128
p0a2/max_fs = 127
p0a2/max_ss = 191
p0a2/fs = -0.001328x -0.999995y
p0a2/ss = +0.999995x -0.001328y
p0a2/corner_x = -394.117
p0a2/corner_y = 629.346
p0a2/coffset = 0.001112

p0a3/dim1 = 0
p0a3/dim2 = ss
p0a3/dim3 = fs
p0a3/min_fs = 0
p0a3/min_ss = 192
p0a3/max_fs = 127
p0a3/max_ss = 255
p0a3/fs = -0.001328x -0.999995y
p0a3/ss = +0.999995x -0.001328y
p0a3/corner_x = -328.115
p0a3/corner_y = 629.236
p0a3/coffset = 0.001112

p0a4/dim1 = 0
p0a4/dim2 = ss
p0a4/dim3 = fs
p0a4/min_fs = 0
p0a4/min_ss = 256
p0a4/max_fs = 127
p0a4/max_ss = 319
p0a4/fs = -0.001328x -0.999995y
p0a4/ss = +0.999995x -0.001328y
p0a4/corner_x = -262.115
p0a4/corner_y = 629.127
p0a4/coffset = 0.001112

p0a5/dim1 = 0
p0a5/dim2 = ss
p0a5/dim3 = fs
p0a5/min_fs = 0
p0a5/min_ss = 320
p0a5/max_fs = 127
p0a5/max_ss = 383
p0a5/fs = -0.001328x -0.999995y
p0a5/ss = +0.999995x -0.001328y
p0a5/corner_x = -196.115
p0a5/corner_y = 629.017
p0a5/coffset = 0.001112

p0a6/dim1 = 0
p0a6/dim2 = ss
p0a6/dim3 = fs
p0a6/min_fs = 0
p0a6/min_ss = 384
p0a6/max_fs = 127
p0a6/max_ss = 447
p0a6/fs = -0.001328x -0.999995y
p0a6/ss = +0.999995x -0.001328y
p0a6/corner_x = -130.112
p0a6/corner_y = 628.907
p0a6/coffset = 0.001112

p0a7/dim1 = 0
p0a7/dim2 = ss
p0a7/dim3 = fs
p0a7/min_fs = 0
p0a7/min_ss = 448
p0a7/max_fs = 127
p0a7/max_ss = 511
p0a7/fs = -0.001328x -0.999995y
p0a7/ss = +0.999995x -0.001328y
p0a7/corner_x = -64.114
p0a7/corner_y = 628.797
p0a7/coffset = 0.001112

p1a0/dim1 = 1
p1a0/dim2 = ss
p1a0/dim3 = fs
p1a0/min_fs = 0
p1a0/min_ss = 512
p1a0/max_fs = 127
p1a0/max_ss = 575
p1a0/fs = -0.001977x -0.999998y
p1a0/ss = +0.999998x -0.001977y
p1a0/corner_x = -526.318
p1a0/corner_y = 472.349
p1a0/coffset = 0.000934

p1a1/dim1 = 1
p1a1/dim2 = ss
p1a1/dim3 = fs
p1a1/min_fs = 0
p1a1/min_ss = 576
p1a1/max_fs = 127
p1a1/max_ss = 639
p1a1/fs = -0.001977x -0.999998y
p1a1/ss = +0.999998x -0.001977y
p1a1/corner_x = -460.32
p1a1/corner_y = 472.23
p1a1/coffset = 0.000934

p1a2/dim1 = 1
p1a2/dim2 = ss
p1a2/dim3 = fs
p1a2/min_fs = 0
p1a2/min_ss = 640
p1a2/max_fs = 127
p1a2/max_ss = 703
p1a2/fs = -0.001977x -0.999998y
p1a2/ss = +0.999998x -0.001977y
p1a2/corner_x = -394.322
p1a2/corner_y = 472.111
p1a2/coffset = 0.000934

p1a3/dim1 = 1
p1a3/dim2 = ss
p1a3/dim3 = fs
p1a3/min_fs = 0
p1a3/min_ss = 704
p1a3/max_fs = 127
p1a3/max_ss = 767
p1a3/fs = -0.001977x -0.999998y
p1a3/ss = +0.999998x -0.001977y
p1a3/corner_x = -328.325
p1a3/corner_y = 471.992
p1a3/coffset = 0.000934

p1a4/dim1 = 1
p1a4/dim2 = ss
p1a4/dim3 = fs
p1a4/min_fs = 0
p1a4/min_ss = 768
p1a4/max_fs = 127
p1a4/max_ss = 831
p1a4/fs = -0.001977x -0.999998y
p1a4/ss = +0.999998x -0.001977y
p1a4/corner_x = -262.327
p1a4/corner_y = 471.874
p1a4/coffset = 0.000934

p1a5/dim1 = 1
p1a5/dim2 = ss
p1a5/dim3 = fs
p1a5/min_fs = 0
p1a5/min_ss = 832
p1a5/max_fs = 127
p1a5/max_ss = 895
p1a5/fs = -0.001977x -0.999998y
p1a5/ss = +0.999998x -0.001977y
p1a5/corner_x = -196.331
p1a5/corner_y = 471.755
p1a5/coffset = 0.000934

p1a6/dim1 = 1
p1a6/dim2 = ss
p1a6/dim3 = fs
p1a6/min_fs = 0
p1a6/min_ss = 896
p1a6/max_fs = 127
p1a6/max_ss = 959
p1a6/fs = -0.001977x -0.999998y
p1a6/ss = +0.999998x -0.001977y
p1a6/corner_x = -130.313
p1a6/corner_y = 471.636
p1a6/coffset = 0.000934

p1a7/dim1 = 1
p1a7/dim2 = ss
p1a7/dim3 = fs
p1a7/min_fs = 0
p1a7/min_ss = 960
p1a7/max_fs = 127
p1a7/max_ss = 1023
p1a7/fs = -0.001977x -0.999998y
p1a7/ss = +0.999998x -0.001977y
p1a7/corner_x = -64.312
p1a7/corner_y = 471.517
p1a7/coffset = 0.000934

p2a0/dim1 = 2
p2a0/dim2 = ss
p2a0/dim3 = fs
p2a0/min_fs = 0
p2a0/min_ss = 1024
p2a0/max_fs = 127
p2a0/max_ss = 1087
p2a0/fs = -0.000961x -1.000001y
p2a0/ss = +1.000001x -0.000961y
p2a0/corner_x = -526.313
p2a0/corner_y = 315.635
p2a0/coffset = 0.000685

p2a1/dim1 = 2
p2a1/dim2 = ss
p2a1/dim3 = fs
p2a1/min_fs = 0
p2a1/min_ss = 1088
p2a1/max_fs = 127
p2a1/max_ss = 1151
p2a1/fs = -0.000961x -1.000001y
p2a1/ss = +1.000001x -0.000961y
p2a1/corner_x = -460.314
p2a1/corner_y = 315.563
p2a1/coffset = 0.000685

p2a2/dim1 = 2
p2a2/dim2 = ss
p2a2/dim3 = fs
p2a2/min_fs = 0
p2a2/min_ss = 1152
p2a2/max_fs = 127
p2a2/max_ss = 1215
p2a2/fs = -0.000961x -1.000001y
p2a2/ss = +1.000001x -0.000961y
p2a2/corner_x = -394.315
p2a2/corner_y = 315.491
p2a2/coffset = 0.000685

p2a3/dim1 = 2
p2a3/dim2 = ss
p2a3/dim3 = fs
p2a3/min_fs = 0
p2a3/min_ss = 1216
p2a3/max_fs = 127
p2a3/max_ss = 1279
p2a3/fs = -0.000961x -1.000001y
p2a3/ss = +1.000001x -0.000961y
p2a3/corner_x = -328.316
p2a3/corner_y = 315.419
p2a3/coffset = 0.000685

p2a4/dim1 = 2
p2a4/dim2 = ss
p2a4/dim3 = fs
p2a4/min_fs = 0
p2a4/min_ss = 1280
p2a4/max_fs = 127
p2a4/max_ss = 1343
p2a4/fs = -0.000961x -1.000001y
p2a4/ss = +1.000001x -0.000961y
p2a4/corner_x = -262.317
p2a4/corner_y = 315.348
p2a4/coffset = 0.000685

p2a5/dim1 = 2
p2a5/dim2 = ss
p2a5/dim3 = fs
p2a5/min_fs = 0
p2a5/min_ss = 1344
p2a5/max_fs = 127
p2a5/max_ss = 1407
p2a5/fs = -0.000961x -1.000001y
p2a5/ss = +1.000001x -0.000961y
p2a5/corner_x = -196.319
p2a5/corner_y = 315.276
p2a5/coffset = 0.000685

p2a6/dim1 = 2
p2a6/dim2 = ss
p2a6/dim3 = fs
p2a6/min_fs = 0
p2a6/min_ss = 1408
p2a6/max_fs = 127
p2a6/max_ss = 1471
p2a6/fs = -0.000961x -1.000001y
p2a6/ss = +1.000001x -0.000961y
p2a6/corner_x = -130.304
p2a6/corner_y = 315.204
p2a6/coffset = 0.000685

p2a7/dim1 = 2
p2a7/dim2 = ss
p2a7/dim3 = fs
p2a7/min_fs = 0
p2a7/min_ss = 1472
p2a7/max_fs = 127
p2a7/max_ss = 1535
p2a7/fs = -0.000961x -1.000001y
p2a7/ss = +1.000001x -0.000961y
p2a7/corner_x = -64.3013
p2a7/corner_y = 315.132
p2a7/coffset = 0.000685

p3a0/dim1 = 3
p3a0/dim2 = ss
p3a0/dim3 = fs
p3a0/min_fs = 0
p3a0/min_ss = 1536
p3a0/max_fs = 127
p3a0/max_ss = 1599
p3a0/fs = +0.00159x -0.999999y
p3a0/ss = +0.999999x +0.00159y
p3a0/corner_x = -526.589
p3a0/corner_y = 157.923
p3a0/coffset = 0.00092

p3a1/dim1 = 3
p3a1/dim2 = ss
p3a1/dim3 = fs
p3a1/min_fs = 0
p3a1/min_ss = 1600
p3a1/max_fs = 127
p3a1/max_ss = 1663
p3a1/fs = +0.00159x -0.999999y
p3a1/ss = +0.999999x +0.00159y
p3a1/corner_x = -460.592
p3a1/corner_y = 158.03
p3a1/coffset = 0.00092

p3a2/dim1 = 3
p3a2/dim2 = ss
p3a2/dim3 = fs
p3a2/min_fs = 0
p3a2/min_ss = 1664
p3a2/max_fs = 127
p3a2/max_ss = 1727
p3a2/fs = +0.00159x -0.999999y
p3a2/ss = +0.999999x +0.00159y
p3a2/corner_x = -394.594
p3a2/corner_y = 158.137
p3a2/coffset = 0.00092

p3a3/dim1 = 3
p3a3/dim2 = ss
p3a3/dim3 = fs
p3a3/min_fs = 0
p3a3/min_ss = 1728
p3a3/max_fs = 127
p3a3/max_ss = 1791
p3a3/fs = +0.00159x -0.999999y
p3a3/ss = +0.999999x +0.00159y
p3a3/corner_x = -328.598
p3a3/corner_y = 158.243
p3a3/coffset = 0.00092

p3a4/dim1 = 3
p3a4/dim2 = ss
p3a4/dim3 = fs
p3a4/min_fs = 0
p3a4/min_ss = 1792
p3a4/max_fs = 127
p3a4/max_ss = 1855
p3a4/fs = +0.00159x -0.999999y
p3a4/ss = +0.999999x +0.00159y
p3a4/corner_x = -262.598
p3a4/corner_y = 158.35
p3a4/coffset = 0.00092

p3a5/dim1 = 3
p3a5/dim2 = ss
p3a5/dim3 = fs
p3a5/min_fs = 0
p3a5/min_ss = 1856
p3a5/max_fs = 127
p3a5/max_ss = 1919
p3a5/fs = +0.00159x -0.999999y
p3a5/ss = +0.999999x +0.00159y
p3a5/corner_x = -196.584
p3a5/corner_y = 158.457
p3a5/coffset = 0.00092

p3a6/dim1 = 3
p3a6/dim2 = ss
p3a6/dim3 = fs
p3a6/min_fs = 0
p3a6/min_ss = 1920
p3a6/max_fs = 127
p3a6/max_ss = 1983
p3a6/fs = +0.00159x -0.999999y
p3a6/ss = +0.999999x +0.00159y
p3a6/corner_x = -130.581
p3a6/corner_y = 158.564
p3a6/coffset = 0.00092

p3a7/dim1 = 3
p3a7/dim2 = ss
p3a7/dim3 = fs
p3a7/min_fs = 0
p3a7/min_ss = 1984
p3a7/max_fs = 127
p3a7/max_ss = 2047
p3a7/fs = +0.00159x -0.999999y
p3a7/ss = +0.999999x +0.00159y
p3a7/corner_x = -64.5813
p3a7/corner_y = 158.671
p3a7/coffset = 0.00092

p4a0/dim1 = 4
p4a0/dim2 = ss
p4a0/dim3 = fs
p4a0/min_fs = 0
p4a0/min_ss = 2048
p4a0/max_fs = 127
p4a0/max_ss = 2111
p4a0/fs = -0.001899x -0.999999y
p4a0/ss = +0.999999x -0.001899y
p4a0/corner_x = -548.897
p4a0/corner_y = -4.37029
p4a0/coffset = 0.00075

p4a1/dim1 = 4
p4a1/dim2 = ss
p4a1/dim3 = fs
p4a1/min_fs = 0
p4a1/min_ss = 2112
p4a1/max_fs = 127
p4a1/max_ss = 2175
p4a1/fs = -0.001899x -0.999999y
p4a1/ss = +0.999999x -0.001899y
p4a1/corner_x = -482.901
p4a1/corner_y = -4.48727
p4a1/coffset = 0.00075

p4a2/dim1 = 4
p4a2/dim2 = ss
p4a2/dim3 = fs
p4a2/min_fs = 0
p4a2/min_ss = 2176
p4a2/max_fs = 127
p4a2/max_ss = 2239
p4a2/fs = -0.001899x -0.999999y
p4a2/ss = +0.999999x -0.001899y
p4a2/corner_x = -416.903
p4a2/corner_y = -4.60427
p4a2/coffset = 0.00075

p4a3/dim1 = 4
p4a3/dim2 = ss
p4a3/dim3 = fs
p4a3/min_fs = 0
p4a3/min_ss = 2240
p4a3/max_fs = 127
p4a3/max_ss = 2303
p4a3/fs = -0.001899x -0.999999y
p4a3/ss = +0.999999x -0.001899y
p4a3/corner_x = -350.906
p4a3/corner_y = -4.72126
p4a3/coffset = 0.00075

p4a4/dim1 = 4
p4a4/dim2 = ss
p4a4/dim3 = fs
p4a4/min_fs = 0
p4a4/min_ss = 2304
p4a4/max_fs = 127
p4a4/max_ss = 2367
p4a4/fs = -0.001899x -0.999999y
p4a4/ss = +0.999999x -0.001899y
p4a4/corner_x = -284.907
p4a4/corner_y = -4.83825
p4a4/coffset = 0.00075

p4a5/dim1 = 4
p4a5/dim2 = ss
p4a5/dim3 = fs
p4a5/min_fs = 0
p4a5/min_ss = 2368
p4a5/max_fs = 127
p4a5/max_ss = 2431
p4a5/fs = -0.001899x -0.999999y
p4a5/ss = +0.999999x -0.001899y
p4a5/corner_x = -218.909
p4a5/corner_y = -4.95524
p4a5/coffset = 0.00075

p4a6/dim1 = 4
p4a6/dim2 = ss
p4a6/dim3 = fs
p4a6/min_fs = 0
p4a6/min_ss = 2432
p4a6/max_fs = 127
p4a6/max_ss = 2495
p4a6/fs = -0.001899x -0.999999y
p4a6/ss = +0.999999x -0.001899y
p4a6/corner_x = -152.912
p4a6/corner_y = -5.07222
p4a6/coffset = 0.00075

p4a7/dim1 = 4
p4a7/dim2 = ss
p4a7/dim3 = fs
p4a7/min_fs = 0
p4a7/min_ss = 2496
p4a7/max_fs = 127
p4a7/max_ss = 2559
p4a7/fs = -0.001899x -0.999999y
p4a7/ss = +0.999999x -0.001899y
p4a7/corner_x = -86.9154
p4a7/corner_y = -5.18921
p4a7/coffset = 0.00075

p5a0/dim1 = 5
p5a0/dim2 = ss
p5a0/dim3 = fs
p5a0/min_fs = 0
p5a0/min_ss = 2560
p5a0/max_fs = 127
p5a0/max_ss = 2623
p5a0/fs = -0.000318x -1.0y
p5a0/ss = +1.0x -0.000318y
p5a0/corner_x = -549.291
p5a0/corner_y = -162.954
p5a0/coffset = 0.000863

p5a1/dim1 = 5
p5a1/dim2 = ss
p5a1/dim3 = fs
p5a1/min_fs = 0
p5a1/min_ss = 2624
p5a1/max_fs = 127
p5a1/max_ss = 2687
p5a1/fs = -0.000318x -1.0y
p5a1/ss = +1.0x -0.000318y
p5a1/corner_x = -483.294
p5a1/corner_y = -162.982
p5a1/coffset = 0.000863

p5a2/dim1 = 5
p5a2/dim2 = ss
p5a2/dim3 = fs
p5a2/min_fs = 0
p5a2/min_ss = 2688
p5a2/max_fs = 127
p5a2/max_ss = 2751
p5a2/fs = -0.000318x -1.0y
p5a2/ss = +1.0x -0.000318y
p5a2/corner_x = -417.296
p5a2/corner_y = -163.011
p5a2/coffset = 0.000863

p5a3/dim1 = 5
p5a3/dim2 = ss
p5a3/dim3 = fs
p5a3/min_fs = 0
p5a3/min_ss = 2752
p5a3/max_fs = 127
p5a3/max_ss = 2815
p5a3/fs = -0.000318x -1.0y
p5a3/ss = +1.0x -0.000318y
p5a3/corner_x = -351.299
p5a3/corner_y = -163.04
p5a3/coffset = 0.000863

p5a4/dim1 = 5
p5a4/dim2 = ss
p5a4/dim3 = fs
p5a4/min_fs = 0
p5a4/min_ss = 2816
p5a4/max_fs = 127
p5a4/max_ss = 2879
p5a4/fs = -0.000318x -1.0y
p5a4/ss = +1.0x -0.000318y
p5a4/corner_x = -285.301
p5a4/corner_y = -163.068
p5a4/coffset = 0.000863

p5a5/dim1 = 5
p5a5/dim2 = ss
p5a5/dim3 = fs
p5a5/min_fs = 0
p5a5/min_ss = 2880
p5a5/max_fs = 127
p5a5/max_ss = 2943
p5a5/fs = -0.000318x -1.0y
p5a5/ss = +1.0x -0.000318y
p5a5/corner_x = -219.286
p5a5/corner_y = -163.097
p5a5/coffset = 0.000863

p5a6/dim1 = 5
p5a6/dim2 = ss
p5a6/dim3 = fs
p5a6/min_fs = 0
p5a6/min_ss = 2944
p5a6/max_fs = 127
p5a6/max_ss = 3007
p5a6/fs = -0.000318x -1.0y
p5a6/ss = +1.0x -0.000318y
p5a6/corner_x = -153.285
p5a6/corner_y = -163.126
p5a6/coffset = 0.000863

p5a7/dim1 = 5
p5a7/dim2 = ss
p5a7/dim3 = fs
p5a7/min_fs = 0
p5a7/min_ss = 3008
p5a7/max_fs = 127
p5a7/max_ss = 3071
p5a7/fs = -0.000318x -1.0y
p5a7/ss = +1.0x -0.000318y
p5a7/corner_x = -87.2849
p5a7/corner_y = -163.154
p5a7/coffset = 0.000863

p6a0/dim1 = 6
p6a0/dim2 = ss
p6a0/dim3 = fs
p6a0/min_fs = 0
p6a0/min_ss = 3072
p6a0/max_fs = 127
p6a0/max_ss = 3135
p6a0/fs = -0.004196x -0.999992y
p6a0/ss = +0.999992x -0.004196y
p6a0/corner_x = -549.258
p6a0/corner_y = -318.496
p6a0/coffset = 0.000926

p6a1/dim1 = 6
p6a1/dim2 = ss
p6a1/dim3 = fs
p6a1/min_fs = 0
p6a1/min_ss = 3136
p6a1/max_fs = 127
p6a1/max_ss = 3199
p6a1/fs = -0.004196x -0.999992y
p6a1/ss = +0.999992x -0.004196y
p6a1/corner_x = -483.261
p6a1/corner_y = -318.781
p6a1/coffset = 0.000926

p6a2/dim1 = 6
p6a2/dim2 = ss
p6a2/dim3 = fs
p6a2/min_fs = 0
p6a2/min_ss = 3200
p6a2/max_fs = 127
p6a2/max_ss = 3263
p6a2/fs = -0.004196x -0.999992y
p6a2/ss = +0.999992x -0.004196y
p6a2/corner_x = -417.264
p6a2/corner_y = -319.067
p6a2/coffset = 0.000926

p6a3/dim1 = 6
p6a3/dim2 = ss
p6a3/dim3 = fs
p6a3/min_fs = 0
p6a3/min_ss = 3264
p6a3/max_fs = 127
p6a3/max_ss = 3327
p6a3/fs = -0.004196x -0.999992y
p6a3/ss = +0.999992x -0.004196y
p6a3/corner_x = -351.266
p6a3/corner_y = -319.353
p6a3/coffset = 0.000926

p6a4/dim1 = 6
p6a4/dim2 = ss
p6a4/dim3 = fs
p6a4/min_fs = 0
p6a4/min_ss = 3328
p6a4/max_fs = 127
p6a4/max_ss = 3391
p6a4/fs = -0.004196x -0.999992y
p6a4/ss = +0.999992x -0.004196y
p6a4/corner_x = -285.27
p6a4/corner_y = -319.638
p6a4/coffset = 0.000926

p6a5/dim1 = 6
p6a5/dim2 = ss
p6a5/dim3 = fs
p6a5/min_fs = 0
p6a5/min_ss = 3392
p6a5/max_fs = 127
p6a5/max_ss = 3455
p6a5/fs = -0.004196x -0.999992y
p6a5/ss = +0.999992x -0.004196y
p6a5/corner_x = -219.271
p6a5/corner_y = -319.924
p6a5/coffset = 0.000926

p6a6/dim1 = 6
p6a6/dim2 = ss
p6a6/dim3 = fs
p6a6/min_fs = 0
p6a6/min_ss = 3456
p6a6/max_fs = 127
p6a6/max_ss = 3519
p6a6/fs = -0.004196x -0.999992y
p6a6/ss = +0.999992x -0.004196y
p6a6/corner_x = -153.274
p6a6/corner_y = -320.209
p6a6/coffset = 0.000926

p6a7/dim1 = 6
p6a7/dim2 = ss
p6a7/dim3 = fs
p6a7/min_fs = 0
p6a7/min_ss = 3520
p6a7/max_fs = 127
p6a7/max_ss = 3583
p6a7/fs = -0.004196x -0.999992y
p6a7/ss = +0.999992x -0.004196y
p6a7/corner_x = -87.2759
p6a7/corner_y = -320.495
p6a7/coffset = 0.000926

p7a0/dim1 = 7
p7a0/dim2 = ss
p7a0/dim3 = fs
p7a0/min_fs = 0
p7a0/min_ss = 3584
p7a0/max_fs = 127
p7a0/max_ss = 3647
p7a0/fs = -0.002957x -0.999994y
p7a0/ss = +0.999994x -0.002957y
p7a0/corner_x = -549.263
p7a0/corner_y = -476.162
p7a0/coffset = 0.001421

p7a1/dim1 = 7
p7a1/dim2 = ss
p7a1/dim3 = fs
p7a1/min_fs = 0
p7a1/min_ss = 3648
p7a1/max_fs = 127
p7a1/max_ss = 3711
p7a1/fs = -0.002957x -0.999994y
p7a1/ss = +0.999994x -0.002957y
p7a1/corner_x = -483.269
p7a1/corner_y = -476.36
p7a1/coffset = 0.001421

p7a2/dim1 = 7
p7a2/dim2 = ss
p7a2/dim3 = fs
p7a2/min_fs = 0
p7a2/min_ss = 3712
p7a2/max_fs = 127
p7a2/max_ss = 3775
p7a2/fs = -0.002957x -0.999994y
p7a2/ss = +0.999994x -0.002957y
p7a2/corner_x = -417.273
p7a2/corner_y = -476.558
p7a2/coffset = 0.001421

p7a3/dim1 = 7
p7a3/dim2 = ss
p7a3/dim3 = fs
p7a3/min_fs = 0
p7a3/min_ss = 3776
p7a3/max_fs = 127
p7a3/max_ss = 3839
p7a3/fs = -0.002957x -0.999994y
p7a3/ss = +0.999994x -0.002957y
p7a3/corner_x = -351.276
p7a3/corner_y = -476.756
p7a3/coffset = 0.001421

p7a4/dim1 = 7
p7a4/dim2 = ss
p7a4/dim3 = fs
p7a4/min_fs = 0
p7a4/min_ss = 3840
p7a4/max_fs = 127
p7a4/max_ss = 3903
p7a4/fs = -0.002957x -0.999994y
p7a4/ss = +0.999994x -0.002957y
p7a4/corner_x = -285.28
p7a4/corner_y = -476.954
p7a4/coffset = 0.001421

p7a5/dim1 = 7
p7a5/dim2 = ss
p7a5/dim3 = fs
p7a5/min_fs = 0
p7a5/min_ss = 3904
p7a5/max_fs = 127
p7a5/max_ss = 3967
p7a5/fs = -0.002957x -0.999994y
p7a5/ss = +0.999994x -0.002957y
p7a5/corner_x = -219.283
p7a5/corner_y = -477.152
p7a5/coffset = 0.001421

p7a6/dim1 = 7
p7a6/dim2 = ss
p7a6/dim3 = fs
p7a6/min_fs = 0
p7a6/min_ss = 3968
p7a6/max_fs = 127
p7a6/max_ss = 4031
p7a6/fs = -0.002957x -0.999994y
p7a6/ss = +0.999994x -0.002957y
p7a6/corner_x = -153.285
p7a6/corner_y = -477.35
p7a6/coffset = 0.001421

p7a7/dim1 = 7
p7a7/dim2 = ss
p7a7/dim3 = fs
p7a7/min_fs = 0
p7a7/min_ss = 4032
p7a7/max_fs = 127
p7a7/max_ss = 4095
p7a7/fs = -0.002957x -0.999994y
p7a7/ss = +0.999994x -0.002957y
p7a7/corner_x = -87.2876
p7a7/corner_y = -477.547
p7a7/coffset = 0.001421

p8a0/dim1 = 8
p8a0/dim2 = ss
p8a0/dim3 = fs
p8a0/min_fs = 0
p8a0/min_ss = 4096
p8a0/max_fs = 127
p8a0/max_ss = 4159
p8a0/fs = +0.000124x +1.0y
p8a0/ss = -1.0x +0.000124y
p8a0/corner_x = 521.881
p8a0/corner_y = -156.667
p8a0/coffset = 0.000612

p8a1/dim1 = 8
p8a1/dim2 = ss
p8a1/dim3 = fs
p8a1/min_fs = 0
p8a1/min_ss = 4160
p8a1/max_fs = 127
p8a1/max_ss = 4223
p8a1/fs = +0.000124x +1.0y
p8a1/ss = -1.0x +0.000124y
p8a1/corner_x = 455.883
p8a1/corner_y = -156.664
p8a1/coffset = 0.000612

p8a2/dim1 = 8
p8a2/dim2 = ss
p8a2/dim3 = fs
p8a2/min_fs = 0
p8a2/min_ss = 4224
p8a2/max_fs = 127
p8a2/max_ss = 4287
p8a2/fs = +0.000124x +1.0y
p8a2/ss = -1.0x +0.000124y
p8a2/corner_x = 389.884
p8a2/corner_y = -156.661
p8a2/coffset = 0.000612

p8a3/dim1 = 8
p8a3/dim2 = ss
p8a3/dim3 = fs
p8a3/min_fs = 0
p8a3/min_ss = 4288
p8a3/max_fs = 127
p8a3/max_ss = 4351
p8a3/fs = +0.000124x +1.0y
p8a3/ss = -1.0x +0.000124y
p8a3/corner_x = 323.887
p8a3/corner_y = -156.658
p8a3/coffset = 0.000612

p8a4/dim1 = 8
p8a4/dim2 = ss
p8a4/dim3 = fs
p8a4/min_fs = 0
p8a4/min_ss = 4352
p8a4/max_fs = 127
p8a4/max_ss = 4415
p8a4/fs = +0.000124x +1.0y
p8a4/ss = -1.0x +0.000124y
p8a4/corner_x = 257.889
p8a4/corner_y = -156.656
p8a4/coffset = 0.000612

p8a5/dim1 = 8
p8a5/dim2 = ss
p8a5/dim3 = fs
p8a5/min_fs = 0
p8a5/min_ss = 4416
p8a5/max_fs = 127
p8a5/max_ss = 4479
p8a5/fs = +0.000124x +1.0y
p8a5/ss = -1.0x +0.000124y
p8a5/corner_x = 191.89
p8a5/corner_y = -156.653
p8a5/coffset = 0.000612

p8a6/dim1 = 8
p8a6/dim2 = ss
p8a6/dim3 = fs
p8a6/min_fs = 0
p8a6/min_ss = 4480
p8a6/max_fs = 127
p8a6/max_ss = 4543
p8a6/fs = +0.000124x +1.0y
p8a6/ss = -1.0x +0.000124y
p8a6/corner_x = 125.892
p8a6/corner_y = -156.65
p8a6/coffset = 0.000612

p8a7/dim1 = 8
p8a7/dim2 = ss
p8a7/dim3 = fs
p8a7/min_fs = 0
p8a7/min_ss = 4544
p8a7/max_fs = 127
p8a7/max_ss = 4607
p8a7/fs = +0.000124x +1.0y
p8a7/ss = -1.0x +0.000124y
p8a7/corner_x = 59.8947
p8a7/corner_y = -156.648
p8a7/coffset = 0.000612

p9a0/dim1 = 9
p9a0/dim2 = ss
p9a0/dim3 = fs
p9a0/min_fs = 0
p9a0/min_ss = 4608
p9a0/max_fs = 127
p9a0/max_ss = 4671
p9a0/fs = +0.000404x +0.999999y
p9a0/ss = -0.999999x +0.000404y
p9a0/corner_x = 521.673
p9a0/corner_y = -313.928
p9a0/coffset = 0.000765

p9a1/dim1 = 9
p9a1/dim2 = ss
p9a1/dim3 = fs
p9a1/min_fs = 0
p9a1/min_ss = 4672
p9a1/max_fs = 127
p9a1/max_ss = 4735
p9a1/fs = +0.000404x +0.999999y
p9a1/ss = -0.999999x +0.000404y
p9a1/corner_x = 455.677
p9a1/corner_y = -313.905
p9a1/coffset = 0.000765

p9a2/dim1 = 9
p9a2/dim2 = ss
p9a2/dim3 = fs
p9a2/min_fs = 0
p9a2/min_ss = 4736
p9a2/max_fs = 127
p9a2/max_ss = 4799
p9a2/fs = +0.000404x +0.999999y
p9a2/ss = -0.999999x +0.000404y
p9a2/corner_x = 389.68
p9a2/corner_y = -313.882
p9a2/coffset = 0.000765

p9a3/dim1 = 9
p9a3/dim2 = ss
p9a3/dim3 = fs
p9a3/min_fs = 0
p9a3/min_ss = 4800
p9a3/max_fs = 127
p9a3/max_ss = 4863
p9a3/fs = +0.000404x +0.999999y
p9a3/ss = -0.999999x +0.000404y
p9a3/corner_x = 323.683
p9a3/corner_y = -313.859
p9a3/coffset = 0.000765

p9a4/dim1 = 9
p9a4/dim2 = ss
p9a4/dim3 = fs
p9a4/min_fs = 0
p9a4/min_ss = 4864
p9a4/max_fs = 127
p9a4/max_ss = 4927
p9a4/fs = +0.000404x +0.999999y
p9a4/ss = -0.999999x +0.000404y
p9a4/corner_x = 257.685
p9a4/corner_y = -313.836
p9a4/coffset = 0.000765

p9a5/dim1 = 9
p9a5/dim2 = ss
p9a5/dim3 = fs
p9a5/min_fs = 0
p9a5/min_ss = 4928
p9a5/max_fs = 127
p9a5/max_ss = 4991
p9a5/fs = +0.000404x +0.999999y
p9a5/ss = -0.999999x +0.000404y
p9a5/corner_x = 191.688
p9a5/corner_y = -313.813
p9a5/coffset = 0.000765

p9a6/dim1 = 9
p9a6/dim2 = ss
p9a6/dim3 = fs
p9a6/min_fs = 0
p9a6/min_ss = 4992
p9a6/max_fs = 127
p9a6/max_ss = 5055
p9a6/fs = +0.000404x +0.999999y
p9a6/ss = -0.999999x +0.000404y
p9a6/corner_x = 125.669
p9a6/corner_y = -313.789
p9a6/coffset = 0.000765

p9a7/dim1 = 9
p9a7/dim2 = ss
p9a7/dim3 = fs
p9a7/min_fs = 0
p9a7/min_ss = 5056
p9a7/max_fs = 127
p9a7/max_ss = 5119
p9a7/fs = +0.000404x +0.999999y
p9a7/ss = -0.999999x +0.000404y
p9a7/corner_x = 59.6673
p9a7/corner_y = -313.766
p9a7/coffset = 0.000765

p10a0/dim1 = 10
p10a0/dim2 = ss
p10a0/dim3 = fs
p10a0/min_fs = 0
p10a0/min_ss = 5120
p10a0/max_fs = 127
p10a0/max_ss = 5183
p10a0/fs = -0.001205x +0.999999y
p10a0/ss = -0.999999x -0.001205y
p10a0/corner_x = 521.349
p10a0/corner_y = -469.967
p10a0/coffset = 0.000965

p10a1/dim1 = 10
p10a1/dim2 = ss
p10a1/dim3 = fs
p10a1/min_fs = 0
p10a1/min_ss = 5184
p10a1/max_fs = 127
p10a1/max_ss = 5247
p10a1/fs = -0.001205x +0.999999y
p10a1/ss = -0.999999x -0.001205y
p10a1/corner_x = 455.353
p10a1/corner_y = -470.055
p10a1/coffset = 0.000965

p10a2/dim1 = 10
p10a2/dim2 = ss
p10a2/dim3 = fs
p10a2/min_fs = 0
p10a2/min_ss = 5248
p10a2/max_fs = 127
p10a2/max_ss = 5311
p10a2/fs = -0.001205x +0.999999y
p10a2/ss = -0.999999x -0.001205y
p10a2/corner_x = 389.355
p10a2/corner_y = -470.144
p10a2/coffset = 0.000965

p10a3/dim1 = 10
p10a3/dim2 = ss
p10a3/dim3 = fs
p10a3/min_fs = 0
p10a3/min_ss = 5312
p10a3/max_fs = 127
p10a3/max_ss = 5375
p10a3/fs = -0.001205x +0.999999y
p10a3/ss = -0.999999x -0.001205y
p10a3/corner_x = 323.359
p10a3/corner_y = -470.233
p10a3/coffset = 0.000965

p10a4/dim1 = 10
p10a4/dim2 = ss
p10a4/dim3 = fs
p10a4/min_fs = 0
p10a4/min_ss = 5376
p10a4/max_fs = 127
p10a4/max_ss = 5439
p10a4/fs = -0.001205x +0.999999y
p10a4/ss = -0.999999x -0.001205y
p10a4/corner_x = 257.361
p10a4/corner_y = -470.321
p10a4/coffset = 0.000965

p10a5/dim1 = 10
p10a5/dim2 = ss
p10a5/dim3 = fs
p10a5/min_fs = 0
p10a5/min_ss = 5440
p10a5/max_fs = 127
p10a5/max_ss = 5503
p10a5/fs = -0.001205x +0.999999y
p10a5/ss = -0.999999x -0.001205y
p10a5/corner_x = 191.364
p10a5/corner_y = -470.41
p10a5/coffset = 0.000965

p10a6/dim1 = 10
p10a6/dim2 = ss
p10a6/dim3 = fs
p10a6/min_fs = 0
p10a6/min_ss = 5504
p10a6/max_fs = 127
p10a6/max_ss = 5567
p10a6/fs = -0.001205x +0.999999y
p10a6/ss = -0.999999x -0.001205y
p10a6/corner_x = 125.368
p10a6/corner_y = -470.498
p10a6/coffset = 0.000965

p10a7/dim1 = 10
p10a7/dim2 = ss
p10a7/dim3 = fs
p10a7/min_fs = 0
p10a7/min_ss = 5568
p10a7/max_fs = 127
p10a7/max_ss = 5631
p10a7/fs = -0.001205x +0.999999y
p10a7/ss = -0.999999x -0.001205y
p10a7/corner_x = 59.3705
p10a7/corner_y = -470.587
p10a7/coffset = 0.000965

p11a0/dim1 = 11
p11a0/dim2 = ss
p11a0/dim3 = fs
p11a0/min_fs = 0
p11a0/min_ss = 5632
p11a0/max_fs = 127
p11a0/max_ss = 5695
p11a0/fs = -0.00052x +0.999999y
p11a0/ss = -0.999999x -0.00052y
p11a0/corner_x = 520.544
p11a0/corner_y = -628.353
p11a0/coffset = 0.001074

p11a1/dim1 = 11
p11a1/dim2 = ss
p11a1/dim3 = fs
p11a1/min_fs = 0
p11a1/min_ss = 5696
p11a1/max_fs = 127
p11a1/max_ss = 5759
p11a1/fs = -0.00052x +0.999999y
p11a1/ss = -0.999999x -0.00052y
p11a1/corner_x = 454.545
p11a1/corner_y = -628.393
p11a1/coffset = 0.001074

p11a2/dim1 = 11
p11a2/dim2 = ss
p11a2/dim3 = fs
p11a2/min_fs = 0
p11a2/min_ss = 5760
p11a2/max_fs = 127
p11a2/max_ss = 5823
p11a2/fs = -0.00052x +0.999999y
p11a2/ss = -0.999999x -0.00052y
p11a2/corner_x = 388.547
p11a2/corner_y = -628.434
p11a2/coffset = 0.001074

p11a3/dim1 = 11
p11a3/dim2 = ss
p11a3/dim3 = fs
p11a3/min_fs = 0
p11a3/min_ss = 5824
p11a3/max_fs = 127
p11a3/max_ss = 5887
p11a3/fs = -0.00052x +0.999999y
p11a3/ss = -0.999999x -0.00052y
p11a3/corner_x = 322.55
p11a3/corner_y = -628.474
p11a3/coffset = 0.001074

p11a4/dim1 = 11
p11a4/dim2 = ss
p11a4/dim3 = fs
p11a4/min_fs = 0
p11a4/min_ss = 5888
p11a4/max_fs = 127
p11a4/max_ss = 5951
p11a4/fs = -0.00052x +0.999999y
p11a4/ss = -0.999999x -0.00052y
p11a4/corner_x = 256.555
p11a4/corner_y = -628.514
p11a4/coffset = 0.001074

p11a5/dim1 = 11
p11a5/dim2 = ss
p11a5/dim3 = fs
p11a5/min_fs = 0
p11a5/min_ss = 5952
p11a5/max_fs = 127
p11a5/max_ss = 6015
p11a5/fs = -0.00052x +0.999999y
p11a5/ss = -0.999999x -0.00052y
p11a5/corner_x = 190.557
p11a5/corner_y = -628.555
p11a5/coffset = 0.001074

p11a6/dim1 = 11
p11a6/dim2 = ss
p11a6/dim3 = fs
p11a6/min_fs = 0
p11a6/min_ss = 6016
p11a6/max_fs = 127
p11a6/max_ss = 6079
p11a6/fs = -0.00052x +0.999999y
p11a6/ss = -0.999999x -0.00052y
p11a6/corner_x = 124.561
p11a6/corner_y = -628.595
p11a6/coffset = 0.001074

p11a7/dim1 = 11
p11a7/dim2 = ss
p11a7/dim3 = fs
p11a7/min_fs = 0
p11a7/min_ss = 6080
p11a7/max_fs = 127
p11a7/max_ss = 6143
p11a7/fs = -0.00052x +0.999999y
p11a7/ss = -0.999999x -0.00052y
p11a7/corner_x = 58.5595
p11a7/corner_y = -628.635
p11a7/coffset = 0.001074

p12a0/dim1 = 12
p12a0/dim2 = ss
p12a0/dim3 = fs
p12a0/min_fs = 0
p12a0/min_ss = 6144
p12a0/max_fs = 127
p12a0/max_ss = 6207
p12a0/fs = +0.000306x +1.0y
p12a0/ss = -1.0x +0.000306y
p12a0/corner_x = 542.794
p12a0/corner_y = 477.09
p12a0/coffset = 0.000598

p12a1/dim1 = 12
p12a1/dim2 = ss
p12a1/dim3 = fs
p12a1/min_fs = 0
p12a1/min_ss = 6208
p12a1/max_fs = 127
p12a1/max_ss = 6271
p12a1/fs = +0.000306x +1.0y
p12a1/ss = -1.0x +0.000306y
p12a1/corner_x = 476.795
p12a1/corner_y = 477.064
p12a1/coffset = 0.000598

p12a2/dim1 = 12
p12a2/dim2 = ss
p12a2/dim3 = fs
p12a2/min_fs = 0
p12a2/min_ss = 6272
p12a2/max_fs = 127
p12a2/max_ss = 6335
p12a2/fs = +0.000306x +1.0y
p12a2/ss = -1.0x +0.000306y
p12a2/corner_x = 410.798
p12a2/corner_y = 477.038
p12a2/coffset = 0.000598

p12a3/dim1 = 12
p12a3/dim2 = ss
p12a3/dim3 = fs
p12a3/min_fs = 0
p12a3/min_ss = 6336
p12a3/max_fs = 127
p12a3/max_ss = 6399
p12a3/fs = +0.000306x +1.0y
p12a3/ss = -1.0x +0.000306y
p12a3/corner_x = 344.8
p12a3/corner_y = 477.013
p12a3/coffset = 0.000598

p12a4/dim1 = 12
p12a4/dim2 = ss
p12a4/dim3 = fs
p12a4/min_fs = 0
p12a4/min_ss = 6400
p12a4/max_fs = 127
p12a4/max_ss = 6463
p12a4/fs = +0.000306x +1.0y
p12a4/ss = -1.0x +0.000306y
p12a4/corner_x = 278.802
p12a4/corner_y = 476.987
p12a4/coffset = 0.000598

p12a5/dim1 = 12
p12a5/dim2 = ss
p12a5/dim3 = fs
p12a5/min_fs = 0
p12a5/min_ss = 6464
p12a5/max_fs = 127
p12a5/max_ss = 6527
p12a5/fs = +0.000306x +1.0y
p12a5/ss = -1.0x +0.000306y
p12a5/corner_x = 212.787
p12a5/corner_y = 476.962
p12a5/coffset = 0.000598

p12a6/dim1 = 12
p12a6/dim2 = ss
p12a6/dim3 = fs
p12a6/min_fs = 0
p12a6/min_ss = 6528
p12a6/max_fs = 127
p12a6/max_ss = 6591
p12a6/fs = +0.000306x +1.0y
p12a6/ss = -1.0x +0.000306y
p12a6/corner_x = 146.787
p12a6/corner_y = 476.936
p12a6/coffset = 0.000598

p12a7/dim1 = 12
p12a7/dim2 = ss
p12a7/dim3 = fs
p12a7/min_fs = 0
p12a7/min_ss = 6592
p12a7/max_fs = 127
p12a7/max_ss = 6655
p12a7/fs = +0.000306x +1.0y
p12a7/ss = -1.0x +0.000306y
p12a7/corner_x = 80.7856
p12a7/corner_y = 476.911
p12a7/coffset = 0.000598

p13a0/dim1 = 13
p13a0/dim2 = ss
p13a0/dim3 = fs
p13a0/min_fs = 0
p13a0/min_ss = 6656
p13a0/max_fs = 127
p13a0/max_ss = 6719
p13a0/fs = +0.002537x +0.999996y
p13a0/ss = -0.999996x +0.002537y
p13a0/corner_x = 541.668
p13a0/corner_y = 319.76
p13a0/coffset = 0.000584

p13a1/dim1 = 13
p13a1/dim2 = ss
p13a1/dim3 = fs
p13a1/min_fs = 0
p13a1/min_ss = 6720
p13a1/max_fs = 127
p13a1/max_ss = 6783
p13a1/fs = +0.002537x +0.999996y
p13a1/ss = -0.999996x +0.002537y
p13a1/corner_x = 475.669
p13a1/corner_y = 319.916
p13a1/coffset = 0.000584

p13a2/dim1 = 13
p13a2/dim2 = ss
p13a2/dim3 = fs
p13a2/min_fs = 0
p13a2/min_ss = 6784
p13a2/max_fs = 127
p13a2/max_ss = 6847
p13a2/fs = +0.002537x +0.999996y
p13a2/ss = -0.999996x +0.002537y
p13a2/corner_x = 409.674
p13a2/corner_y = 320.072
p13a2/coffset = 0.000584

p13a3/dim1 = 13
p13a3/dim2 = ss
p13a3/dim3 = fs
p13a3/min_fs = 0
p13a3/min_ss = 6848
p13a3/max_fs = 127
p13a3/max_ss = 6911
p13a3/fs = +0.002537x +0.999996y
p13a3/ss = -0.999996x +0.002537y
p13a3/corner_x = 343.677
p13a3/corner_y = 320.228
p13a3/coffset = 0.000584

p13a4/dim1 = 13
p13a4/dim2 = ss
p13a4/dim3 = fs
p13a4/min_fs = 0
p13a4/min_ss = 6912
p13a4/max_fs = 127
p13a4/max_ss = 6975
p13a4/fs = +0.002537x +0.999996y
p13a4/ss = -0.999996x +0.002537y
p13a4/corner_x = 277.68
p13a4/corner_y = 320.384
p13a4/coffset = 0.000584

p13a5/dim1 = 13
p13a5/dim2 = ss
p13a5/dim3 = fs
p13a5/min_fs = 0
p13a5/min_ss = 6976
p13a5/max_fs = 127
p13a5/max_ss = 7039
p13a5/fs = +0.002537x +0.999996y
p13a5/ss = -0.999996x +0.002537y
p13a5/corner_x = 211.665
p13a5/corner_y = 320.539
p13a5/coffset = 0.000584

p13a6/dim1 = 13
p13a6/dim2 = ss
p13a6/dim3 = fs
p13a6/min_fs = 0
p13a6/min_ss = 7040
p13a6/max_fs = 127
p13a6/max_ss = 7103
p13a6/fs = +0.002537x +0.999996y
p13a6/ss = -0.999996x +0.002537y
p13a6/corner_x = 145.665
p13a6/corner_y = 320.695
p13a6/coffset = 0.000584

p13a7/dim1 = 13
p13a7/dim2 = ss
p13a7/dim3 = fs
p13a7/min_fs = 0
p13a7/min_ss = 7104
p13a7/max_fs = 127
p13a7/max_ss = 7167
p13a7/fs = +0.002537x +0.999996y
p13a7/ss = -0.999996x +0.002537y
p13a7/corner_x = 79.6649
p13a7/corner_y = 320.851
p13a7/coffset = 0.000584

p14a0/dim1 = 14
p14a0/dim2 = ss
p14a0/dim3 = fs
p14a0/min_fs = 0
p14a0/min_ss = 7168
p14a0/max_fs = 127
p14a0/max_ss = 7231
p14a0/fs = -0.000234x +1.0y
p14a0/ss = -1.0x -0.000234y
p14a0/corner_x = 542.9
p14a0/corner_y = 163.758
p14a0/coffset = 0.000549

p14a1/dim1 = 14
p14a1/dim2 = ss
p14a1/dim3 = fs
p14a1/min_fs = 0
p14a1/min_ss = 7232
p14a1/max_fs = 127
p14a1/max_ss = 7295
p14a1/fs = -0.000234x +1.0y
p14a1/ss = -1.0x -0.000234y
p14a1/corner_x = 476.902
p14a1/corner_y = 163.739
p14a1/coffset = 0.000549

p14a2/dim1 = 14
p14a2/dim2 = ss
p14a2/dim3 = fs
p14a2/min_fs = 0
p14a2/min_ss = 7296
p14a2/max_fs = 127
p14a2/max_ss = 7359
p14a2/fs = -0.000234x +1.0y
p14a2/ss = -1.0x -0.000234y
p14a2/corner_x = 410.905
p14a2/corner_y = 163.721
p14a2/coffset = 0.000549

p14a3/dim1 = 14
p14a3/dim2 = ss
p14a3/dim3 = fs
p14a3/min_fs = 0
p14a3/min_ss = 7360
p14a3/max_fs = 127
p14a3/max_ss = 7423
p14a3/fs = -0.000234x +1.0y
p14a3/ss = -1.0x -0.000234y
p14a3/corner_x = 344.907
p14a3/corner_y = 163.702
p14a3/coffset = 0.000549

p14a4/dim1 = 14
p14a4/dim2 = ss
p14a4/dim3 = fs
p14a4/min_fs = 0
p14a4/min_ss = 7424
p14a4/max_fs = 127
p14a4/max_ss = 7487
p14a4/fs = -0.000234x +1.0y
p14a4/ss = -1.0x -0.000234y
p14a4/corner_x = 278.909
p14a4/corner_y = 163.684
p14a4/coffset = 0.000549

p14a5/dim1 = 14
p14a5/dim2 = ss
p14a5/dim3 = fs
p14a5/min_fs = 0
p14a5/min_ss = 7488
p14a5/max_fs = 127
p14a5/max_ss = 7551
p14a5/fs = -0.000234x +1.0y
p14a5/ss = -1.0x -0.000234y
p14a5/corner_x = 212.895
p14a5/corner_y = 163.665
p14a5/coffset = 0.000549

p14a6/dim1 = 14
p14a6/dim2 = ss
p14a6/dim3 = fs
p14a6/min_fs = 0
p14a6/min_ss = 7552
p14a6/max_fs = 127
p14a6/max_ss = 7615
p14a6/fs = -0.000234x +1.0y
p14a6/ss = -1.0x -0.000234y
p14a6/corner_x = 146.894
p14a6/corner_y = 163.646
p14a6/coffset = 0.000549

p14a7/dim1 = 14
p14a7/dim2 = ss
p14a7/dim3 = fs
p14a7/min_fs = 0
p14a7/min_ss = 7616
p14a7/max_fs = 127
p14a7/max_ss = 7679
p14a7/fs = -0.000234x +1.0y
p14a7/ss = -1.0x -0.000234y
p14a7/corner_x = 80.892
p14a7/corner_y = 163.628
p14a7/coffset = 0.000549

p15a0/dim1 = 15
p15a0/dim2 = ss
p15a0/dim3 = fs
p15a0/min_fs = 0
p15a0/min_ss = 7680
p15a0/max_fs = 127
p15a0/max_ss = 7743
p15a0/fs = +0.001282x +1.000001y
p15a0/ss = -1.000001x +0.001282y
p15a0/corner_x = 542.234
p15a0/corner_y = 6.80597
p15a0/coffset = 0.000481

p15a1/dim1 = 15
p15a1/dim2 = ss
p15a1/dim3 = fs
p15a1/min_fs = 0
p15a1/min_ss = 7744
p15a1/max_fs = 127
p15a1/max_ss = 7807
p15a1/fs = +0.001282x +1.000001y
p15a1/ss = -1.000001x +0.001282y
p15a1/corner_x = 476.236
p15a1/corner_y = 6.88441
p15a1/coffset = 0.000481

p15a2/dim1 = 15
p15a2/dim2 = ss
p15a2/dim3 = fs
p15a2/min_fs = 0
p15a2/min_ss = 7808
p15a2/max_fs = 127
p15a2/max_ss = 7871
p15a2/fs = +0.001282x +1.000001y
p15a2/ss = -1.000001x +0.001282y
p15a2/corner_x = 410.239
p15a2/corner_y = 6.96284
p15a2/coffset = 0.000481

p15a3/dim1 = 15
p15a3/dim2 = ss
p15a3/dim3 = fs
p15a3/min_fs = 0
p15a3/min_ss = 7872
p15a3/max_fs = 127
p15a3/max_ss = 7935
p15a3/fs = +0.001282x +1.000001y
p15a3/ss = -1.000001x +0.001282y
p15a3/corner_x = 344.241
p15a3/corner_y = 7.04128
p15a3/coffset = 0.000481

p15a4/dim1 = 15
p15a4/dim2 = ss
p15a4/dim3 = fs
p15a4/min_fs = 0
p15a4/min_ss = 7936
p15a4/max_fs = 127
p15a4/max_ss = 7999
p15a4/fs = +0.001282x +1.000001y
p15a4/ss = -1.000001x +0.001282y
p15a4/corner_x = 278.241
p15a4/corner_y = 7.11972
p15a4/coffset = 0.000481

p15a5/dim1 = 15
p15a5/dim2 = ss
p15a5/dim3 = fs
p15a5/min_fs = 0
p15a5/min_ss = 8000
p15a5/max_fs = 127
p15a5/max_ss = 8063
p15a5/fs = +0.001282x +1.000001y
p15a5/ss = -1.000001x +0.001282y
p15a5/corner_x = 212.224
p15a5/corner_y = 7.19818
p15a5/coffset = 0.000481

p15a6/dim1 = 15
p15a6/dim2 = ss
p15a6/dim3 = fs
p15a6/min_fs = 0
p15a6/min_ss = 8064
p15a6/max_fs = 127
p15a6/max_ss = 8127
p15a6/fs = +0.001282x +1.000001y
p15a6/ss = -1.000001x +0.001282y
p15a6/corner_x = 146.223
p15a6/corner_y = 7.27662
p15a6/coffset = 0.000481

p15a7/dim1 = 15
p15a7/dim2 = ss
p15a7/dim3 = fs
p15a7/min_fs = 0
p15a7/min_ss = 8128
p15a7/max_fs = 127
p15a7/max_ss = 8191
p15a7/fs = +0.001282x +1.000001y
p15a7/ss = -1.000001x +0.001282y
p15a7/corner_x = 80.2223
p15a7/corner_y = 7.35507
p15a7/coffset = 0.000481
