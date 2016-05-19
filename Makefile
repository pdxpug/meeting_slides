.PHONY: all clean

TEX=$(wildcard *.tex)
STY=$(wildcard *.sty)

all: $(patsubst %.tex, %.pdf, $(TEX))

%.pdf: %.tex Makefile $(STY)
	latex -halt-on-error -output-format=pdf $<
	latex -halt-on-error -output-format=pdf $<
	-rm $*.aux $*.log $*.nav $*.out $*.snm $*.toc texput.log

clean:
	-rm $(patsubst %.tex, %.pdf, $(TEX))
	-rm $*.aux $*.log $*.nav $*.out $*.snm $*.toc texput.log
