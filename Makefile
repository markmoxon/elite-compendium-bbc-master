BEEBASM?=beebasm

.PHONY:all
all:
	$(BEEBASM) -i 1-source-files/main-sources/elite-readme.asm
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-1.asm -do 2-assembled-output/side1.ssd -opt 3 -title "Compendium"
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-2.asm -do 2-assembled-output/side2.ssd -title "Compendium"
	dfsimage create 3-compiled-game-discs/elite-compendium-bbc-master.dsd
	dfsimage backup --title="Compendium" --bootopt=EXEC --from 2-assembled-output/side1.ssd --to -1 3-compiled-game-discs/elite-compendium-bbc-master.dsd
	dfsimage backup --title="Compendium" --from 2-assembled-output/side2.ssd --to -2 3-compiled-game-discs/elite-compendium-bbc-master.dsd
	cp 2-assembled-output/side1.ssd 3-compiled-game-discs/elite-compendium-bbc-master-drive-0.ssd
	cp 2-assembled-output/side2.ssd 3-compiled-game-discs/elite-compendium-bbc-master-drive-2.ssd

.PHONY:b2
b2:
	curl -G "http://localhost:48075/reset/b2"
	curl -H "Content-Type:application/binary" --upload-file "3-compiled-game-discs/elite-compendium-bbc-master.dsd" "http://localhost:48075/run/b2?name=elite-compendium-bbc-master.dsd"
