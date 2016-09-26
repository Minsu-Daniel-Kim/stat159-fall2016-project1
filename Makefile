

MD = paper/sections/.*

.PHONY: all clean

all: paper/paper.html

paper/paper.md: $(MD)
	touch paper/paper.md
paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean: 
	rm -f $(MD)/paper.md $(MD)/paper.html