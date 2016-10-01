

MD = paper/sections/*.md

.PHONY: all clean

all: paper/paper.html

paper/paper.md: $(MD)
	cat $(MD) > paper/paper.md
paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean: 
	rm -f $(MD)/paper.md paper.html
