#array set nums [list 11 a 12 b 13 c 14 d 15 e 21 g 22 f]
array set graph [list 00 0 01 4 02 0 03 0 04 0 05 0 06 0 07 8 08 0 10 4 11 0 12 8 13 0 14 0 15 0 16 0 17 8 18 0 20 0 21 8 22 0 23 7 24 0 25 4 26 0 27 0 28 2]
for {set i 0} {$i<3} {incr i} {
	for {set j 0} {$j<9} {incr j} {
	puts -nonewline $graph($i$j)
	puts -nonewline " "  
	}
	puts "\n"
#puts $nums(2)($i)
}

#puts $nums(21)
#puts $nums(22)

