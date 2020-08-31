set V 9

set dist(0) 0

for {set i 0} {$i<$V} {incr i} {
	set dist($i) 0
}
# The output array. dist[i] will hold the shortest distance from src to i


#sptSet[i] will true if vertex i is included in shortest Path tree or shortest distance from src to i is finalized

set sprSet(0) 0
for {set $i 0} {$i<$V} {incr i} {
	set sprSet($i) 0
}

puts " Init mid-Done!! "
# followd this -> http://computer-programming-forum.com/57-tcl/6fe9c9942027d6ae.htm
# also try -> http://www.tek-tips.com/viewthread.cfm?qid=483746
array set graph{}
array set graph [list 00 0 01 4 02 0 03 0 04 0 05 0 06 0 07 8 08 0 
10 4 11 0 12 8 13 0 14 0 15 0 16 0 17 8 18 0 #array set graph(1)
20 0 21 8 22 0,23 7 24 0 25 4 26 0 27 0 28 2 #array set graph(2) 
30 0 31 0 32 7 33 0 34 9 35 14 36 0 37 0 38 0 #array set graph(3) 
40 0 41 0 42 0 43 9 44 0 45 10 46 0 47 0 48 0 #array set graph(4) 
50 0 51 0 52 4 53 14 54 10 55 0 56 2 57 0 58 0 #array set graph(5) 
60 0 61 0 62 0 63 0 64 0 65 2 66 0 67 1 68 6 #array set graph(6) 
70 8 71 11 72 0 73 0 74 0 75 0 76 1 77 0 78 7 #array set graph(7) 
80 0 81 0 82 2 83 0 84 0 85 0 86 6 87 7 88 0] #array set graph(8) 


# Initialize all distances as INFINITE and stpSet[] as false (0)


for {set $i 0} {$i<$V} {incr i} {
	set $dist($i) 255
	set $sprSet($i) 0
}

set u 0
set src 0
 # Distance of source vertex from itself is always 0
set dist($src) 0
puts "Init Done! "
#Find the shortest path for all vertices
for {set $i 0} {$i<8} {incr i} {
	# Initialize min value
	set min 255
	set min_index -1

	for {set v 0} {v<$V} {incr v} {
		if {$sprSet($v) == 0}{
			if{$dist($V) <= $min} {
				set $min $dist($V)
				set $min_index $v }
			}
	}
	set $u $min_index 
		#Mark the picked vertex as visited
	set $sprSet($u) 1
	# update dist val of visited one
	for {$v 0} {$v<$V} {incr v} {
		if {$sprSet($v) == 0}{
			if {$graph($u$v) != 0} {
				if {$dist($u} != 255} {
					if{[expr $dist($u) + $graph($u$v)] < $dis} {
							set $dist($v) [expr $dist($u) + $graph($u$v)]
					
					}
			
			}
		
		}
	}
}
puts "Work done! "
#PRITING !
puts "Vertex Distance from Source"
for {set $i 0} {$i<$V} {incr i} {
	puts $i
	puts " "
	puts $dist($i)
}
puts "total over! "
$ns run



			
	

