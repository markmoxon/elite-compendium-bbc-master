BEEBASM?=beebasm

.PHONY:all
all:
	$(BEEBASM) -i 1-source-files/main-sources/elite-readme.asm
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-1.asm -do 2-compiled-game-discs/side1.ssd
	$(BEEBASM) -i 1-source-files/main-sources/elite-disc-2.asm -do 2-compiled-game-discs/side2.ssd
	dfsimage create 2-compiled-game-discs/elite-compendium.dsd
	dfsimage backup --title="Compendium" --bootopt=EXEC --from 2-compiled-game-discs/side1.ssd --to -1 2-compiled-game-discs/elite-compendium.dsd
	dfsimage backup --title="Compendium" --from 2-compiled-game-discs/side2.ssd --to -2 2-compiled-game-discs/elite-compendium.dsd
	rm 2-compiled-game-discs/side1.ssd
	rm 2-compiled-game-discs/side2.ssd
	rm 2-compiled-game-discs/README.txt

.PHONY:b2
b2:
	curl -G "http://localhost:48075/reset/b2"
	curl -H "Content-Type:application/binary" --upload-file "2-compiled-game-discs/elite-compendium.dsd" "http://localhost:48075/run/b2?name=elite-compendium.dsd"
