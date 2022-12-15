
#===================================
#     Simulation parameters setup
#===================================
set val(stop)   100.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Open the NS trace file
set tracefile [open NewWired60Node.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open NewWired60Node.nam w]
$ns namtrace-all $namfile

#===================================
#        Nodes Definition        
#===================================
#Create 60 nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]
set n12 [$ns node]
set n13 [$ns node]
set n14 [$ns node]
set n15 [$ns node]
set n16 [$ns node]
set n17 [$ns node]
set n18 [$ns node]
set n19 [$ns node]
set n20 [$ns node]
set n21 [$ns node]
set n22 [$ns node]
set n23 [$ns node]
set n24 [$ns node]
set n25 [$ns node]
set n26 [$ns node]
set n27 [$ns node]
set n28 [$ns node]
set n29 [$ns node]
set n30 [$ns node]
set n31 [$ns node]
set n32 [$ns node]
set n33 [$ns node]
set n34 [$ns node]
set n35 [$ns node]
set n36 [$ns node]
set n37 [$ns node]
set n38 [$ns node]
set n39 [$ns node]
set n40 [$ns node]
set n41 [$ns node]
set n42 [$ns node]
set n43 [$ns node]
set n44 [$ns node]
set n45 [$ns node]
set n46 [$ns node]
set n47 [$ns node]
set n48 [$ns node]
set n49 [$ns node]
set n50 [$ns node]
set n51 [$ns node]
set n52 [$ns node]
set n53 [$ns node]
set n54 [$ns node]
set n55 [$ns node]
set n56 [$ns node]
set n57 [$ns node]
set n58 [$ns node]
set n59 [$ns node]

#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
$ns duplex-link $n0 $n1 100.0Mb 10ms DropTail
$ns queue-limit $n0 $n1 50
$ns duplex-link $n1 $n2 100.0Mb 10ms DropTail
$ns queue-limit $n1 $n2 50
$ns duplex-link $n2 $n3 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n3 50
$ns duplex-link $n3 $n4 100.0Mb 10ms DropTail
$ns queue-limit $n3 $n4 50
$ns duplex-link $n4 $n5 100.0Mb 10ms DropTail
$ns queue-limit $n4 $n5 50
$ns duplex-link $n5 $n6 100.0Mb 10ms DropTail
$ns queue-limit $n5 $n6 50
$ns duplex-link $n6 $n7 100.0Mb 10ms DropTail
$ns queue-limit $n6 $n7 50
$ns duplex-link $n7 $n8 100.0Mb 10ms DropTail
$ns queue-limit $n7 $n8 50
$ns duplex-link $n8 $n9 100.0Mb 10ms DropTail
$ns queue-limit $n8 $n9 50
$ns duplex-link $n9 $n10 100.0Mb 10ms DropTail
$ns queue-limit $n9 $n10 50
$ns duplex-link $n10 $n11 100.0Mb 10ms DropTail
$ns queue-limit $n10 $n11 50
$ns duplex-link $n11 $n12 100.0Mb 10ms DropTail
$ns queue-limit $n11 $n12 50
$ns duplex-link $n12 $n13 100.0Mb 10ms DropTail
$ns queue-limit $n12 $n13 50
$ns duplex-link $n13 $n14 100.0Mb 10ms DropTail
$ns queue-limit $n13 $n14 50
$ns duplex-link $n14 $n15 100.0Mb 10ms DropTail
$ns queue-limit $n14 $n15 50
$ns duplex-link $n15 $n16 100.0Mb 10ms DropTail
$ns queue-limit $n15 $n16 50
$ns duplex-link $n16 $n17 100.0Mb 10ms DropTail
$ns queue-limit $n16 $n17 50
$ns duplex-link $n17 $n18 100.0Mb 10ms DropTail
$ns queue-limit $n17 $n18 50
$ns duplex-link $n18 $n19 100.0Mb 10ms DropTail
$ns queue-limit $n18 $n19 50
$ns duplex-link $n19 $n20 100.0Mb 10ms DropTail
$ns queue-limit $n19 $n20 50
$ns duplex-link $n20 $n21 100.0Mb 10ms DropTail
$ns queue-limit $n20 $n21 50
$ns duplex-link $n21 $n22 100.0Mb 10ms DropTail
$ns queue-limit $n21 $n22 50
$ns duplex-link $n22 $n23 100.0Mb 10ms DropTail
$ns queue-limit $n22 $n23 50
$ns duplex-link $n23 $n24 100.0Mb 10ms DropTail
$ns queue-limit $n23 $n24 50
$ns duplex-link $n24 $n25 100.0Mb 10ms DropTail
$ns queue-limit $n24 $n25 50
$ns duplex-link $n25 $n26 100.0Mb 10ms DropTail
$ns queue-limit $n25 $n26 50
$ns duplex-link $n26 $n27 100.0Mb 10ms DropTail
$ns queue-limit $n26 $n27 50
$ns duplex-link $n27 $n28 100.0Mb 10ms DropTail
$ns queue-limit $n27 $n28 50
$ns duplex-link $n28 $n29 100.0Mb 10ms DropTail
$ns queue-limit $n28 $n29 50
$ns duplex-link $n29 $n30 100.0Mb 10ms DropTail
$ns queue-limit $n29 $n30 50
$ns duplex-link $n30 $n31 100.0Mb 10ms DropTail
$ns queue-limit $n30 $n31 50
$ns duplex-link $n31 $n32 100.0Mb 10ms DropTail
$ns queue-limit $n31 $n32 50
$ns duplex-link $n32 $n33 100.0Mb 10ms DropTail
$ns queue-limit $n32 $n33 50
$ns duplex-link $n33 $n34 100.0Mb 10ms DropTail
$ns queue-limit $n33 $n34 50
$ns duplex-link $n34 $n35 100.0Mb 10ms DropTail
$ns queue-limit $n34 $n35 50
$ns duplex-link $n35 $n36 100.0Mb 10ms DropTail
$ns queue-limit $n35 $n36 50
$ns duplex-link $n36 $n37 100.0Mb 10ms DropTail
$ns queue-limit $n36 $n37 50
$ns duplex-link $n37 $n38 100.0Mb 10ms DropTail
$ns queue-limit $n37 $n38 50
$ns duplex-link $n38 $n39 100.0Mb 10ms DropTail
$ns queue-limit $n38 $n39 50
$ns duplex-link $n39 $n40 100.0Mb 10ms DropTail
$ns queue-limit $n39 $n40 50
$ns duplex-link $n40 $n41 100.0Mb 10ms DropTail
$ns queue-limit $n40 $n41 50
$ns duplex-link $n41 $n42 100.0Mb 10ms DropTail
$ns queue-limit $n41 $n42 50
$ns duplex-link $n42 $n43 100.0Mb 10ms DropTail
$ns queue-limit $n42 $n43 50
$ns duplex-link $n43 $n44 100.0Mb 10ms DropTail
$ns queue-limit $n43 $n44 50
$ns duplex-link $n44 $n45 100.0Mb 10ms DropTail
$ns queue-limit $n44 $n45 50
$ns duplex-link $n45 $n46 100.0Mb 10ms DropTail
$ns queue-limit $n45 $n46 50
$ns duplex-link $n46 $n47 100.0Mb 10ms DropTail
$ns queue-limit $n46 $n47 50
$ns duplex-link $n47 $n48 100.0Mb 10ms DropTail
$ns queue-limit $n47 $n48 50
$ns duplex-link $n48 $n49 100.0Mb 10ms DropTail
$ns queue-limit $n48 $n49 50
$ns duplex-link $n49 $n50 100.0Mb 10ms DropTail
$ns queue-limit $n49 $n50 50
$ns duplex-link $n50 $n51 100.0Mb 10ms DropTail
$ns queue-limit $n50 $n51 50
$ns duplex-link $n51 $n52 100.0Mb 10ms DropTail
$ns queue-limit $n51 $n52 50
$ns duplex-link $n52 $n53 100.0Mb 10ms DropTail
$ns queue-limit $n52 $n53 50
$ns duplex-link $n53 $n54 100.0Mb 10ms DropTail
$ns queue-limit $n53 $n54 50
$ns duplex-link $n54 $n55 100.0Mb 10ms DropTail
$ns queue-limit $n54 $n55 50
$ns duplex-link $n55 $n56 100.0Mb 10ms DropTail
$ns queue-limit $n55 $n56 50
$ns duplex-link $n56 $n57 100.0Mb 10ms DropTail
$ns queue-limit $n56 $n57 50
$ns duplex-link $n57 $n58 100.0Mb 10ms DropTail
$ns queue-limit $n57 $n58 50
$ns duplex-link $n58 $n59 100.0Mb 10ms DropTail
$ns queue-limit $n58 $n59 50

#Give node position (for NAM)
$ns duplex-link-op $n0 $n1 orient right
$ns duplex-link-op $n1 $n2 orient right
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n3 $n4 orient right
$ns duplex-link-op $n4 $n5 orient right
$ns duplex-link-op $n5 $n6 orient right
$ns duplex-link-op $n6 $n7 orient right
$ns duplex-link-op $n7 $n8 orient left-down
$ns duplex-link-op $n8 $n9 orient right
$ns duplex-link-op $n9 $n10 orient right
$ns duplex-link-op $n10 $n11 orient right
$ns duplex-link-op $n11 $n12 orient right
$ns duplex-link-op $n12 $n13 orient right
$ns duplex-link-op $n13 $n14 orient right
$ns duplex-link-op $n14 $n15 orient right
$ns duplex-link-op $n15 $n16 orient left-down
$ns duplex-link-op $n16 $n17 orient right
$ns duplex-link-op $n17 $n18 orient right
$ns duplex-link-op $n18 $n19 orient right
$ns duplex-link-op $n19 $n20 orient right
$ns duplex-link-op $n20 $n21 orient right
$ns duplex-link-op $n21 $n22 orient right
$ns duplex-link-op $n22 $n23 orient right
$ns duplex-link-op $n23 $n24 orient left-down
$ns duplex-link-op $n24 $n25 orient right
$ns duplex-link-op $n25 $n26 orient right
$ns duplex-link-op $n26 $n27 orient right
$ns duplex-link-op $n27 $n28 orient right
$ns duplex-link-op $n28 $n29 orient right
$ns duplex-link-op $n29 $n30 orient right
$ns duplex-link-op $n30 $n31 orient right
$ns duplex-link-op $n31 $n32 orient left-down
$ns duplex-link-op $n32 $n33 orient right
$ns duplex-link-op $n33 $n34 orient right
$ns duplex-link-op $n34 $n35 orient right
$ns duplex-link-op $n35 $n36 orient right
$ns duplex-link-op $n36 $n37 orient right
$ns duplex-link-op $n37 $n38 orient right
$ns duplex-link-op $n38 $n39 orient right
$ns duplex-link-op $n39 $n40 orient left-down
$ns duplex-link-op $n40 $n41 orient right
$ns duplex-link-op $n41 $n42 orient right
$ns duplex-link-op $n42 $n43 orient right
$ns duplex-link-op $n43 $n44 orient right
$ns duplex-link-op $n44 $n45 orient right
$ns duplex-link-op $n45 $n46 orient right
$ns duplex-link-op $n46 $n47 orient right
$ns duplex-link-op $n47 $n48 orient left-down
$ns duplex-link-op $n48 $n49 orient right
$ns duplex-link-op $n49 $n50 orient right
$ns duplex-link-op $n50 $n51 orient right
$ns duplex-link-op $n51 $n52 orient right
$ns duplex-link-op $n52 $n53 orient right
$ns duplex-link-op $n53 $n54 orient right
$ns duplex-link-op $n54 $n55 orient right
$ns duplex-link-op $n55 $n56 orient left-down
$ns duplex-link-op $n56 $n57 orient right
$ns duplex-link-op $n57 $n58 orient right
$ns duplex-link-op $n58 $n59 orient right

#===================================
#        Agents Definition        
#===================================
#Setup a UDP connection
set udp0 [new Agent/UDP]
$ns attach-agent $n0 $udp0
set null8 [new Agent/Null]
$ns attach-agent $n8 $null8
$ns connect $udp0 $null8
$udp0 set packetSize_ 1000

#Setup a UDP connection
set udp1 [new Agent/UDP]
$ns attach-agent $n1 $udp1
set null9 [new Agent/Null]
$ns attach-agent $n9 $null9
$ns connect $udp1 $null9
$udp1 set packetSize_ 1000

#Setup a UDP connection
set udp2 [new Agent/UDP]
$ns attach-agent $n2 $udp2
set null10 [new Agent/Null]
$ns attach-agent $n10 $null10
$ns connect $udp2 $null10
$udp2 set packetSize_ 1000

#Setup a UDP connection
set udp3 [new Agent/UDP]
$ns attach-agent $n3 $udp3
set null11 [new Agent/Null]
$ns attach-agent $n11 $null11
$ns connect $udp3 $null11
$udp3 set packetSize_ 1000

#Setup a UDP connection
set udp4 [new Agent/UDP]
$ns attach-agent $n4 $udp4
set null12 [new Agent/Null]
$ns attach-agent $n12 $null12
$ns connect $udp4 $null12
$udp4 set packetSize_ 1000

#Setup a UDP connection
set udp5 [new Agent/UDP]
$ns attach-agent $n5 $udp5
set null13 [new Agent/Null]
$ns attach-agent $n13 $null13
$ns connect $udp5 $null13
$udp5 set packetSize_ 1000

#Setup a UDP connection
set udp6 [new Agent/UDP]
$ns attach-agent $n6 $udp6
set null14 [new Agent/Null]
$ns attach-agent $n14 $null14
$ns connect $udp6 $null14
$udp6 set packetSize_ 1000

#Setup a UDP connection
set udp7 [new Agent/UDP]
$ns attach-agent $n7 $udp7
set null15 [new Agent/Null]
$ns attach-agent $n15 $null15
$ns connect $udp7 $null15
$udp7 set packetSize_ 1000

#Setup a UDP connection
set udp16 [new Agent/UDP]
$ns attach-agent $n8 $udp16
set null24 [new Agent/Null]
$ns attach-agent $n16 $null24
$ns connect $udp16 $null24
$udp16 set packetSize_ 1000

#Setup a UDP connection
set udp17 [new Agent/UDP]
$ns attach-agent $n9 $udp17
set null25 [new Agent/Null]
$ns attach-agent $n17 $null25
$ns connect $udp17 $null25
$udp17 set packetSize_ 1000

#Setup a UDP connection
set udp18 [new Agent/UDP]
$ns attach-agent $n10 $udp18
set null26 [new Agent/Null]
$ns attach-agent $n18 $null26
$ns connect $udp18 $null26
$udp18 set packetSize_ 1000

#Setup a UDP connection
set udp19 [new Agent/UDP]
$ns attach-agent $n11 $udp19
set null27 [new Agent/Null]
$ns attach-agent $n19 $null27
$ns connect $udp19 $null27
$udp19 set packetSize_ 1000

#Setup a UDP connection
set udp20 [new Agent/UDP]
$ns attach-agent $n12 $udp20
set null28 [new Agent/Null]
$ns attach-agent $n20 $null28
$ns connect $udp20 $null28
$udp20 set packetSize_ 1000

#Setup a UDP connection
set udp21 [new Agent/UDP]
$ns attach-agent $n13 $udp21
set null29 [new Agent/Null]
$ns attach-agent $n21 $null29
$ns connect $udp21 $null29
$udp21 set packetSize_ 1000

#Setup a UDP connection
set udp22 [new Agent/UDP]
$ns attach-agent $n14 $udp22
set null30 [new Agent/Null]
$ns attach-agent $n22 $null30
$ns connect $udp22 $null30
$udp22 set packetSize_ 1000

#Setup a UDP connection
set udp23 [new Agent/UDP]
$ns attach-agent $n15 $udp23
set null31 [new Agent/Null]
$ns attach-agent $n23 $null31
$ns connect $udp23 $null31
$udp23 set packetSize_ 1000

#Setup a UDP connection
set udp32 [new Agent/UDP]
$ns attach-agent $n16 $udp32
set null40 [new Agent/Null]
$ns attach-agent $n24 $null40
$ns connect $udp32 $null40
$udp32 set packetSize_ 1000

#Setup a UDP connection
set udp33 [new Agent/UDP]
$ns attach-agent $n17 $udp33
set null41 [new Agent/Null]
$ns attach-agent $n25 $null41
$ns connect $udp33 $null41
$udp33 set packetSize_ 1000

#Setup a UDP connection
set udp34 [new Agent/UDP]
$ns attach-agent $n18 $udp34
set null42 [new Agent/Null]
$ns attach-agent $n26 $null42
$ns connect $udp34 $null42
$udp34 set packetSize_ 1000

#Setup a UDP connection
set udp35 [new Agent/UDP]
$ns attach-agent $n19 $udp35
set null43 [new Agent/Null]
$ns attach-agent $n27 $null43
$ns connect $udp35 $null43
$udp35 set packetSize_ 1000

#Setup a UDP connection
set udp36 [new Agent/UDP]
$ns attach-agent $n20 $udp36
set null44 [new Agent/Null]
$ns attach-agent $n28 $null44
$ns connect $udp36 $null44
$udp36 set packetSize_ 1000

#Setup a UDP connection
set udp37 [new Agent/UDP]
$ns attach-agent $n21 $udp37
set null45 [new Agent/Null]
$ns attach-agent $n29 $null45
$ns connect $udp37 $null45
$udp37 set packetSize_ 1000

#Setup a UDP connection
set udp38 [new Agent/UDP]
$ns attach-agent $n22 $udp38
set null46 [new Agent/Null]
$ns attach-agent $n30 $null46
$ns connect $udp38 $null46
$udp38 set packetSize_ 1000

#Setup a UDP connection
set udp39 [new Agent/UDP]
$ns attach-agent $n23 $udp39
set null47 [new Agent/Null]
$ns attach-agent $n31 $null47
$ns connect $udp39 $null47
$udp39 set packetSize_ 1000

#Setup a UDP connection
set udp48 [new Agent/UDP]
$ns attach-agent $n24 $udp48
set null56 [new Agent/Null]
$ns attach-agent $n32 $null56
$ns connect $udp48 $null56
$udp48 set packetSize_ 1000

#Setup a UDP connection
set udp49 [new Agent/UDP]
$ns attach-agent $n25 $udp49
set null57 [new Agent/Null]
$ns attach-agent $n33 $null57
$ns connect $udp49 $null57
$udp49 set packetSize_ 1000

#Setup a UDP connection
set udp50 [new Agent/UDP]
$ns attach-agent $n26 $udp50
set null58 [new Agent/Null]
$ns attach-agent $n34 $null58
$ns connect $udp50 $null58
$udp50 set packetSize_ 1000

#Setup a UDP connection
set udp51 [new Agent/UDP]
$ns attach-agent $n27 $udp51
set null59 [new Agent/Null]
$ns attach-agent $n35 $null59
$ns connect $udp51 $null59
$udp51 set packetSize_ 1000

#Setup a UDP connection
set udp52 [new Agent/UDP]
$ns attach-agent $n28 $udp52
set null60 [new Agent/Null]
$ns attach-agent $n36 $null60
$ns connect $udp52 $null60
$udp52 set packetSize_ 1000

#Setup a UDP connection
set udp53 [new Agent/UDP]
$ns attach-agent $n29 $udp53
set null61 [new Agent/Null]
$ns attach-agent $n37 $null61
$ns connect $udp53 $null61
$udp53 set packetSize_ 1000

#Setup a UDP connection
set udp54 [new Agent/UDP]
$ns attach-agent $n30 $udp54
set null62 [new Agent/Null]
$ns attach-agent $n38 $null62
$ns connect $udp54 $null62
$udp54 set packetSize_ 1000

#Setup a UDP connection
set udp55 [new Agent/UDP]
$ns attach-agent $n31 $udp55
set null63 [new Agent/Null]
$ns attach-agent $n39 $null63
$ns connect $udp55 $null63
$udp55 set packetSize_ 1000

#Setup a UDP connection
set udp64 [new Agent/UDP]
$ns attach-agent $n32 $udp64
set null72 [new Agent/Null]
$ns attach-agent $n40 $null72
$ns connect $udp64 $null72
$udp64 set packetSize_ 1000

#Setup a UDP connection
set udp65 [new Agent/UDP]
$ns attach-agent $n33 $udp65
set null73 [new Agent/Null]
$ns attach-agent $n41 $null73
$ns connect $udp65 $null73
$udp65 set packetSize_ 1000

#Setup a UDP connection
set udp66 [new Agent/UDP]
$ns attach-agent $n34 $udp66
set null74 [new Agent/Null]
$ns attach-agent $n42 $null74
$ns connect $udp66 $null74
$udp66 set packetSize_ 1000

#Setup a UDP connection
set udp67 [new Agent/UDP]
$ns attach-agent $n35 $udp67
set null75 [new Agent/Null]
$ns attach-agent $n43 $null75
$ns connect $udp67 $null75
$udp67 set packetSize_ 1000

#Setup a UDP connection
set udp68 [new Agent/UDP]
$ns attach-agent $n36 $udp68
set null76 [new Agent/Null]
$ns attach-agent $n44 $null76
$ns connect $udp68 $null76
$udp68 set packetSize_ 1000

#Setup a UDP connection
set udp69 [new Agent/UDP]
$ns attach-agent $n37 $udp69
set null77 [new Agent/Null]
$ns attach-agent $n45 $null77
$ns connect $udp69 $null77
$udp69 set packetSize_ 1000

#Setup a UDP connection
set udp70 [new Agent/UDP]
$ns attach-agent $n38 $udp70
set null78 [new Agent/Null]
$ns attach-agent $n46 $null78
$ns connect $udp70 $null78
$udp70 set packetSize_ 1000

#Setup a UDP connection
set udp71 [new Agent/UDP]
$ns attach-agent $n39 $udp71
set null79 [new Agent/Null]
$ns attach-agent $n47 $null79
$ns connect $udp71 $null79
$udp71 set packetSize_ 1000

#Setup a UDP connection
set udp80 [new Agent/UDP]
$ns attach-agent $n40 $udp80
set null88 [new Agent/Null]
$ns attach-agent $n48 $null88
$ns connect $udp80 $null88
$udp80 set packetSize_ 1000

#Setup a UDP connection
set udp81 [new Agent/UDP]
$ns attach-agent $n41 $udp81
set null89 [new Agent/Null]
$ns attach-agent $n49 $null89
$ns connect $udp81 $null89
$udp81 set packetSize_ 1000

#Setup a UDP connection
set udp82 [new Agent/UDP]
$ns attach-agent $n42 $udp82
set null90 [new Agent/Null]
$ns attach-agent $n50 $null90
$ns connect $udp82 $null90
$udp82 set packetSize_ 1000

#Setup a UDP connection
set udp83 [new Agent/UDP]
$ns attach-agent $n43 $udp83
set null91 [new Agent/Null]
$ns attach-agent $n51 $null91
$ns connect $udp83 $null91
$udp83 set packetSize_ 1000

#Setup a UDP connection
set udp84 [new Agent/UDP]
$ns attach-agent $n44 $udp84
set null92 [new Agent/Null]
$ns attach-agent $n52 $null92
$ns connect $udp84 $null92
$udp84 set packetSize_ 1000

#Setup a UDP connection
set udp85 [new Agent/UDP]
$ns attach-agent $n45 $udp85
set null93 [new Agent/Null]
$ns attach-agent $n53 $null93
$ns connect $udp85 $null93
$udp85 set packetSize_ 1000

#Setup a UDP connection
set udp86 [new Agent/UDP]
$ns attach-agent $n46 $udp86
set null94 [new Agent/Null]
$ns attach-agent $n54 $null94
$ns connect $udp86 $null94
$udp86 set packetSize_ 1000

#Setup a UDP connection
set udp87 [new Agent/UDP]
$ns attach-agent $n47 $udp87
set null95 [new Agent/Null]
$ns attach-agent $n55 $null95
$ns connect $udp87 $null95
$udp87 set packetSize_ 1000

#Setup a UDP connection
set udp96 [new Agent/UDP]
$ns attach-agent $n48 $udp96
set null104 [new Agent/Null]
$ns attach-agent $n56 $null104
$ns connect $udp96 $null104
$udp96 set packetSize_ 1000

#Setup a UDP connection
set udp97 [new Agent/UDP]
$ns attach-agent $n49 $udp97
set null105 [new Agent/Null]
$ns attach-agent $n57 $null105
$ns connect $udp97 $null105
$udp97 set packetSize_ 1000

#Setup a UDP connection
set udp98 [new Agent/UDP]
$ns attach-agent $n50 $udp98
set null106 [new Agent/Null]
$ns attach-agent $n58 $null106
$ns connect $udp98 $null106
$udp98 set packetSize_ 1000

#Setup a UDP connection
set udp99 [new Agent/UDP]
$ns attach-agent $n51 $udp99
set null107 [new Agent/Null]
$ns attach-agent $n59 $null107
$ns connect $udp99 $null107
$udp99 set packetSize_ 1000

#Setup a UDP connection
set udp100 [new Agent/UDP]
$ns attach-agent $n52 $udp100
set null108 [new Agent/Null]
$ns attach-agent $n59 $null108
$ns connect $udp100 $null108
$udp100 set packetSize_ 1000

#Setup a UDP connection
set udp101 [new Agent/UDP]
$ns attach-agent $n53 $udp101
set null109 [new Agent/Null]
$ns attach-agent $n59 $null109
$ns connect $udp101 $null109
$udp101 set packetSize_ 1000

#Setup a UDP connection
set udp102 [new Agent/UDP]
$ns attach-agent $n54 $udp102
set null110 [new Agent/Null]
$ns attach-agent $n59 $null110
$ns connect $udp102 $null110
$udp102 set packetSize_ 1000

#Setup a UDP connection
set udp103 [new Agent/UDP]
$ns attach-agent $n55 $udp103
set null111 [new Agent/Null]
$ns attach-agent $n59 $null111
$ns connect $udp103 $null111
$udp103 set packetSize_ 1000


#===================================
#        Applications Definition        
#===================================
#Setup a CBR Application over UDP connection
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set packetSize_ 1000
$cbr0 set rate_ 1.0Mb
$cbr0 set random_ null
$ns at 0.5 "$cbr0 start"
$ns at 2.0 "$cbr0 stop"

#Setup a CBR Application over UDP connection
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 1.0Mb
$cbr1 set random_ null
$ns at 0.8 "$cbr1 start"
$ns at 2.2 "$cbr1 stop"

#Setup a CBR Application over UDP connection
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp2
$cbr2 set packetSize_ 1000
$cbr2 set rate_ 1.0Mb
$cbr2 set random_ null
$ns at 1.0 "$cbr2 start"
$ns at 2.6 "$cbr2 stop"

#Setup a CBR Application over UDP connection
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
$cbr3 set packetSize_ 1000
$cbr3 set rate_ 1.0Mb
$cbr3 set random_ null
$ns at 1.2 "$cbr3 start"
$ns at 2.9 "$cbr3 stop"

#Setup a CBR Application over UDP connection
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp4
$cbr4 set packetSize_ 1000
$cbr4 set rate_ 1.0Mb
$cbr4 set random_ null
$ns at 1.5 "$cbr4 start"
$ns at 3.1 "$cbr4 stop"

#Setup a CBR Application over UDP connection
set cbr5 [new Application/Traffic/CBR]
$cbr5 attach-agent $udp5
$cbr5 set packetSize_ 1000
$cbr5 set rate_ 1.0Mb
$cbr5 set random_ null
$ns at 1.7 "$cbr5 start"
$ns at 3.3 "$cbr5 stop"

#Setup a CBR Application over UDP connection
set cbr6 [new Application/Traffic/CBR]
$cbr6 attach-agent $udp6
$cbr6 set packetSize_ 1000
$cbr6 set rate_ 1.0Mb
$cbr6 set random_ 
$ns at 2.0 "$cbr6 start"
$ns at 3.5 "$cbr6 stop"

#Setup a CBR Application over UDP connection
set cbr7 [new Application/Traffic/CBR]
$cbr7 attach-agent $udp7
$cbr7 set packetSize_ 1000
$cbr7 set rate_ 1.0Mb
$cbr7 set random_ null
$ns at 2.3 "$cbr7 start"
$ns at 3.7 "$cbr7 stop"

#Setup a CBR Application over UDP connection
set cbr8 [new Application/Traffic/CBR]
$cbr8 attach-agent $udp16
$cbr8 set packetSize_ 1000
$cbr8 set rate_ 1.0Mb
$cbr8 set random_ null
$ns at 2.4 "$cbr8 start"
$ns at 3.8 "$cbr8 stop"

#Setup a CBR Application over UDP connection
set cbr9 [new Application/Traffic/CBR]
$cbr9 attach-agent $udp17
$cbr9 set packetSize_ 1000
$cbr9 set rate_ 1.0Mb
$cbr9 set random_ null
$ns at 2.6 "$cbr9 start"
$ns at 3.9 "$cbr9 stop"

#Setup a CBR Application over UDP connection
set cbr10 [new Application/Traffic/CBR]
$cbr10 attach-agent $udp18
$cbr10 set packetSize_ 1000
$cbr10 set rate_ 1.0Mb
$cbr10 set random_ null
$ns at 2.8 "$cbr10 start"
$ns at 4.0 "$cbr10 stop"

#Setup a CBR Application over UDP connection
set cbr11 [new Application/Traffic/CBR]
$cbr11 attach-agent $udp19
$cbr11 set packetSize_ 1000
$cbr11 set rate_ 1.0Mb
$cbr11 set random_ null
$ns at 3.3 "$cbr11 start"
$ns at 4.3 "$cbr11 stop"

#Setup a CBR Application over UDP connection
set cbr12 [new Application/Traffic/CBR]
$cbr12 attach-agent $udp20
$cbr12 set packetSize_ 1000
$cbr12 set rate_ 1.0Mb
$cbr12 set random_ null
$ns at 3.5 "$cbr12 start"
$ns at 4.4 "$cbr12 stop"

#Setup a CBR Application over UDP connection
set cbr13 [new Application/Traffic/CBR]
$cbr13 attach-agent $udp21
$cbr13 set packetSize_ 1000
$cbr13 set rate_ 1.0Mb
$cbr13 set random_ null
$ns at 3.8 "$cbr13 start"
$ns at 4.6 "$cbr13 stop"

#Setup a CBR Application over UDP connection
set cbr14 [new Application/Traffic/CBR]
$cbr14 attach-agent $udp22
$cbr14 set packetSize_ 1000
$cbr14 set rate_ 1.0Mb
$cbr14 set random_ null
$ns at 3.9 "$cbr14 start"
$ns at 4.8 "$cbr14 stop"

#Setup a CBR Application over UDP connection
set cbr15 [new Application/Traffic/CBR]
$cbr15 attach-agent $udp23
$cbr15 set packetSize_ 1000
$cbr15 set rate_ 1.0Mb
$cbr15 set random_ null
$ns at 4.2 "$cbr15 start"
$ns at 5.4 "$cbr15 stop"

#Setup a CBR Application over UDP connection
set cbr16 [new Application/Traffic/CBR]
$cbr16 attach-agent $udp32
$cbr16 set packetSize_ 1000
$cbr16 set rate_ 1.0Mb
$cbr16 set random_ null
$ns at 5.2 "$cbr16 start"
$ns at 5.8 "$cbr16 stop"

#Setup a CBR Application over UDP connection
set cbr17 [new Application/Traffic/CBR]
$cbr17 attach-agent $udp33
$cbr17 set packetSize_ 1000
$cbr17 set rate_ 1.0Mb
$cbr17 set random_ null
$ns at 5.9 "$cbr17 start"
$ns at 6.2 "$cbr17 stop"

#Setup a CBR Application over UDP connection
set cbr18 [new Application/Traffic/CBR]
$cbr18 attach-agent $udp34
$cbr18 set packetSize_ 1000
$cbr18 set rate_ 1.0Mb
$cbr18 set random_ 
$ns at 6.1 "$cbr18 start"
$ns at 7.1 "$cbr18 stop"

#Setup a CBR Application over UDP connection
set cbr19 [new Application/Traffic/CBR]
$cbr19 attach-agent $udp35
$cbr19 set packetSize_ 1000
$cbr19 set rate_ 1.0Mb
$cbr19 set random_ null
$ns at 10.0 "$cbr19 start"
$ns at 12.1 "$cbr19 stop"

#Setup a CBR Application over UDP connection
set cbr20 [new Application/Traffic/CBR]
$cbr20 attach-agent $udp36
$cbr20 set packetSize_ 1000
$cbr20 set rate_ 1.0Mb
$cbr20 set random_ null
$ns at 11.0 "$cbr20 start"
$ns at 13.1 "$cbr20 stop"

#Setup a CBR Application over UDP connection
set cbr21 [new Application/Traffic/CBR]
$cbr21 attach-agent $udp37
$cbr21 set packetSize_ 1000
$cbr21 set rate_ 1.0Mb
$cbr21 set random_ null
$ns at 13.0 "$cbr21 start"
$ns at 15.0 "$cbr21 stop"

#Setup a CBR Application over UDP connection
set cbr22 [new Application/Traffic/CBR]
$cbr22 attach-agent $udp38
$cbr22 set packetSize_ 1000
$cbr22 set rate_ 1.0Mb
$cbr22 set random_ null
$ns at 14.0 "$cbr22 start"
$ns at 15.8 "$cbr22 stop"

#Setup a CBR Application over UDP connection
set cbr23 [new Application/Traffic/CBR]
$cbr23 attach-agent $udp39
$cbr23 set packetSize_ 1000
$cbr23 set rate_ 1.0Mb
$cbr23 set random_ null
$ns at 16.0 "$cbr23 start"
$ns at 17.1 "$cbr23 stop"

#Setup a CBR Application over UDP connection
set cbr24 [new Application/Traffic/CBR]
$cbr24 attach-agent $udp48
$cbr24 set packetSize_ 1000
$cbr24 set rate_ 1.0Mb
$cbr24 set random_ null
$ns at 16.8 "$cbr24 start"
$ns at 17.4 "$cbr24 stop"

#Setup a CBR Application over UDP connection
set cbr25 [new Application/Traffic/CBR]
$cbr25 attach-agent $udp49
$cbr25 set packetSize_ 1000
$cbr25 set rate_ 1.0Mb
$cbr25 set random_ null
$ns at 17.6 "$cbr25 start"
$ns at 18.0 "$cbr25 stop"

#Setup a CBR Application over UDP connection
set cbr26 [new Application/Traffic/CBR]
$cbr26 attach-agent $udp50
$cbr26 set packetSize_ 1000
$cbr26 set rate_ 1.0Mb
$cbr26 set random_ null
$ns at 18.0 "$cbr26 start"
$ns at 18.7 "$cbr26 stop"

#Setup a CBR Application over UDP connection
set cbr27 [new Application/Traffic/CBR]
$cbr27 attach-agent $udp51
$cbr27 set packetSize_ 1000
$cbr27 set rate_ 1.0Mb
$cbr27 set random_ null
$ns at 19.0 "$cbr27 start"
$ns at 20.0 "$cbr27 stop"

#Setup a CBR Application over UDP connection
set cbr28 [new Application/Traffic/CBR]
$cbr28 attach-agent $udp52
$cbr28 set packetSize_ 1000
$cbr28 set rate_ 1.0Mb
$cbr28 set random_ null
$ns at 19.5 "$cbr28 start"
$ns at 20.7 "$cbr28 stop"

#Setup a CBR Application over UDP connection
set cbr29 [new Application/Traffic/CBR]
$cbr29 attach-agent $udp53
$cbr29 set packetSize_ 1000
$cbr29 set rate_ 1.0Mb
$cbr29 set random_ null
$ns at 21.0 "$cbr29 start"
$ns at 23.0 "$cbr29 stop"

#Setup a CBR Application over UDP connection
set cbr30 [new Application/Traffic/CBR]
$cbr30 attach-agent $udp54
$cbr30 set packetSize_ 1000
$cbr30 set rate_ 1.0Mb
$cbr30 set random_ null
$ns at 24.0 "$cbr30 start"
$ns at 25.6 "$cbr30 stop"

#Setup a CBR Application over UDP connection
set cbr31 [new Application/Traffic/CBR]
$cbr31 attach-agent $udp55
$cbr31 set packetSize_ 1000
$cbr31 set rate_ 1.0Mb
$cbr31 set random_ null
$ns at 26.0 "$cbr31 start"
$ns at 27.3 "$cbr31 stop"

#Setup a CBR Application over UDP connection
set cbr32 [new Application/Traffic/CBR]
$cbr32 attach-agent $udp64
$cbr32 set packetSize_ 1000
$cbr32 set rate_ 1.0Mb
$cbr32 set random_ null
$ns at 28.0 "$cbr32 start"
$ns at 29.0 "$cbr32 stop"

#Setup a CBR Application over UDP connection
set cbr33 [new Application/Traffic/CBR]
$cbr33 attach-agent $udp65
$cbr33 set packetSize_ 1000
$cbr33 set rate_ 1.0Mb
$cbr33 set random_ null
$ns at 31.0 "$cbr33 start"
$ns at 33.2 "$cbr33 stop"

#Setup a CBR Application over UDP connection
set cbr34 [new Application/Traffic/CBR]
$cbr34 attach-agent $udp66
$cbr34 set packetSize_ 1000
$cbr34 set rate_ 1.0Mb
$cbr34 set random_ null
$ns at 35.0 "$cbr34 start"
$ns at 38.0 "$cbr34 stop"

#Setup a CBR Application over UDP connection
set cbr35 [new Application/Traffic/CBR]
$cbr35 attach-agent $udp67
$cbr35 set packetSize_ 1000
$cbr35 set rate_ 1.0Mb
$cbr35 set random_ null
$ns at 39.0 "$cbr35 start"
$ns at 43.0 "$cbr35 stop"

#Setup a CBR Application over UDP connection
set cbr36 [new Application/Traffic/CBR]
$cbr36 attach-agent $udp68
$cbr36 set packetSize_ 1000
$cbr36 set rate_ 1.0Mb
$cbr36 set random_ null
$ns at 44.0 "$cbr36 start"
$ns at 48.0 "$cbr36 stop"

#Setup a CBR Application over UDP connection
set cbr37 [new Application/Traffic/CBR]
$cbr37 attach-agent $udp69
$cbr37 set packetSize_ 1000
$cbr37 set rate_ 1.0Mb
$cbr37 set random_ null
$ns at 49.0 "$cbr37 start"
$ns at 52.0 "$cbr37 stop"

#Setup a CBR Application over UDP connection
set cbr38 [new Application/Traffic/CBR]
$cbr38 attach-agent $udp70
$cbr38 set packetSize_ 1000
$cbr38 set rate_ 1.0Mb
$cbr38 set random_ null
$ns at 53.0 "$cbr38 start"
$ns at 55.0 "$cbr38 stop"

#Setup a CBR Application over UDP connection
set cbr39 [new Application/Traffic/CBR]
$cbr39 attach-agent $udp71
$cbr39 set packetSize_ 1000
$cbr39 set rate_ 1.0Mb
$cbr39 set random_ null
$ns at 56.0 "$cbr39 start"
$ns at 60.0 "$cbr39 stop"

#Setup a CBR Application over UDP connection
set cbr40 [new Application/Traffic/CBR]
$cbr40 attach-agent $udp80
$cbr40 set packetSize_ 1000
$cbr40 set rate_ 1.0Mb
$cbr40 set random_ null
$ns at 60.0 "$cbr40 start"
$ns at 63.0 "$cbr40 stop"

#Setup a CBR Application over UDP connection
set cbr41 [new Application/Traffic/CBR]
$cbr41 attach-agent $udp81
$cbr41 set packetSize_ 1000
$cbr41 set rate_ 1.0Mb
$cbr41 set random_ null
$ns at 64.0 "$cbr41 start"
$ns at 67.0 "$cbr41 stop"

#Setup a CBR Application over UDP connection
set cbr42 [new Application/Traffic/CBR]
$cbr42 attach-agent $udp82
$cbr42 set packetSize_ 1000
$cbr42 set rate_ 1.0Mb
$cbr42 set random_ null
$ns at 68.0 "$cbr42 start"
$ns at 73.0 "$cbr42 stop"

#Setup a CBR Application over UDP connection
set cbr43 [new Application/Traffic/CBR]
$cbr43 attach-agent $udp83
$cbr43 set packetSize_ 1000
$cbr43 set rate_ 1.0Mb
$cbr43 set random_ null
$ns at 74.0 "$cbr43 start"
$ns at 77.0 "$cbr43 stop"

#Setup a CBR Application over UDP connection
set cbr44 [new Application/Traffic/CBR]
$cbr44 attach-agent $udp84
$cbr44 set packetSize_ 1000
$cbr44 set rate_ 1.0Mb
$cbr44 set random_ null
$ns at 78.0 "$cbr44 start"
$ns at 81.0 "$cbr44 stop"

#Setup a CBR Application over UDP connection
set cbr45 [new Application/Traffic/CBR]
$cbr45 attach-agent $udp85
$cbr45 set packetSize_ 1000
$cbr45 set rate_ 1.0Mb
$cbr45 set random_ null
$ns at 82.0 "$cbr45 start"
$ns at 85.0 "$cbr45 stop"

#Setup a CBR Application over UDP connection
set cbr46 [new Application/Traffic/CBR]
$cbr46 attach-agent $udp86
$cbr46 set packetSize_ 1000
$cbr46 set rate_ 1.0Mb
$cbr46 set random_ null
$ns at 86.0 "$cbr46 start"
$ns at 89.0 "$cbr46 stop"

#Setup a CBR Application over UDP connection
set cbr47 [new Application/Traffic/CBR]
$cbr47 attach-agent $udp87
$cbr47 set packetSize_ 1000
$cbr47 set rate_ 1.0Mb
$cbr47 set random_ null
$ns at 90.0 "$cbr47 start"
$ns at 92.0 "$cbr47 stop"

#Setup a CBR Application over UDP connection
set cbr48 [new Application/Traffic/CBR]
$cbr48 attach-agent $udp96
$cbr48 set packetSize_ 1000
$cbr48 set rate_ 1.0Mb
$cbr48 set random_ null
$ns at 91.0 "$cbr48 start"
$ns at 93.0 "$cbr48 stop"

#Setup a CBR Application over UDP connection
set cbr49 [new Application/Traffic/CBR]
$cbr49 attach-agent $udp97
$cbr49 set packetSize_ 1000
$cbr49 set rate_ 1.0Mb
$cbr49 set random_ null
$ns at 93.0 "$cbr49 start"
$ns at 94.0 "$cbr49 stop"

#Setup a CBR Application over UDP connection
set cbr50 [new Application/Traffic/CBR]
$cbr50 attach-agent $udp98
$cbr50 set packetSize_ 1000
$cbr50 set rate_ 1.0Mb
$cbr50 set random_ null
$ns at 94.0 "$cbr50 start"
$ns at 95.0 "$cbr50 stop"

#Setup a CBR Application over UDP connection
set cbr51 [new Application/Traffic/CBR]
$cbr51 attach-agent $udp99
$cbr51 set packetSize_ 1000
$cbr51 set rate_ 1.0Mb
$cbr51 set random_ null
$ns at 95.0 "$cbr51 start"
$ns at 96.0 "$cbr51 stop"

#Setup a CBR Application over UDP connection
set cbr52 [new Application/Traffic/CBR]
$cbr52 attach-agent $udp100
$cbr52 set packetSize_ 1000
$cbr52 set rate_ 1.0Mb
$cbr52 set random_ null
$ns at 96.0 "$cbr52 start"
$ns at 97.0 "$cbr52 stop"

#Setup a CBR Application over UDP connection
set cbr53 [new Application/Traffic/CBR]
$cbr53 attach-agent $udp101
$cbr53 set packetSize_ 1000
$cbr53 set rate_ 1.0Mb
$cbr53 set random_ null
$ns at 97.2 "$cbr53 start"
$ns at 98.0 "$cbr53 stop"

#Setup a CBR Application over UDP connection
set cbr54 [new Application/Traffic/CBR]
$cbr54 attach-agent $udp102
$cbr54 set packetSize_ 1000
$cbr54 set rate_ 1.0Mb
$cbr54 set random_ null
$ns at 98.0 "$cbr54 start"
$ns at 99.0 "$cbr54 stop"

#Setup a CBR Application over UDP connection
set cbr55 [new Application/Traffic/CBR]
$cbr55 attach-agent $udp103
$cbr55 set packetSize_ 1000
$cbr55 set rate_ 1.0Mb
$cbr55 set random_ null
$ns at 99.0 "$cbr55 start"
$ns at 100.0 "$cbr55 stop"


#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam NewWired60Node.nam &
    exit 0
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
