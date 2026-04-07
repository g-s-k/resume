.PHONY: all

PDF := build/Kaplan_George_resume.pdf
HTML := build/index.html

ifeq ($(shell command -v podman 2> /dev/null),)
    CONTAINER_RUNTIME=docker
else
    CONTAINER_RUNTIME=podman
endif

all: $(PDF) $(HTML)

$(HTML): src/index.html build
	cp -v $< $(@D)

$(PDF): src/Kaplan_George_resume.tex build
	$(CONTAINER_RUNTIME) run --rm -v "$(PWD):/workdir" texlive/texlive \
		/bin/sh -c "pdflatex $<"
	mv Kaplan_George_resume.pdf $(@D)

build:
	mkdir -p $@
