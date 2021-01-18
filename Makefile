.PHONY: all

PDF := build/Kaplan_George_resume.pdf
HTML := build/index.html

all: $(PDF) $(HTML)

$(HTML): src/index.html build
	cp -v $< $(@D)

$(PDF): src/Kaplan_George_resume.tex build
	docker run -v "$(PWD):/usr/src/tex" dxjoke/tectonic-docker \
		/bin/sh -c "tectonic -o $(@D) $<"

build:
	mkdir -p $@
