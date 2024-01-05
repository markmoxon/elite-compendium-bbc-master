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

\ Elite music ROM

 PUTFILE "elite-music/elite-music.rom", "MUSIC", &008000, &008000

\ BBC Master Elite (Compendium version) = CHAIN "ELITEM"

 PUTFILE "master-elite-beebasm/3-assembled-output/M128Elt.bin", "M128Elt", &FF0E00, &FF0E43
 PUTFILE "master-elite-beebasm/3-assembled-output/BDATA.bin", "BDATA", &000000, &000000
 PUTFILE "master-elite-beebasm/3-assembled-output/BCODE.bin", "BCODE", &000000, &000000
 PUTBASIC "master-elite-beebasm/1-source-files/music/load-music.bas", "ELITEM"

\ Elite Universe Editor (BBC Master version) = *DIR V : *RUN ELITEUE

 PUTFILE "elite-universe-editor/master-elite/3-assembled-output/M128Elt.bin", "V.ELITEUE", &FF0E00, &FF0E43
 PUTFILE "elite-universe-editor/master-elite/3-assembled-output/BDATA.bin", "V.BDATA", &000000, &000000
 PUTFILE "elite-universe-editor/master-elite/3-assembled-output/BCODE.bin", "V.BCODE", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.BOXART1.bin", "U.BOXART1", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.BOXART2.bin", "U.BOXART2", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.BOXARTC.bin", "U.BOXARTC", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.MANUAL.bin", "U.MANUAL", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.SHIPID.bin", "U.SHIPID", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.SHIPID6.bin", "U.SHIPID6", &000000, &000000
 PUTFILE "elite-universe-editor/universe-editor/universe-files/U.SHIPIDC.bin", "U.SHIPIDC", &000000, &000000

\ 6502SP Elite (flicker-free) = *RUN ELITESP

 PUTFILE "6502sp-elite-beebasm/3-assembled-output/ELITE.bin", "ELITESP", &FF1FDC, &FF2085
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/ELITEa.bin", "I.ELITEa", &FF2000, &FF2000
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/I.CODE.bin", "I.CODE", &FF2400, &FF2C89
 PUTFILE "6502sp-elite-beebasm/3-assembled-output/P.CODE.bin", "P.CODE", &001000, &00106A

\ Menu

 PUTBASIC "1-source-files/menu-files/$.MENU.bas", "MENU"
 PUTFILE "1-source-files/menu-files/$.SCREEN.bin", "SCREEN", &FF7800, &FF7BE8

