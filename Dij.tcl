# writing an array for adjacency matrix holding weights

for {set i 0} {$i<10} {incr i} {
	for{set j 0} $j<10 {incr j} {
		set $matrix($i)($j) 0 #0 as weights
	}
}
for {set ex 0} {
set dest 9 #Dest
set src 1 #Source
set indx 0 #init index for shortest path in 'S'
for{set i 0} $i<10 {incr i} {
	set $T($i) 1
	set $T($src) 0
	set $S(0) 0  #0 is optimal path node list
}
for {set $ex 0} {}

