\ ******************************************************************************
\
\ BBC MASTER ELITE COMPENDIUM DISC IMAGE SCRIPT
\
\ BBC Master Elite was written by Ian Bell and David Braben and is copyright
\ Acornsoft 1986
\
\ The code on this site has been reconstructed from a disassembly of the version
\ released on Ian Bell's personal website at http://www.elitehomepage.org/
\
\ The commentary is copyright Mark Moxon, and any misunderstandings or mistakes
\ in the documentation are entirely my fault
\
\ The terminology and notations used in this commentary are explained at
\ https://www.bbcelite.com/about_site/terminology_used_in_this_commentary.html
\
\ The deep dive articles referred to in this commentary can be found at
\ https://www.bbcelite.com/deep_dives
\
\ ------------------------------------------------------------------------------
\
\ This source file produces side 1 of the following DSD disc image:
\
\   * elite-compendium.dsd
\
\ This can be loaded into an emulator or a real BBC Master.
\
\ ******************************************************************************

\ Disc Elite = *RUN ELITE2
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/ELITE2.bin", "ELITE2", &FF2F00, &FF2F23
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/ELITE3.bin", "ELITE3", &FF5700, &FF5700
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/ELITE4.bin", "ELITE4", &FF1900, &FF197B

 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.CODE.bin", "D.CODE", &0011E3, &0011E3
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/T.CODE.bin", "T.CODE", &0011E3, &0011E3

 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOA.bin", "D.MOA", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOB.bin", "D.MOB", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOC.bin", "D.MOC", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOD.bin", "D.MOD", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOE.bin", "D.MOE", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOF.bin", "D.MOF", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOG.bin", "D.MOG", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOH.bin", "D.MOH", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOI.bin", "D.MOI", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOJ.bin", "D.MOJ", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOK.bin", "D.MOK", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOL.bin", "D.MOL", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOM.bin", "D.MOM", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MON.bin", "D.MON", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOO.bin", "D.MOO", &005600, &005600
 PUTFILE "disc-elite-beebasm/4-reference-binaries/sth/D.MOP.bin", "D.MOP", &005600, &005600

\ Teletext Elite = *RUN TELITE2
 PUTFILE "teletext-elite/3-assembled-output/ELITE2.bin", "TELITE", &FF2F00, &FF2F23
 PUTFILE "teletext-elite/3-assembled-output/ELITE3.bin", "TELIT3", &FF5700, &FF5700
 PUTFILE "teletext-elite/3-assembled-output/ELITE4.bin", "TELIT4", &FF1900, &FF197B

 PUTFILE "teletext-elite/3-assembled-output/D.CODE.bin", "D.TELE", &0011E3, &0011E3
 PUTFILE "teletext-elite/3-assembled-output/T.CODE.bin", "T.TELE", &0011E3, &0011E3

\PUTFILE "3-assembled-output/README.txt", "README", &FFFFFF, &FFFFFF
 PUTFILE "master-elite-beebasm/1-source-files/boot-files/$.!BOOT.bin", "!BOOT", &FFFFFF, &FFFFFF
