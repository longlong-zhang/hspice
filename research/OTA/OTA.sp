*OTAforReaserch
.subckt	OTA	vdd	vss	winp	winn	iout	vb

XWLR_outter	vdd	vss	vss	wgn	wgp	iout	WLR_outter	wp = 1u	wn = 400n	mp = 2	mn = 2
XWLR_innerp	vdd	vss	winp	wgp	ib	WLR_inner	wp = 1u wn = 400n	mp = 1 mn = 1
XWLR_innern vdd	vss	winn	wgn	ib	WLR_inner	wp = 1u wn = 400n	mp = 1 mn = 1
Mb	ib vb vdd vdd pch w = 2u l = 200n
Xbump	ib	vss	wgp		wgn	bump	wn1 = 400n wn2 = 400n	m1 = 4 m2 = 4


.subckt	WLR_outter	vdd	vssno	vsspo	inn	inp	iout	wp = 1.2u wn = 400n	mp = 2 mn = 2
M1 1d 1d vdd vdd pch w = wp l = 200n m = mp
M3 iout 1d vdd vdd pch w = wp l = 200n m = mp
M2 1d inn vssno vssno nch w = wn l = 200n m = mn
M4 iout inp vsspo vsspo nch w = wn l = 200n m = mn
.ends

.subckt WLR_inner vdd vss win wg ib	wp = 1.2u wn = 400n	mp = 1 mn = 1
Ms sd sd ib ib pch w = wp l = 200n	m = mp
Mw wg wg sd win pch w = wp l = 200n	m = mp
Mgm wg wg vss vss nch w = wn l = 200n	m = mn
.ends

.subckt bump ib vss wgp wgn wn1 = 400n wn2 = 400n	m1 = 4 m2 = 4
Mb1 ib wgn 1 vss nch w = wn1 l = 200n m = m1
Mb2 1 wgp vss vss nch w = wn2 l = 200n m = m2
.ends

.ends


