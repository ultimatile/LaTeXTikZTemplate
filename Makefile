TEX_FILES := $(wildcard *.tex)
TEX_MAIN = main.tex
main.pdf: $(TEX_FILES)
	latexmk -pv -silent -quiet $(TEX_MAIN) 1> /dev/null
	latexmk -c 1> /dev/null
	rm *.synctex.gz
verbose: $(TEX_FILES)
	latexmk -pv $(TEX_MAIN)
clean:
	latexmk -C
.PHONY:
	clean verbose