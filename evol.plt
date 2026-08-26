set output 'evol.eps'
set terminal postscript eps color enhanced
plot  "fil_0001_00.out" u (1*$4):(1*$2) with linespoints title "spark", "fil_0001_01.out" u (1*$4):(1*$2) with linespoints title "1", "fil_0001_02.out" u (1*$4):(1*$2) with linespoints title "2", "fil_0001_03.out" u (1*$4):(1*$2) with linespoints title "3", "fil_0001_04.out" u (1*$4):(1*$2) with linespoints title "4", "fil_0001_05.out" u (1*$4):(1*$2) with linespoints title "5", "fil_0001_06.out" u (1*$4):(1*$2) with linespoints title "6", "fil_0001_07.out" u (1*$4):(1*$2) with linespoints title "7", "fil_0001_08.out" u (1*$4):(1*$2) with linespoints title "8", "fil_0001_09.out" u (1*$4):(1*$2) with linespoints title "9", "fil_0001_10.out" u (1*$4):(1*$2) with linespoints title "10"

