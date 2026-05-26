# Elite Compendium for the BBC Master 128

<details>
<summary>Links to my other software archaeology repositories</summary>
<hr>

**Elite sources:** [BBC Micro (cassette)](https://github.com/markmoxon/elite-source-code-bbc-micro-cassette) | [BBC Micro (disc)](https://github.com/markmoxon/elite-source-code-bbc-micro-disc) | [Elite Demonstration Disc](https://github.com/markmoxon/elite-demo-source-code-bbc-micro) | [Acorn Electron](https://github.com/markmoxon/elite-source-code-acorn-electron) | [6502 Second Processor](https://github.com/markmoxon/elite-source-code-6502-second-processor) | [Commodore 64](https://github.com/markmoxon/elite-source-code-commodore-64) | [Apple II](https://github.com/markmoxon/elite-source-code-apple-ii) | [BBC Master](https://github.com/markmoxon/elite-source-code-bbc-master) | [NES](https://github.com/markmoxon/elite-source-code-nes)

**Elite hacks:** [Elite-A](https://github.com/markmoxon/elite-a-source-code-bbc-micro) | [Teletext Elite](https://github.com/markmoxon/teletext-elite) | [Elite Universe Editor](https://github.com/markmoxon/elite-universe-editor) | [Flicker-free Commodore 64 Elite](https://github.com/markmoxon/c64-elite-flicker-free) | [Elite over Econet](https://github.com/markmoxon/elite-over-econet) | [!EliteNet](https://github.com/markmoxon/elite-over-econet-acorn-archimedes)

**Elite Compendium:** [BBC Master](https://github.com/markmoxon/elite-compendium-bbc-master) | [BBC Micro](https://github.com/markmoxon/elite-compendium-bbc-micro) | [BBC Micro B+](https://github.com/markmoxon/elite-compendium-bbc-micro-b-plus) | [Acorn Electron](https://github.com/markmoxon/elite-compendium-acorn-electron)

**Other sources:** [Aviator (BBC Micro)](https://github.com/markmoxon/aviator-source-code-bbc-micro) | [Revs (BBC Micro)](https://github.com/markmoxon/revs-source-code-bbc-micro) | [The Sentinel (BBC Micro)](https://github.com/markmoxon/the-sentinel-source-code-bbc-micro) | [Lander (Acorn Archimedes)](https://github.com/markmoxon/lander-source-code-acorn-archimedes)

See [my profile](https://github.com/markmoxon) for more repositories to explore.
<hr>
</details>

![Screenshot of the Elite Compendium menu screen](https://elite.bbcelite.com/images/elite_compendium/menu.png)

This repository contains source code for the Elite Compendium for the BBC Master 128.

The Elite Compendium is a collection of the very best of Acornsoft Elite, updated with as many hacks and enhancements as I've been able to fit in. If you're looking to play 8-bit Elite, then this is a pretty good place to start. For more information, see the [bbcelite.com website](https://elite.bbcelite.com/hacks/elite_compendium.html).

This repository contains submodules for each of the individual programs on the disc. Each submodule points to a branch that contains the version of that program to be included in the Compendium disc.

The repository also contains the menu code and a build process for producing a DSD disc image, as well as two SSD images for use with SD cards. The SSD images are produced by BeebAsm, and the DSD image is created using the [oaknut-disc Python tool](https://rob-smallshire.github.io/oaknut/disc/index.html), which can be installed using `pip install oaknut-disc` (pipx, uv and uvx are also supported).

See the individual subprojects for more information.

* [BBC Micro disc Elite, elite-compendium-bbc-master branch](https://github.com/markmoxon/elite-source-code-bbc-micro-disc/tree/elite-compendium-bbc-master)
* [6502 Second Processor Elite, elite-compendium branch](https://github.com/markmoxon/elite-source-code-6502-second-processor/tree/elite-compendium)
* [BBC Master Elite, elite-compendium branch](https://github.com/markmoxon/elite-source-code-bbc-master/tree/elite-compendium)
* [Teletext Elite, elite-compendium-bbc-master branch](https://github.com/markmoxon/teletext-elite/tree/elite-compendium-bbc-master)
* [Elite Universe Editor](https://github.com/markmoxon/elite-universe-editor)

## Acknowledgements

BBC Micro Elite was written by Ian Bell and David Braben and is copyright &copy; Acornsoft 1984.

The code on this site has been reconstructed from a disassembly of the version released on [Ian Bell's personal website](http://www.elitehomepage.org/).

6502 Second Processor Elite was written by Ian Bell and David Braben and is copyright &copy; Acornsoft 1985.

The 6502 Second Processor code on this site is identical to the source discs released on [Ian Bell's personal website](http://www.elitehomepage.org/) (it's just been reformatted to be more readable).

BBC Master Elite was written by Ian Bell and David Braben and is copyright &copy; Acornsoft 1986.

The BBC Master code on this site has been reconstructed from a disassembly of the version released on [Ian Bell's personal website](http://www.elitehomepage.org/).

The commentary, Teletext conversion code and Universe Editor code are copyright &copy; Mark Moxon. Any misunderstandings or mistakes in the documentation are entirely my fault.

The Teletext routines are by Kieran Connell and Simon Morris of the Bitshifters, and were adapted from Bresenham routines by Rich Talbot-Watkins. See the [Bitshifters teletextr](https://github.com/bitshifters/teletextr/tree/master/lib) repository for the original code.

Huge thanks are due to the original authors for not only creating such an important piece of my childhood, but also for releasing the source code for us to play with; to Paul Brink for his annotated disassembly; and to Kieran Connell for his [BeebAsm version](https://github.com/kieranhj/elite-beebasm), which I forked as the original basis for this project. You can find more information about this project in the [accompanying website's project page](https://elite.bbcelite.com/about_site/about_this_project.html).

Thanks to the Bitshifters for their help in building the [musical version of BBC Micro Elite](#bbc-micro-elite-with-music), and in particular Kieran Connell, Simon Morris and Negative Charge for the music player and ported music files.

The following archives from Ian Bell's personal website form the basis for this project:

* [BBC Elite, disc version](http://www.elitehomepage.org/archive/a/a4100000.zip)

* [6502 Second Processor sources as a disc image](http://www.elitehomepage.org/archive/a/a5022201.zip)

* [BBC Elite, Master version](http://www.elitehomepage.org/archive/a/b8020001.zip)

### A note on licences, copyright etc.

This repository is _not_ provided with a licence, and there is intentionally no `LICENSE` file provided.

According to [GitHub's licensing documentation](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/licensing-a-repository), this means that "the default copyright laws apply, meaning that you retain all rights to your source code and no one may reproduce, distribute, or create derivative works from your work".

The reason for this is that the Compendium code is intertwined with the original source code for Elite, and the original source code is copyright. The whole site is therefore covered by default copyright law, to ensure that this copyright is respected.

Under GitHub's rules, you have the right to read and fork this repository... but that's it. No other use is permitted, I'm afraid.

My hope is that the educational and non-profit intentions of this repository will enable it to stay hosted and available, but the original copyright holders do have the right to ask for it to be taken down, in which case I will comply without hesitation. I do hope, though, that along with the various other disassemblies and commentaries of this source, it will remain viable.

---

Right on, Commanders!

_Mark Moxon_
