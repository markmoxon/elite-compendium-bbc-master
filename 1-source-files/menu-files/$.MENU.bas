   10 MODE 7
   20 HIMEM=&3400
   30 *FX 4,1
   40 *FX 200,1
   50 VDU 23;8202;0;0;0;
   60 PROCtest
   70 *RUN SCREEN
   80 U%=INKEY(200)
   90 UH$="  "+CHR$(132)
  100 HL$=CHR$(132)+CHR$(157)+CHR$(135)
  110 PROCtitle
  120 PROCoptions
  130 PROCselect
  140 PROCtestroms
  150 PROCgettitle
  160 IF O%=0 PROCbbc
  170 IF O%=1 PROCbbcsram
  180 IF O%=2 PROCmaster
  190 IF O%=3 PROCsecpro
  200 END
  220 DEF PROCtest
  230 O%=0
  240 secpro%=FALSE
  250 A%=&00:X%=&01
  260 master%=(USR(&FFF4) AND &FF00)=&300
  270 IF master% THEN O%=2
  280 A%=&EA:X%=&00:Y%=&FF
  290 IF (USR(&FFF4) AND &FF00) THEN secpro%=TRUE:O%=3
  300 IF secpro% OR master% THEN ENDPROC
  310 P%=&900
  320 [OPT0
  330 .shadow%
  340 SEI
  350 STA&FE34:LDA&F4:STA&FE30
  360 CLI:RTS
  370 ]
  380 A%=&0F:CALLshadow%
  390 *LOAD MNUCODE
  400 sram%=&7400
  410 used%=&7410
  420 dupl%=&7420
  430 eliterom%=&7430
  440 proflag%=&7431
  450 testbbc%=&7432
  460 testpro%=&7435
  470 loadrom%=&7438
  480 makerom%=&743B
  490 ENDPROC
  510 DEF PROCtestroms
  520 IF secpro% OR master% THEN ENDPROC
  530 CALLtestbbc%
  540 CALLtestpro%
  550 ENDPROC
  570 DEF PROCtitle
  580 PRINTTAB(13,4);"ELITE"
  590 PRINTTAB(13,5);"ELITE"
  600 VDU 28,0,24,39,6
  610 CLS
  620 PRINT'"by Ian Bell and David Braben       [^] select version, RETURN to play";
  630 VDU28,0,24,39,8
  640 ENDPROC
  660 DEF PROCoptions
  670 READ T$,V$
  680 Y%=2
  690 C%=0
  700 REPEAT
  710 PROChl(Y%,UH$)
  720 PROCdh(Y%,T$)
  730 PROCsh(Y%+2,V$)
  740 Y%=Y%+4
  750 C%=C%+1
  760 READ T$, V$
  770 UNTIL T$=""
  780 ENDPROC
  800 DEF PROCgettitle
  810 RESTORE
  820 FOR L%=0 TO O%
  830 READ T$,V$
  840 NEXT
  850 CLS
  860 PROCdh(1,T$)
  870 PROCsh(3,V$)
  880 PROChl(1,HL$)
  890 PRINT'
  900 ENDPROC
  920 DEF PROCselect
  930 L%=(O%+1)MOD C%
  940 REPEAT
  950 IF O%<>L% THEN PROChl(2+L%*4,UH$):PROChl(2+O%*4,HL$)
  960 L%=O%
  970 K%=GET
  980 IF K%=137 OR K%=138 THEN O%=(O%+1)MOD C%
  990 IF K%=136 OR K%=139 THEN O%=(O%+C%-1)MOD C%
 1000 UNTIL K%=13 OR G%=32
 1010 ENDPROC
 1030 DEF PROCbbc
 1040 IF secpro% THEN PROCspoff
 1050 *RUN INTRO
 1060 END
 1080 DEF PROCbbcsram
 1090 IF secpro% THEN PROCspoff
 1100 bank%=?eliterom%
 1110 IF bank%=&FF THEN bank%=FNfreebank
 1120 IF bank%=&FF THEN PROCnosram
 1130 PRINT"Loading please wait";
 1140 X%=bank%
 1150 CALLmakerom%
 1160 *RUN INTRO
 1170 ENDPROC
 1190 DEF PROCmaster
 1200 IF secpro% THEN PROCspoff
 1210 IF master% THEN GOTO 1400
 1220 test%=&00
 1230 IF ?proflag%=&FF THEN test%=test% OR &01
 1240 IF FNsram(6) THEN test%=test% OR &02
 1250 IF FNshadow THEN test%=test% OR &04
 1260 *LOAD E00DFS 3400
 1270 bank%=FNfinddfs
 1280 IF bank%<>&FF GOTO 1340
 1290 bank%=FNfreebank
 1300 IF bank%=&FF THEN GOTO 1390
 1310 IF FNreal(bank%)=FNreal(6) THEN bank%?sram%=&00:GOTO 1290
 1320 X%=bank%:CALLloadrom%
 1330 bank%?&DF0=&00
 1340 test%=test% OR &08
 1350 *DISK
 1360 *DIR :0.$
 1370 *LIB :0.$
 1380 *OPT 1,0
 1390 IF test%<>&F THEN PROCnotmaster
 1400 *RUN M128ELT
 1410 ENDPROC
 1430 DEF PROCsecpro
 1440 IF NOT secpro% THEN PROCspon
 1450 *RUN SPELITE
 1460 ENDPROC
 1480 DEF PROCspoff
 1490 PRINT"Sorry, this version is not compatible"
 1500 PRINT"with a second processor."
 1510 PRINT
 1520 PRINT"Please turn off your Tube and press"
 1530 PRINT"SHIFT+BREAK."
 1540 REPEAT UNTIL FALSE
 1550 ENDPROC
 1570 DEF PROCspon
 1580 PRINT"Sorry, this version requires a 6502"
 1590 PRINT"second processor."
 1600 PRINT
 1610 PRINT"Please turn on your Tube and press"
 1620 PRINT"SHIFT+BREAK."
 1630 REPEAT UNTIL FALSE
 1640 ENDPROC
 1660 DEF PROCnosram
 1670 PRINT"Sorry, this version requires a free"
 1680 PRINT"bank of RAM in any paged ROM slot."
 1690 PRINT
 1700 PRINT"If you have SRAM available please turn"
 1710 PRINT"off the write protect switch and press"
 1720 PRINT"SHIFT+BREAK."
 1730 REPEAT UNTIL FALSE
 1740 ENDPROC
 1760 DEF PROCnotmaster
 1770 PRINT"Sorry, this version requires the"
 1780 PRINT"following feature(s):"
 1790 PRINT
 1800 IF (test% AND &01)=0 THEN PRINT"�(�Enhanced 65C02 processor"
 1810 IF (test% AND &02)=0 THEN PRINT"�(�SRAM in bank #6"
 1820 IF (test% AND &08)=0 THEN PRINT"�(�An E00 DFS in a free bank of SRAM"
 1830 IF (test% AND &04)=0 THEN PRINT"�(�Shadow screen RAM"
 1840 PRINT
 1850 PRINT"If your emulator supports the above then";
 1860 PRINT"turn on the required option(s) and press";
 1870 PRINT"SHIFT+BREAK."
 1880 REPEAT UNTIL FALSE
 1890 ENDPROC
 1910 DEF FNfreebank
 1920 R%=&0F
 1930 IF FNsram(R%) AND FNfree(R%) AND FNreal(R%)=R% THEN =R%
 1940 R%=R%-1
 1950 IF R%>=0 THEN GOTO 1930
 1960 =&FF
 1980 DEF FNfinddfs
 1990 *DISK
 2000 R%=?&DBC
 2010 IF PAGE=&E00 GOTO 2120
 2020 !&E00=-1
 2030 VDU 21
 2040 *CAT
 2050 VDU 6
 2060 IF !&E00=-1 THEN GOTO 2120
 2070 R%?&2A1=0
 2080 A%=&8F:X%=&12:Y%=&04
 2090 U%=USR(&FFF4)
 2100 IF (U% AND &FF00)=&00 GOTO 2000
 2110 R%=&FF
 2120 =R%
 2140 DEF FNshadow
 2150 A%=&0F:CALLshadow%
 2160 ?&7FFF=&FF
 2170 A%=&00:CALLshadow%
 2180 ?&7FFF=&00
 2190 A%=&0F:CALLshadow%
 2200 =?&7FFF=&FF
 2220 DEF FNsram(R%)=R%?sram%=&FF
 2230 DEF FNfree(R%)=R%?used%=0
 2240 DEF FNreal(R%)=R%?dupl%
 2260 DEF PROCdh(Y%,T$)
 2270 LOCAL X%
 2280 X%=19-LEN(T$)/2
 2290 PRINTTAB(X%,Y%);CHR$(141);T$;
 2300 PRINTTAB(X%,Y%+1);CHR$(141);T$;
 2310 ENDPROC
 2330 DEF PROCsh(Y%,T$)
 2340 LOCAL X%
 2350 X%=20-LEN(T$)/2
 2360 PRINTTAB(X%,Y%);T$;
 2370 ENDPROC
 2390 DEF PROChl(Y%,T$)
 2400 PRINTTAB(0,Y%);T$;
 2410 PRINTTAB(0,Y%+1);T$;
 2420 PRINTTAB(0,Y%+2);T$;
 2430 ENDPROC
 2450 DATA "BBC Model B Elite"
 2460 DATA "Original Version"
 2480 DATA "BBC Model B SRAM Elite"
 2490 DATA "Enhanced Version"
 2510 DATA "Master 128 Elite"
 2520 DATA "Colour Version"
 2540 DATA "6502 Second Processor Elite"
 2550 DATA "Executive Version"
 2570 DATA "",""
