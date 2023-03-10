FILE:=

.PHONY: build
build:
	docker build -t mermaid-tmpl ./runtime/

.PHONY: run
run:
	docker run -v $(PWD):/app -it mermaid-tmpl $(FILE)

.PHONY: clean
clean:
	rm *.png
