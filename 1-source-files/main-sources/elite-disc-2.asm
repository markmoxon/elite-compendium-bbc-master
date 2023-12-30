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
\ This source file produces side 2 of the following DSD disc image:
\
\   * elite-compendium.dsd
\
\ This can be loaded into an emulator or a real BBC Master.
\
\ ******************************************************************************

\ BBC Master Elite (Compendium version) = CHAIN "ELITEM"

 PUTFILE "master-elite-beebasm/3-assembled-output/M128Elt.bin", "M128Elt", &FF0E00, &FF0E43
 PUTFILE "master-elite-beebasm/3-assembled-output/BDATA.bin", "BDATA", &000000, &000000
 PUTFILE "master-elite-beebasm/3-assembled-output/BCODE.bin", "BCODE", &000000, &000000
 PUTBASIC "master-elite-beebasm/1-source-files/music/load-music.bas", "ELITEM"
 PUTFILE "master-elite-beebasm/1-source-files/music/elite-music-master.rom", "MUSIC", &008000, &008000

\ BBC Master Compact Elite (Compendium version) = CHAIN "ELITEMC"

 PUTFILE "master-elite-beebasm/4-reference-binaries/compact/M128Elt.bin", "MComElt", &000E00, &000E43
 PUTFILE "master-elite-beebasm/4-reference-binaries/compact/BDATA.bin", "CDATA", &001300, &001300
 PUTFILE "master-elite-beebasm/4-reference-binaries/compact/BCODE.bin", "CCODE", &001300, &002C6C
 PUTBASIC "master-elite-beebasm/1-source-files/music/load-music-compact.bas", "ELITEMC"

\ 6502SP Elite (flicker-free) = *RUN ELITESP

 PUTFILE "6502sp-elite-beebasm/3-assembled-output/ELITE.bin", "ELITESP", &FF1FDC, &FF2085
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/ELITEa.bin", "I.ELITEa", &FF2000, &FF2000
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/I.CODE.bin", "I.CODE", &FF2400, &FF2C89
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/P.CODE.bin", "P.CODE", &001000, &00106A

\ BBC Micro cassette Elite (flicker-free) = CHAIN "ELITEC"

\PUTFILE "cassette-elite-beebasm/1-source-files/basic-programs/$.ELITE.bin", "ELITEC", &FF1900, &FF8023
\PUTFILE "cassette-elite-beebasm/3-assembled-output/ELITE.bin", "ELTdata", &FF1100, &FF2000
\PUTFILE "cassette-elite-beebasm/3-assembled-output/ELTcode.bin", "ELTcode", &FF1128, &FF1128

\ Acorn Electron Elite (flicker-free) = CHAIN "ELITEE"

\PUTFILE "electron-elite-beebasm/1-source-files/basic-programs/$.ELITE-disc.bin", "ELITEE", &FF0E00, &FF8023
\PUTFILE "electron-elite-beebasm/3-assembled-output/ELITECO.bin", "ELITECO", &000000, &FFFFFF
\PUTFILE "electron-elite-beebasm/3-assembled-output/ELITEDA.bin", "ELITEDA", &FF4400, &FF5200

\ Menu

 PUTBASIC "1-source-files/menu-files/$.MENU.bas", "MENU"
 PUTFILE "1-source-files/menu-files/$.SCREEN.bin", "SCREEN", &FF7800, &FF7BE8

