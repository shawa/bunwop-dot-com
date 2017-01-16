STYLEHSEET:=style.html
ITEMS:=$(shell ls items/*.md)

index.html: index.md $(STYLEHSEET) $(ITEMS)
	pandoc -s -S --toc -o $@ -H $(STYLEHSEET) $< $(ITEMS)

install: index.html
	cp index.html $(BUNWOP_HTML_DIR)/$^
