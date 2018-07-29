#!/bin/bash

if [ "$1" == "clean" ]; then
    rm -rf ./build/
    mkdir ./build/

    # delete link
    unlink $PWD/build/references.bib

elif [ "$1" == "xelatex" ]; then
    xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex

    # create link of the .bib file in the build folder, because biber needs it
    ln -sf $PWD/src/references.bib $PWD/build/references.bib 
    biber main.bcf --input-directory=build/ --output-directory=build/
    xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
    xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex

elif [ "$1" == "pdflatex" ]; then
    pdflatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
    cd build/
    biber main.aux
    cd ..
    pdflatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
else
    echo "Unknown command"
fi