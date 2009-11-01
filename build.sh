#!/bin/sh
# Build script for LaTeX Presentation
# Given to NCSU LUG, Nov 2009
# Author: Alex Ray
# Email: ,ajray,arrobase,ncsu,dot,edu,

# build stuff for the hello world example
cd hello
# Generate standalone hello.pdf
pdflatex hello.tex
# Generate highlighted code for hello.pdf
pygmentize -f latex hello.tex > hello-code.tex
# back to base dir
cd ..

# build the presentation itself
cd presentation
pdflatex presentation.tex
# and again now that we have the ToC
pdflatex presentation.tex
mv presentation.pdf ..
cd ..
