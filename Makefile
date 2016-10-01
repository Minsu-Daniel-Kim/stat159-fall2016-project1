DIR = paper/sections/*.md

.PHONY: clean

paper/paper.html: $(DIR)
	cat $(DIR) > paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean:
	rm -f paper/paper.html