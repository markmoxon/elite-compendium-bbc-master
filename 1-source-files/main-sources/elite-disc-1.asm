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
\ https://elite.bbcelite.com/terminology
\
\ The deep dive articles referred to in this commentary can be found at
\ https://elite.bbcelite.com/deep_dives
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

\ Boot files

 PUTFILE "2-assembled-output/README.txt", "README", &FFFFFF, &FFFFFF
 PUTFILE "1-source-files/boot-files/$.!BOOT.bin", "!BOOT", &FFFFFF, &FFFFFF

\ Shared disc files

 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOA.bin", "D.MOA", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOB.bin", "D.MOB", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOC.bin", "D.MOC", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOD.bin", "D.MOD", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOE.bin", "D.MOE", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOF.bin", "D.MOF", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOG.bin", "D.MOG", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOH.bin", "D.MOH", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOI.bin", "D.MOI", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOJ.bin", "D.MOJ", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOK.bin", "D.MOK", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOL.bin", "D.MOL", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOM.bin", "D.MOM", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MON.bin", "D.MON", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOO.bin", "D.MOO", &005600, &005600
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.MOP.bin", "D.MOP", &005600, &005600

\ Disc Elite (Master, Compendium version) = *RUN ELITED, called from loader on disc 2

 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/ELITE2.bin", "ELITED", &FF2F00, &FF2F23
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/ELITE3.bin", "ELITE3", &FF5700, &FF5700
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/ELITE4.bin", "ELITE4", &FF1900, &FF197B

 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/D.CODE.bin", "D.CODE", &0011E3, &0011E3
 PUTFILE "elite-source-code-bbc-micro-disc/3-assembled-output/T.CODE.bin", "T.CODE", &0011E3, &0011E3

\ Teletext Elite = *RUN ELITET

 PUTFILE "teletext-elite/3-assembled-output/ELITE2.bin", "ELITET", &FF2F00, &FF2F23
 PUTFILE "teletext-elite/3-assembled-output/ELITE3.bin", "TELIT3", &FF5700, &FF5700
 PUTFILE "teletext-elite/3-assembled-output/ELITE4.bin", "TELIT4", &FF1900, &FF197B

 PUTFILE "teletext-elite/3-assembled-output/D.CODE.bin", "D.TELE", &0011E3, &0011E3
 PUTFILE "teletext-elite/3-assembled-output/T.CODE.bin", "T.TELE", &0011E3, &0011E3

\ Commander files

 PUTFILE "teletext-elite/1-source-files/other-files/E.MAX.bin", "E.MAX", &000000, &000000
 PUTFILE "teletext-elite/1-source-files/other-files/E.MISS1.bin", "E.MISS1", &000000, &000000
 PUTFILE "teletext-elite/1-source-files/other-files/E.MISS2.bin", "E.MISS2", &000000, &000000
