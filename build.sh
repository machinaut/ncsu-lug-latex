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

# build examples
cd examples
python matplotlib_ex.py
pdflatex hebrew_ex.tex
pdflatex mydocument
bibtex mydocument
pdflatex mydocument
pdflatex mydocument
cd ..

# build the presentation itself
cd presentation
pdflatex presentation.tex
# and again now that we have the ToC
pdflatex presentation.tex
mv presentation.pdf ..
cd ..

#cleanup script for all the extra generated files

#clean hello
cd hello
rm hello.aux hello-code.tex hello.log hello.pdf
cd ../examples
rm hebrew_ex.aux hebrew_ex.log
rm mydocument.aux mydocument.bbl mydocument.log mydocument.blg 
#clean presentation
cd ../presentation
rm presentation.aux presentation.log \
   presentation.nav presentation.out \
   presentation.snm presentation.toc pygments.aux
cd ..
