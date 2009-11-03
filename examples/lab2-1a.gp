set terminal epslatex
set output 'lab2-1a.tex'
unset key
set title 'Plot of $I_D$ versus $V_D$ for Zener Diode (a) from 4155C'
set xlabel '$V_D$'
set ylabel '$I_D$'

plot 'diode1.dat' using 2:3
