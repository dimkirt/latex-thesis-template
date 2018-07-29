# Latex Thesis Template

This repository contains all the .tex files and additional resources required to create a thesis document

## Tutorial

A good tutorial to get started with latex fast is [this one](https://github.com/luongvo209/Begin-Latex-in-minutes)

## Dependencies

To compile latex code you need to install latex in your machine to avoid installing packages all the time we install the full version plus some extra packages using the commands:

```bash
sudo apt-get install texlive-full
sudo apt-get install texlive-latex-extra
```

To add Microsoft fonts:

```bash
sudo apt-get install msttcorefonts
```

## Compiling Documents

To compile with xelatex run the command below in the CLI, or run `./runner.sh xelatex`

```bash
xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
```

To compile with pdflatex run the command below in the CLI, or run `./runner.sh pdflatex`

```bash
pdflatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
```

## Project Structure

When latex compiles the .tex files it generates a lot of new files, to keep everything nice and tidy we follow this structure:

```txt
\assets
    \images
    \figures
\build
\src
    \titles
        title_1.tex
        ...
    preamble.tex
    main.tex
    references.bib
```

- **src/** this directory will only contain source files that are used to generate the final document
- **build/** this is the output directory where all generated files will be placed, along the final .pdf of the document
- **assets/** it is also a good practise to keep assets as images in a separate directory since they are not code
- **src/titles/** this directory will only contain different title pages templates to choose from
- **main.tex** this is the main part of the document where we include all other parts, it is also the entry point of the compilation
- **preamble.tex** it is considered a good practise to keep anything that is not related to the content of the document here, use it to import packages and add all kinds of dependencies or rules
- **references.bib** it contains a list with all the possible references we can cite inside the document