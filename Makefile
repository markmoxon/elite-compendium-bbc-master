BEEBASM?=beebasm
DISC?=oaknut-disc
DSD?=3-compiled-game-discs/elite-compendium-bbc-master.dsd

.PHONY:all
all: build-ssd build-dsd

.PHONY:build-ssd
build-ssd:
	$(BEEBASM) -i 1-source-files/main-sources/elite-readme.asm
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-1.asm -do 3-compiled-game-discs/elite-compendium-bbc-master-drive-0.ssd -opt 3 -title "CompendiumM0"
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-2.asm -do 3-compiled-game-discs/elite-compendium-bbc-master-drive-2.ssd -title "CompendiumM2"

.PHONY:build-dsd
build-dsd:
	$(DISC) create $(DSD) --title "Compendium M"
	$(DISC) opt $(DSD) EXEC
	$(DISC) cp -r "3-compiled-game-discs/elite-compendium-bbc-master-drive-0.ssd:*" $(DSD)
	$(DISC) cp -r "3-compiled-game-discs/elite-compendium-bbc-master-drive-2.ssd:*" $(DSD)::2.

.PHONY:b2
b2:
	curl -G "http://localhost:48075/reset/b2"
	curl -H "Content-Type:application/binary" --upload-file "3-compiled-game-discs/elite-compendium-bbc-master.dsd" "http://localhost:48075/run/b2?name=elite-compendium-bbc-master.dsd"
