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

The package `minted` for syntax highlighting is included in the `texlive-latex-extra` package after installing the extras package you need to also install
`python-pygments`

```bash
sudo apt-get install python-pygments
```

**Note:** You need to use the flag `-shell-escape` while you make the .tex code

To add Microsoft fonts:

```bash
sudo apt-get install msttcorefonts
```

## Usage

To compile the template use run:

```bash
make all
```

When latex compiles the .tex files it generates a lot of new files, to clean up after you finish compiling run:

```bash
make clean
```

## Project Structure

Below we explain the project structure

```txt
\assets
    \images
    \figures
\titles
    title_1.tex
    ...
\sections
    section_1.tex
    section_2.tex
    ...
preamble.tex
main.tex
references.bib

```

- **assets/** it is good practise to keep assets as images in a separate directory since they are not code
- **titles/** this directory will only contain different title pages templates to choose from
- **sections/** it is good practise to keep each section on its own file for better organization
- **main.tex** this is the main part of the document where we include all other parts, it is also the entry point of the compilation
- **preamble.tex** it is considered a good practise to keep anything that is not related to the content of the document here, use it to import packages and add all kinds of dependencies or rules
- **references.bib** it contains a list with all the possible references we can cite inside the document