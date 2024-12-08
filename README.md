# Elite Compendium for the BBC Master 128

[BBC Micro cassette Elite](https://github.com/markmoxon/elite-source-code-bbc-micro-cassette) | [BBC Micro disc Elite](https://github.com/markmoxon/elite-source-code-bbc-micro-disc) | [Acorn Electron Elite](https://github.com/markmoxon/elite-source-code-acorn-electron) | [6502 Second Processor Elite](https://github.com/markmoxon/elite-source-code-6502-second-processor) | [Commodore 64 Elite](https://github.com/markmoxon/elite-source-code-commodore-64) | [Apple II Elite](https://github.com/markmoxon/elite-source-code-apple-ii) | [BBC Master Elite](https://github.com/markmoxon/elite-source-code-bbc-master) | [NES Elite](https://github.com/markmoxon/elite-source-code-nes) | [Elite-A](https://github.com/markmoxon/elite-a-source-code-bbc-micro) | [Teletext Elite](https://github.com/markmoxon/teletext-elite) | [Elite Universe Editor](https://github.com/markmoxon/elite-universe-editor) | **Elite Compendium (BBC Master)** | [Elite Compendium (BBC Micro)](https://github.com/markmoxon/elite-compendium-bbc-micro) | [Elite over Econet](https://github.com/markmoxon/elite-over-econet) | [Flicker-free Commodore 64 Elite](https://github.com/markmoxon/c64-elite-flicker-free) | [BBC Micro Aviator](https://github.com/markmoxon/aviator-source-code-bbc-micro) | [BBC Micro Revs](https://github.com/markmoxon/revs-source-code-bbc-micro) | [Archimedes Lander](https://github.com/markmoxon/lander-source-code-acorn-archimedes)

![Screenshot of the Elite Compendium menu screen](https://elite.bbcelite.com/images/elite_compendium/menu.png)

This repository contains source code for the Elite Compendium for the BBC Master 128.

The Elite Compendium is a collection of the very best of Acornsoft Elite, updated with as many hacks and enhancements as I've been able to fit in. If you're looking to play 8-bit Elite, then this is a pretty good place to start. For more information, see the [bbcelite.com website](https://elite.bbcelite.com/hacks/elite_compendium.html).

This repository contains submodules for each of the individual programs on the disc. Each submodule points to a branch called `elite-compendium` that contains the version of that program to be included in the Compendium disc.

The repository also contains the menu code and build process for producing the final DSD disc. It does this by producing two SSD images, one for each side, and then combining them into a DSD image (as BeebAsm can only create SSD images).

See the individual subprojects for more information.

* [BBC Micro disc Elite](https://github.com/markmoxon/elite-source-code-bbc-micro-disc)
* [6502 Second Processor Elite](https://github.com/markmoxon/elite-source-code-6502-second-processor)
* [BBC Master Elite](https://github.com/markmoxon/elite-source-code-bbc-master)
* [Teletext Elite](https://github.com/markmoxon/teletext-elite)
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

Thanks to the Bitshifters for their help in building the [musical version of BBC Micro Elite](#bbc-micro-elite-with-music), and in particular Kieran Connell, Simon Morris and Negative Charge for the music player and ported music files. Thanks also to Tricky and J.G.Harston for their sideways RAM utilities.

The following archives from Ian Bell's personal website form the basis for this project:

* [BBC Elite, disc version](http://www.elitehomepage.org/archive/a/a4100000.zip)

* [6502 Second Processor sources as a disc image](http://www.elitehomepage.org/archive/a/a5022201.zip)

* [BBC Elite, Master version](http://www.elitehomepage.org/archive/a/b8020001.zip)

### A note on licences, copyright etc.

This repository is _not_ provided with a licence, and there is intentionally no `LICENSE` file provided.

According to [GitHub's licensing documentation](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/licensing-a-repository), this means that "the default copyright laws apply, meaning that you retain all rights to your source code and no one may reproduce, distribute, or create derivative works from your work".

The reason for this is that the Universe Editor is intertwined with the original Elite source code, and the original source code is copyright. The whole site is therefore covered by default copyright law, to ensure that this copyright is respected.

Under GitHub's rules, you have the right to read and fork this repository... but that's it. No other use is permitted, I'm afraid.

My hope is that the educational and non-profit intentions of this repository will enable it to stay hosted and available, but the original copyright holders do have the right to ask for it to be taken down, in which case I will comply without hesitation. I do hope, though, that along with the various other disassemblies and commentaries of this source, it will remain viable.

---

Right on, Commanders!

_Mark Moxon_
