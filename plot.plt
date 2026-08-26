set output 'Ex.eps'
set terminal postscript eps color enhanced font "Helvetica,10"
set size ratio -1
set title "{/Symbol e}_x"
unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Ex.out" matrix w image noti


reset

set output 'Ey.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol e}_y"

unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Ey.out" matrix w image noti

reset

set output 'Ez.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol e}_z"

unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Ez.out" matrix w image noti

reset

set output 'Phi.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol f}"

unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Phi.out" matrix w image noti

reset 

set output 'Bx.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol b}_x"

unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Bx.out" matrix w image noti

reset 

set output 'By.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol b}_y"


unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.By.out" matrix w image noti

reset

set output 'Bz.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol b}_z"


unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Bz.out" matrix w image noti


reset

set output 'Psi.eps'
set terminal postscript eps color enhanced font "Helvetica,10"

set size ratio -1
set title "{/Symbol y}"
unset border
unset xtics
unset ytics
unset raxis
unset rtics

plot "test.Psi.out" matrix w image noti

