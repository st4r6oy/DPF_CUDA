
set output 'fil_coords.eps'
set terminal postscript eps color enhanced font "Helvetica,10"
plot "test.out" u 1:2 with line title "x", "test.out" u 1:3 with line title "y", "test.out" u 1:4 with line title "z"

reset

set output 'fil_v.eps'
set terminal postscript eps color enhanced font "Helvetica,12"
set xlabel 't [s]'
set ylabel 'v/c_s [MACH]'
set key at 4.0E-11,35000
plot "test.out" u ($1):($5/1990) with line title "v_x", "test.out" u ($1):($6/1990) with line title "v_y", "test.out" u ($1):($7/1990) with line title "v_z",  "test.out" u ($1):(sqrt((($5)**2)+(($6)**2)+(($7)**2))/1990) with line lw 5 dt 3 lc rgb "#ff0000" title "v"

#reset 
#
#set output 'fil_v_mod.eps'
#set terminal postscript eps color enhanced font "Helvetica,10"
#plot "test.out" u ($1):(sqrt((($5)**2)+(($6)**2)+(($7)**2))) with line title "v"


reset

set output 'J_anode.eps'
set terminal postscript eps color enhanced font "Helvetica,10"
plot "test.out" u 1:8 with line title "J [A/m2]"


reset

set output 'fil_mass.eps'
set terminal postscript eps color enhanced font "Helvetica,10"
plot "test.out" u 1:10 with line title "m [Kg]"

reset

set output 'fil_helicity.eps'
set terminal postscript eps color enhanced font "Helvetica,10"
plot "test.helicity.out" u 1:2 with line title "helicity [Wb2]"
