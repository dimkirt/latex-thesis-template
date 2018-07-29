#!/bin/bash

if [ "$1" == "clean" ]; then
    rm -rf ./build/
    mkdir ./build/

elif [ "$1" == "xelatex" ]; then
    xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
    xelatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex

elif [ "$1" == "pdflatex" ]; then
    pdflatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
    pdflatex -synctex=1 -shell-escape -output-directory=build/ -interaction=nonstopmode src/main.tex
else
    echo "Unknown command"
fi