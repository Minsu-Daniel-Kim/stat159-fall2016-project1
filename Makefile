DIR = paper/sections/*.md

.PHONY: clean

paper/paper.md: $(DIR)
	cat $(DIR) > paper/paper.md
paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean: 
	rm -f $(DIR)/paper.md paper.html
