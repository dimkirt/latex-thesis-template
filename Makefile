MAINDOC = main
LTXARGS = -pdf -xelatex -synctex=1 -shell-escape -interaction=nonstopmode
.PHONY: clean

all:
	latexmk $(LTXARGS) $(MAINDOC).tex
	biber $(MAINDOC)
	latexmk $(LTXARGS) $(MAINDOC).tex

clean:
	latexmk -c $(MAINDOC).tex
	rm main.lol main.bbl main.run.xml
	rm main.synctex.gz
	rm -rf _minted-main
	rm chapters/*.aux titles/*.aux *.aux frontmatter/*.aux