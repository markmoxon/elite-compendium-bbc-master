BEEBASM?=beebasm

.PHONY:all
all:
	$(BEEBASM) -i 1-source-files/elite-disc-1.asm -do 2-compiled-game-discs/side1.ssd
	$(BEEBASM) -i 1-source-files/elite-disc-2.asm -do 2-compiled-game-discs/side2.ssd
	dfsimage create 2-compiled-game-discs/elite-compendium.dsd
	dfsimage backup --title="Compendium" --bootopt=EXEC --from 2-compiled-game-discs/side1.ssd --to -1 2-compiled-game-discs/elite-compendium.dsd
	dfsimage backup --title="Compendium" --from 2-compiled-game-discs/side2.ssd --to -2 2-compiled-game-discs/elite-compendium.dsd
	rm 2-compiled-game-discs/side1.ssd
	rm 2-compiled-game-discs/side2.ssd
