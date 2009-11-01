#!/bin/sh
#cleanup script for all the extra generated files

#clean hello
cd hello
rm hello.aux hello-code.tex hello.log hello.pdf
#clean presentation
cd ../presentation
rm presentation.aux presentation.log \
   presentation.nav presentation.out \
   presentation.snm presentation.toc pygments.aux
cd ..
