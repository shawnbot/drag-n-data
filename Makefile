all: dnd.min.js

dnd.min.js: dnd.js
	uglifyjs $< > $@

clean:
	rm -f dnd.min.js
