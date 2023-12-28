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

\ Master Elite = CHAIN "ELITEM"

 PUTFILE "master-elite-beebasm/4-reference-binaries/sng47/M128Elt.bin", "M128Elt", &FF0E00, &FF0E43
 PUTFILE "master-elite-beebasm/4-reference-binaries/sng47/BDATA.bin", "BDATA", &000000, &000000
 PUTFILE "master-elite-beebasm/4-reference-binaries/sng47/BCODE.bin", "BCODE", &000000, &000000
 PUTBASIC "master-elite-beebasm/1-source-files/music/load-music.bas", "ELITEM"
 PUTFILE "master-elite-beebasm/1-source-files/other-files/E.MAX.bin", "E.MAX", &000000, &000000
 PUTFILE "master-elite-beebasm/1-source-files/music/elite-music-master.rom", "MUSIC", &008000, &008000

\PUTFILE "3-assembled-output/M128Elt.bin", "M128Elt", &000E00, &000E43
\PUTFILE "3-assembled-output/BDATA.bin", "BDATA", &001300, &001300
\PUTFILE "3-assembled-output/BCODE.bin", "ELITE", &001300, &002C6C
\PUTBASIC "1-source-files/music/load-music-compact.bas", "ELITEM"