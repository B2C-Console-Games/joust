1000	RANDOMIZE
1010	PRINT TAB(26);"JOUST"
1020	PRINT TAB(20);"CREATIVE COMPUTING"
1030	PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
1040	PRINT
1050	PRINT
1060	PRINT
1070	PRINT"WHAT IS YOUR NAME, PLEASE";
1080	INPUT A$
1085	PRINT
1090	PRINT"SIR ";A$;" YOU ARE A MEDIEVAL KNIGHT IN A JOUSTING TOURNAMENT."
1100	PRINT"THE PRIZE TO THE WINNER IS THE PRINCESS' HAND IN MARRIAGE."
1110	PRINT"TO WIN, YOU MUST BEAT FOUR OTHER KNIGHTS."
1120	PRINT"TO JOUST, YOU PICK AN AIMING POINT FOR THE LANCE,"
1130	PRINT"AND THEN ONE OF FROM 3 TO 6 DIFFERENT POSSIBLE DEFENCE POSITIONS."
1140	PRINT"THE AIMING POINTS ARE:"
1150	PRINT"1 - HELM"
1160	PRINT"2 - UPPER LEFT (OF SHIELD)"
1170	PRINT"3 - UPPER MIDDLE"
1180	PRINT"4 - UPPER RIGHT"
1190	PRINT"5 - LOWER LEFT"
1200	PRINT"6 - LOWER MIDDLE"
1210	PRINT"7 - LOWER RIGHT"
1220	PRINT"8 - BASE OF SHIELD"
1230	PRINT
1240	PRINT"IF YOU BREAK A LANCE OR LOSE A HELM, YOU WILL BE GIVEN ANOTHER."
1250	PRINT"GOOD LUCK, SIR!"
1260	PRINT
1270	FOR A = 1 TO 4
1280	ON A GOTO 1310,1330,1350,1370
1290	REM OFF YOU GO TO THE FOUR JOUSTS
1300	REM ------------------------------------------------
1310	PRINT"THIS IS YOUR FIRST JOUST. YOU ARE UP AGAINST THE GOLD KNIGHT."
1320	GOTO 1390
1330	PRINT"THIS IS YOUR SECOND JOUST. YOUR OPPONENT IS THE SILVER KNIGHT."
1340	GOTO 1390
1350	PRINT"YOU ARE DOING WELL! YOUR THIRD JOUST IS AGAINST THE RED KNIGHT."
1360	GOTO 1390
1370	PRINT"THIS IS YOUR FINAL TEST!! IF YOU WIN THIS ONE, THE PRINCESS"
1380	PRINT"IS YOURS!!! THIS FIGHT IS AGAINST THE FIERCE BLACK KNIGHT!!!!"
1390	PRINT "YOUR AIMING POINT(1-8) OR 0 {ZERO} FOR HELP";
1400	INPUT B
1405	IF B = 0 THEN 2530
1410	IF B < 1 THEN 1390
1420	IF B > 8 THEN 1390
1430	PRINT"YOU MAY USE ONE OF THESE DEFENCES:"
1440	ON B  GOTO 1450,1470,1490,1520,1450,1490,1450,1540
1450	PRINT" 4 - STEADY SEAT, 5 - SHIELD HIGH, 6 - SHIELD LOW."
1460	GOTO 1550
1470	PRINT" 3 -LEFT LEAN, 4 - STEADY SEAT, 5 - SHIELD HIGH, 6 - SHIELD LOW."
1480	GOTO 1550
1490	PRINT"1 - LOWER HELM, 2 - RIGHT LEAN, 3 - LEFT LEAN, 4 - STEADY SEAT,"
1500	PRINT" 5 - SHIELD HIGH, 6 - SHIELD LOW."
1510	GOTO 1550
1520	PRINT"2 - RIGHT LEAN, 4 - STEADY SEAT, 5 - SHIELD HIGH, 6 - SHIELD LOW."
1530	GOTO 1550
1540	PRINT"1 - LOWER HELM, 4 - STEADY SEAT, 5 - SHIELD HIGH, 6 - SHIELD LOW."
1550	PRINT"WHAT IS YOUR CHOICE";
1560	INPUT C
1570	D=INT(RND(1)*8)+1
1580	ON D GOTO 1590,1600,1610,1620,1630,1640,1650,1660
1590	ON C GOTO 1670,1670,1670,1730,1790,1670
1600	ON C GOTO 1790,1760,1670,1760,1760,1670
1610	ON C GOTO 1820,1790,1700,1760,1880,1850
1620	ON C GOTO 1700,1670,1760,1700,1700,1790
1630	ON C GOTO 1760,1880,1670,1760,1670,1760
1640	ON C GOTO 1880,1700,1760,1880,1820,1760
1650	ON C GOTO 1700,1670,1880,1700,1700,1700
1660	ON C GOTO 1760,1700,1820,1760,1820,1760
1670	PRINT"HE MISSED YOU!"
1680	S=0
1690	GOTO 1900
1700	PRINT"HE HIT YOUR SHIELD BUT IT GLANCED OFF"
1710	S=0
1720	GOTO 1900
1730	PRINT"HE KNOCKED OFF YOUR HELM"
1740	S=0
1750	GOTO 1900
1760	PRINT"HE BROKE HIS LANCE."
1770	S=0
1780	GOTO 1900
1790	PRINT"HE HAS UNSEATED YOU(THUD!)"
1800	S=5
1810	GOTO 1900
1820	PRINT"HE HAS BROKEN HIS LANCE, INJURED AND UNSEATED YOU (OUCH!)"
1830	S=5
1840	GOTO 1900
1850	PRINT"HE HAS INJURED AND UNSEATED YOU (CRASH!)"
1860	S=5
1870	GOTO 1900
1880	PRINT"HE HAS BROKEN HIS LANCE AND UNSEATED YOU (CLANG!)"
1890	S=5
1900	E=INT(RND(1)*6)+1
1910	ON D GOTO 1920,1940,1960,1970,1920,1960,1920,2000
1920	IF E<4 THEN 1900
1930	GOTO 2020
1940	IF E<3 THEN 1900
1950	GOTO 2020
1960	GOTO 2020
1970	IF E=1 THEN 1900
1980	IF E=3 THEN 1900
1990	GOTO 2020
2000	IF E=2 THEN 1900
2010	IF E=3 THEN 1900
2020	ON E GOTO 2030,2040,2050,2060,2070,2080
2030	ON B GOTO 2090,2210,2240,2120,2180,2300,2120,2180
2040	ON B GOTO 2090,2180,2210,2090,2300,2120,2090,2120
2050	ON B GOTO 2090,2090,2120,2180,2090,2180,2300,2210
2060	ON B GOTO 2150,2180,2180,2120,2180,2300,2120,2180
2070	ON B GOTO 2210,2180,2300,2120,2090,2240,2120,2240
2080	ON B GOTO 2090,2090,2270,2210,2180,2180,2120,2180
2090	PRINT"YOU MISSED HIM (HISS!)"
2100	T=0
2110	GOTO 2330
2120	PRINT"YOU HIT HIS SHIELD BUT GLANCED OFF."
2130	T=0
2140	GOTO 2330
2150	PRINT"YOU KNOCKED OFF HIS HELM (CHEERS!)"
2160	T=0
2170	GOTO 2330
2180	PRINT"YOU BROKE YOUR LANCE (CRACK...!)"
2190	T=0
2200	GOTO 2330
2210	PRINT"YOU UNSEATED HIM(LOUD CHEERS AND MUZZAMS!!)"
2220	T=5
2230	GOTO 2330
2240	PRINT"YOU BROKE YOUR LANCE, BUT UNSEATED AND INJURED YOUR FOE."
2250	T=5
2260	GOTO 2330
2270	PRINT"YOU INJURED AND UNSEATED YOUR OPPONENT."
2280	T=5
2290	GOTO 2330
2300	PRINT"YOU BROKE YOUR LANCE BUT UNSEATED YOUR OPPONENT."
2310	T=5
2320	GOTO 2330
2330	IF S = T THEN 2350
2340	GOTO 2360
2350	IF S = 0 THEN 2480
2360	IF S = T GOTO 2460
2370	IF S < T GOTO 2390
2380	IF S > T THEN 2440
2390	PRINT"YOU HAVE WON THIS JOUST."
2400	PRINT
2410	GOTO 2420
2420	NEXT A
2430	GOTO 2520
2440	PRINT"TOO BAD, YOU LOST. HOPE YOUR INSURANCE WAS PAID UP."
2450	GOTO 2500
2460	PRINT"TOO BAD, YOU BOTH LOST. AT LEAST YOUR HONOUR IS INTACT."
2470	GOTO 2500
2480	PRINT"YOU ARE READY TO TRY AGAIN."
2490	GOTO 1390
2500	PRINT"SORRY, BETTER LUCK NEXT JOUST."
2501	PRINT"DO YOU WISH TO JOUST AGAIN ('Y' OR 'N')";
2502	INPUT B$
2503	IF B$ = "Y" THEN 1260
2504	IF B$ = "N" THEN 9990
2510	GOTO 9999
2520	PRINT"HOORAY! YOU ARE THE WINNER, HERE COMES THE BRIDE!"
2525	GOTO 9999
2530	PRINT"THE AIMING POINTS ARE:"
2540	PRINT"1 - HELM"
2550	PRINT"2 - UPPER LEFT (OF SHIELD)"
2560	PRINT"3 - UPPER MIDDLE"
2570	PRINT"4 - UPPER RIGHT"
2580	PRINT"5 - LOWER LEFT"
2590	PRINT"6 - LOWER MIDDLE"
2600	PRINT"7 - LOWER RIGHT"
2610	PRINT"8 - BASE OF SHIELD"
2620	PRINT
2630	GOTO 1390
9990	PRINT 
9991	PRINT"***************************************************"
9992	PRINT
9993	PRINT"TOO BAD, THE PRINCESS WAS A VIRGIN!!!!"
9994	PRINT
9995	PRINT"***************************************************"
9999	END
