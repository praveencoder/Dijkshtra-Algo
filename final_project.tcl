zset nodes "a a b b b c c d d d e e e"
set neighbours "b d c d e b e a b e b c d"
set weights "1 2 2 3 4 5 6 7 1 2 3 3 4"
#setting the channel probability
set node_names "a b c d e"
set channel_prob 0.95
foreach ns $nodes ne $neighbours we $weights {
puts "$ns $ne $we"
}
puts $nodes 
set l [llength $nodes]
puts $l
#for storing channel capacity
set max_channel_capacity {}
#for storing effective link capacity 
set eff_link_capacity {}
#for storing transmission delay 
set trans_delay {}  
set packet_length 800
#calculating maximum channel capacity
set snr 99
set snr1 [expr 1+$snr]
#calculating log2(1+snr_ratio)

set m [expr log10(2)]
set val [expr log10($snr1)]
set c [expr $val/$m]

#the variable 'C' holds the resultant log function 1+snr ratio
for { set i 0 } { $i < $l } { incr i } { 
set w [lindex $weights $i]
lappend max_channel_capacity [expr $w*$c]         
     }
#calculating effective link capacity

set capacity 0

for { set i 0 } { $i < $l } { incr i } { 
set w1 [lindex $max_channel_capacity $i]
lappend eff_link_capacity [expr $w1*$channel_prob]         
     }
#calculating transmission delay
for { set i 0 } { $i < $l } { incr i } { 
set w2 [lindex $max_channel_capacity $i]
lappend trans_delay [expr $packet_length/$w2]         
     }


set i 0
foreach ns $trans_delay no $nodes ne $neighbours  {
puts "$ns is the transmission delay for the communication link $no and $ne"
incr i
} 


for { set i 0 } { $i < $l } { incr i } { 

set w [lindex $nodes $i]
set w2 [lindex $neighbours $i]
set val [lindex $trans_delay $i]
set index [lsearch $node_names $w]
set index2 [lsearch $node_names $w2]
puts "$index [lindex $nodes $i]---> $index2 [lindex $neighbours $i]--[lindex $trans_delay $i]"


     }






