ALL=index.html

.PHONY: all clean server web upload

all: $(ALL)

reveal.js:
	git clone https://github.com/hakimel/reveal.js

index.html : slides.md
	pandoc $< -o $@ --mathjax --standalone --write=revealjs --css slides.css --highlight-style=espresso

serve:
	python3 -m http.server 8080

clean:
	-rm $(ALL)
