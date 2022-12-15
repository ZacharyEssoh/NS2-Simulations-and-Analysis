
#===================================
#     Simulation parameters setup
#===================================
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     60                         ;# number of mobilenodes
set val(rp)     DSDV                       ;# routing protocol
set val(x)      1436                      ;# X dimension of topography
set val(y)      1249                      ;# Y dimension of topography
set val(stop)   100.9                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open NewWireless60Node.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open NewWireless60Node.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel

#===================================
#     Mobile node parameter setup
#===================================
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#===================================
#        Nodes Definition        
#===================================
#Create 60 nodes
set n0 [$ns node]
$n0 set X_ 603
$n0 set Y_ 441
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 723
$n1 set Y_ 441
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 843
$n2 set Y_ 441
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 963
$n3 set Y_ 441
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 1083
$n4 set Y_ 441
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 1203
$n5 set Y_ 441
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 1323
$n6 set Y_ 441
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 1443
$n7 set Y_ 441
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 603
$n8 set Y_ 321
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 723
$n9 set Y_ 321
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 843
$n10 set Y_ 321
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 963
$n11 set Y_ 321
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 1083
$n12 set Y_ 321
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 1203
$n13 set Y_ 321
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 1323
$n14 set Y_ 321
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 1443
$n15 set Y_ 321
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 603
$n16 set Y_ 201
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 723
$n17 set Y_ 201
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 843
$n18 set Y_ 201
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 963
$n19 set Y_ 201
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 1083
$n20 set Y_ 201
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$n21 set X_ 1203
$n21 set Y_ 201
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$n22 set X_ 1323
$n22 set Y_ 201
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$n23 set X_ 1443
$n23 set Y_ 201
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$n24 set X_ 603
$n24 set Y_ 81
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$n25 set X_ 723
$n25 set Y_ 81
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$n26 set X_ 843
$n26 set Y_ 81
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$n27 set X_ 963
$n27 set Y_ 81
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$n28 set X_ 1083
$n28 set Y_ 81
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$n29 set X_ 1203
$n29 set Y_ 81
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20
set n30 [$ns node]
$n30 set X_ 1323
$n30 set Y_ 81
$n30 set Z_ 0.0
$ns initial_node_pos $n30 20
set n31 [$ns node]
$n31 set X_ 1443
$n31 set Y_ 81
$n31 set Z_ 0.0
$ns initial_node_pos $n31 20
set n32 [$ns node]
$n32 set X_ 603
$n32 set Y_ -39
$n32 set Z_ 0.0
$ns initial_node_pos $n32 20
set n33 [$ns node]
$n33 set X_ 723
$n33 set Y_ -39
$n33 set Z_ 0.0
$ns initial_node_pos $n33 20
set n34 [$ns node]
$n34 set X_ 843
$n34 set Y_ -39
$n34 set Z_ 0.0
$ns initial_node_pos $n34 20
set n35 [$ns node]
$n35 set X_ 963
$n35 set Y_ -39
$n35 set Z_ 0.0
$ns initial_node_pos $n35 20
set n36 [$ns node]
$n36 set X_ 1083
$n36 set Y_ -39
$n36 set Z_ 0.0
$ns initial_node_pos $n36 20
set n37 [$ns node]
$n37 set X_ 1203
$n37 set Y_ -39
$n37 set Z_ 0.0
$ns initial_node_pos $n37 20
set n38 [$ns node]
$n38 set X_ 1323
$n38 set Y_ -39
$n38 set Z_ 0.0
$ns initial_node_pos $n38 20
set n39 [$ns node]
$n39 set X_ 1443
$n39 set Y_ -39
$n39 set Z_ 0.0
$ns initial_node_pos $n39 20
set n40 [$ns node]
$n40 set X_ 603
$n40 set Y_ -159
$n40 set Z_ 0.0
$ns initial_node_pos $n40 20
set n41 [$ns node]
$n41 set X_ 723
$n41 set Y_ -159
$n41 set Z_ 0.0
$ns initial_node_pos $n41 20
set n42 [$ns node]
$n42 set X_ 843
$n42 set Y_ -159
$n42 set Z_ 0.0
$ns initial_node_pos $n42 20
set n43 [$ns node]
$n43 set X_ 963
$n43 set Y_ -159
$n43 set Z_ 0.0
$ns initial_node_pos $n43 20
set n44 [$ns node]
$n44 set X_ 1083
$n44 set Y_ -159
$n44 set Z_ 0.0
$ns initial_node_pos $n44 20
set n45 [$ns node]
$n45 set X_ 1203
$n45 set Y_ -159
$n45 set Z_ 0.0
$ns initial_node_pos $n45 20
set n46 [$ns node]
$n46 set X_ 1323
$n46 set Y_ -159
$n46 set Z_ 0.0
$ns initial_node_pos $n46 20
set n47 [$ns node]
$n47 set X_ 1443
$n47 set Y_ -159
$n47 set Z_ 0.0
$ns initial_node_pos $n47 20
set n48 [$ns node]
$n48 set X_ 603
$n48 set Y_ -279
$n48 set Z_ 0.0
$ns initial_node_pos $n48 20
set n49 [$ns node]
$n49 set X_ 723
$n49 set Y_ -279
$n49 set Z_ 0.0
$ns initial_node_pos $n49 20
set n50 [$ns node]
$n50 set X_ 843
$n50 set Y_ -279
$n50 set Z_ 0.0
$ns initial_node_pos $n50 20
set n51 [$ns node]
$n51 set X_ 963
$n51 set Y_ -279
$n51 set Z_ 0.0
$ns initial_node_pos $n51 20
set n52 [$ns node]
$n52 set X_ 1083
$n52 set Y_ -279
$n52 set Z_ 0.0
$ns initial_node_pos $n52 20
set n53 [$ns node]
$n53 set X_ 1203
$n53 set Y_ -279
$n53 set Z_ 0.0
$ns initial_node_pos $n53 20
set n54 [$ns node]
$n54 set X_ 1323
$n54 set Y_ -279
$n54 set Z_ 0.0
$ns initial_node_pos $n54 20
set n55 [$ns node]
$n55 set X_ 1443
$n55 set Y_ -279
$n55 set Z_ 0.0
$ns initial_node_pos $n55 20
set n56 [$ns node]
$n56 set X_ 603
$n56 set Y_ -399
$n56 set Z_ 0.0
$ns initial_node_pos $n56 20
set n57 [$ns node]
$n57 set X_ 723
$n57 set Y_ -399
$n57 set Z_ 0.0
$ns initial_node_pos $n57 20
set n58 [$ns node]
$n58 set X_ 843
$n58 set Y_ -399
$n58 set Z_ 0.0
$ns initial_node_pos $n58 20
set n59 [$ns node]
$n59 set X_ 963
$n59 set Y_ -399
$n59 set Z_ 0.0
$ns initial_node_pos $n59 20

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
$ns at 1.2 "$cbr0 stop"

#Setup a CBR Application over UDP connection
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 1.0Mb
$cbr1 set random_ null
$ns at 0.8 "$cbr1 start"
$ns at 1.5 "$cbr1 stop"

#Setup a CBR Application over UDP connection
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp2
$cbr2 set packetSize_ 1000
$cbr2 set rate_ 1.0Mb
$cbr2 set random_ 
$ns at 0.9 "$cbr2 start"
$ns at 1.7 "$cbr2 stop"

#Setup a CBR Application over UDP connection
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
$cbr3 set packetSize_ 1000
$cbr3 set rate_ 1.0Mb
$cbr3 set random_ null
$ns at 1.8 "$cbr3 start"
$ns at 2.3 "$cbr3 stop"

#Setup a CBR Application over UDP connection
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp4
$cbr4 set packetSize_ 1000
$cbr4 set rate_ 1.0Mb
$cbr4 set random_ null
$ns at 2.4 "$cbr4 start"
$ns at 2.6 "$cbr4 stop"

#Setup a CBR Application over UDP connection
set cbr5 [new Application/Traffic/CBR]
$cbr5 attach-agent $udp5
$cbr5 set packetSize_ 1000
$cbr5 set rate_ 1.0Mb
$cbr5 set random_ null
$ns at 2.6 "$cbr5 start"
$ns at 3.1 "$cbr5 stop"

#Setup a CBR Application over UDP connection
set cbr6 [new Application/Traffic/CBR]
$cbr6 attach-agent $udp6
$cbr6 set packetSize_ 1000
$cbr6 set rate_ 1.0Mb
$cbr6 set random_ null
$ns at 3.2 "$cbr6 start"
$ns at 3.8 "$cbr6 stop"

#Setup a CBR Application over UDP connection
set cbr7 [new Application/Traffic/CBR]
$cbr7 attach-agent $udp7
$cbr7 set packetSize_ 1000
$cbr7 set rate_ 1.0Mb
$cbr7 set random_ null
$ns at 3.9 "$cbr7 start"
$ns at 4.3 "$cbr7 stop"

#Setup a CBR Application over UDP connection
set cbr8 [new Application/Traffic/CBR]
$cbr8 attach-agent $udp16
$cbr8 set packetSize_ 1000
$cbr8 set rate_ 1.0Mb
$cbr8 set random_ 
$ns at 4.4 "$cbr8 start"
$ns at 5.2 "$cbr8 stop"

#Setup a CBR Application over UDP connection
set cbr10 [new Application/Traffic/CBR]
$cbr10 attach-agent $udp17
$cbr10 set packetSize_ 1000
$cbr10 set rate_ 1.0Mb
$cbr10 set random_ null
$ns at 5.3 "$cbr10 start"
$ns at 5.8 "$cbr10 stop"

#Setup a CBR Application over UDP connection
set cbr11 [new Application/Traffic/CBR]
$cbr11 attach-agent $udp18
$cbr11 set packetSize_ 1000
$cbr11 set rate_ 1.0Mb
$cbr11 set random_ null
$ns at 5.9 "$cbr11 start"
$ns at 6.3 "$cbr11 stop"

#Setup a CBR Application over UDP connection
set cbr12 [new Application/Traffic/CBR]
$cbr12 attach-agent $udp19
$cbr12 set packetSize_ 1000
$cbr12 set rate_ 1.0Mb
$cbr12 set random_ null
$ns at 6.4 "$cbr12 start"
$ns at 6.9 "$cbr12 stop"

#Setup a CBR Application over UDP connection
set cbr13 [new Application/Traffic/CBR]
$cbr13 attach-agent $udp20
$cbr13 set packetSize_ 1000
$cbr13 set rate_ 1.0Mb
$cbr13 set random_ null
$ns at 7.0 "$cbr13 start"
$ns at 8.2 "$cbr13 stop"

#Setup a CBR Application over UDP connection
set cbr14 [new Application/Traffic/CBR]
$cbr14 attach-agent $udp21
$cbr14 set packetSize_ 1000
$cbr14 set rate_ 1.0Mb
$cbr14 set random_ null
$ns at 8.3 "$cbr14 start"
$ns at 8.9 "$cbr14 stop"

#Setup a CBR Application over UDP connection
set cbr15 [new Application/Traffic/CBR]
$cbr15 attach-agent $udp22
$cbr15 set packetSize_ 1000
$cbr15 set rate_ 1.0Mb
$cbr15 set random_ null
$ns at 9.0 "$cbr15 start"
$ns at 10.3 "$cbr15 stop"

#Setup a CBR Application over UDP connection
set cbr16 [new Application/Traffic/CBR]
$cbr16 attach-agent $udp23
$cbr16 set packetSize_ 1000
$cbr16 set rate_ 1.0Mb
$cbr16 set random_ null
$ns at 10.4 "$cbr16 start"
$ns at 11.3 "$cbr16 stop"

#Setup a CBR Application over UDP connection
set cbr17 [new Application/Traffic/CBR]
$cbr17 attach-agent $udp32
$cbr17 set packetSize_ 1000
$cbr17 set rate_ 1.0Mb
$cbr17 set random_ null
$ns at 11.4 "$cbr17 start"
$ns at 12.3 "$cbr17 stop"

#Setup a CBR Application over UDP connection
set cbr18 [new Application/Traffic/CBR]
$cbr18 attach-agent $udp33
$cbr18 set packetSize_ 1000
$cbr18 set rate_ 1.0Mb
$cbr18 set random_ null
$ns at 12.4 "$cbr18 start"
$ns at 13.3 "$cbr18 stop"

#Setup a CBR Application over UDP connection
set cbr19 [new Application/Traffic/CBR]
$cbr19 attach-agent $udp34
$cbr19 set packetSize_ 1000
$cbr19 set rate_ 1.0Mb
$cbr19 set random_ null
$ns at 13.4 "$cbr19 start"
$ns at 14.5 "$cbr19 stop"

#Setup a CBR Application over UDP connection
set cbr20 [new Application/Traffic/CBR]
$cbr20 attach-agent $udp35
$cbr20 set packetSize_ 1000
$cbr20 set rate_ 1.0Mb
$cbr20 set random_ null
$ns at 14.6 "$cbr20 start"
$ns at 15.3 "$cbr20 stop"

#Setup a CBR Application over UDP connection
set cbr21 [new Application/Traffic/CBR]
$cbr21 attach-agent $udp36
$cbr21 set packetSize_ 1000
$cbr21 set rate_ 1.0Mb
$cbr21 set random_ null
$ns at 15.4 "$cbr21 start"
$ns at 16.6 "$cbr21 stop"

#Setup a CBR Application over UDP connection
set cbr22 [new Application/Traffic/CBR]
$cbr22 attach-agent $udp37
$cbr22 set packetSize_ 1000
$cbr22 set rate_ 1.0Mb
$cbr22 set random_ null
$ns at 16.7 "$cbr22 start"
$ns at 17.4 "$cbr22 stop"

#Setup a CBR Application over UDP connection
set cbr23 [new Application/Traffic/CBR]
$cbr23 attach-agent $udp38
$cbr23 set packetSize_ 1000
$cbr23 set rate_ 1.0Mb
$cbr23 set random_ null
$ns at 17.5 "$cbr23 start"
$ns at 18.3 "$cbr23 stop"

#Setup a CBR Application over UDP connection
set cbr24 [new Application/Traffic/CBR]
$cbr24 attach-agent $udp39
$cbr24 set packetSize_ 1000
$cbr24 set rate_ 1.0Mb
$cbr24 set random_ null
$ns at 18.4 "$cbr24 start"
$ns at 20.0 "$cbr24 stop"

#Setup a CBR Application over UDP connection
set cbr25 [new Application/Traffic/CBR]
$cbr25 attach-agent $udp48
$cbr25 set packetSize_ 1000
$cbr25 set rate_ 1.0Mb
$cbr25 set random_ null
$ns at 21.0 "$cbr25 start"
$ns at 22.0 "$cbr25 stop"

#Setup a CBR Application over UDP connection
set cbr26 [new Application/Traffic/CBR]
$cbr26 attach-agent $udp49
$cbr26 set packetSize_ 1000
$cbr26 set rate_ 1.0Mb
$cbr26 set random_ null
$ns at 22.2 "$cbr26 start"
$ns at 24.0 "$cbr26 stop"

#Setup a CBR Application over UDP connection
set cbr27 [new Application/Traffic/CBR]
$cbr27 attach-agent $udp50
$cbr27 set packetSize_ 1000
$cbr27 set rate_ 1.0Mb
$cbr27 set random_ null
$ns at 24.0 "$cbr27 start"
$ns at 26.0 "$cbr27 stop"

#Setup a CBR Application over UDP connection
set cbr28 [new Application/Traffic/CBR]
$cbr28 attach-agent $udp51
$cbr28 set packetSize_ 1000
$cbr28 set rate_ 1.0Mb
$cbr28 set random_ null
$ns at 26.0 "$cbr28 start"
$ns at 28.3 "$cbr28 stop"

#Setup a CBR Application over UDP connection
set cbr29 [new Application/Traffic/CBR]
$cbr29 attach-agent $udp52
$cbr29 set packetSize_ 1000
$cbr29 set rate_ 1.0Mb
$cbr29 set random_ null
$ns at 28.4 "$cbr29 start"
$ns at 30.1 "$cbr29 stop"

#Setup a CBR Application over UDP connection
set cbr30 [new Application/Traffic/CBR]
$cbr30 attach-agent $udp53
$cbr30 set packetSize_ 1000
$cbr30 set rate_ 1.0Mb
$cbr30 set random_ null
$ns at 30.3 "$cbr30 start"
$ns at 32.4 "$cbr30 stop"

#Setup a CBR Application over UDP connection
set cbr31 [new Application/Traffic/CBR]
$cbr31 attach-agent $udp54
$cbr31 set packetSize_ 1000
$cbr31 set rate_ 1.0Mb
$cbr31 set random_ null
$ns at 32.5 "$cbr31 start"
$ns at 34.0 "$cbr31 stop"

#Setup a CBR Application over UDP connection
set cbr32 [new Application/Traffic/CBR]
$cbr32 attach-agent $udp55
$cbr32 set packetSize_ 1000
$cbr32 set rate_ 1.0Mb
$cbr32 set random_ null
$ns at 34.0 "$cbr32 start"
$ns at 37.0 "$cbr32 stop"

#Setup a CBR Application over UDP connection
set cbr33 [new Application/Traffic/CBR]
$cbr33 attach-agent $udp64
$cbr33 set packetSize_ 1000
$cbr33 set rate_ 1.0Mb
$cbr33 set random_ null
$ns at 38.0 "$cbr33 start"
$ns at 42.0 "$cbr33 stop"

#Setup a CBR Application over UDP connection
set cbr34 [new Application/Traffic/CBR]
$cbr34 attach-agent $udp65
$cbr34 set packetSize_ 1000
$cbr34 set rate_ 1.0Mb
$cbr34 set random_ null
$ns at 43.0 "$cbr34 start"
$ns at 45.0 "$cbr34 stop"

#Setup a CBR Application over UDP connection
set cbr35 [new Application/Traffic/CBR]
$cbr35 attach-agent $udp66
$cbr35 set packetSize_ 1000
$cbr35 set rate_ 1.0Mb
$cbr35 set random_ null
$ns at 45.0 "$cbr35 start"
$ns at 47.0 "$cbr35 stop"

#Setup a CBR Application over UDP connection
set cbr36 [new Application/Traffic/CBR]
$cbr36 attach-agent $udp67
$cbr36 set packetSize_ 1000
$cbr36 set rate_ 1.0Mb
$cbr36 set random_ null
$ns at 48.0 "$cbr36 start"
$ns at 52.0 "$cbr36 stop"

#Setup a CBR Application over UDP connection
set cbr37 [new Application/Traffic/CBR]
$cbr37 attach-agent $udp68
$cbr37 set packetSize_ 1000
$cbr37 set rate_ 1.0Mb
$cbr37 set random_ null
$ns at 53.0 "$cbr37 start"
$ns at 56.0 "$cbr37 stop"

#Setup a CBR Application over UDP connection
set cbr38 [new Application/Traffic/CBR]
$cbr38 attach-agent $udp69
$cbr38 set packetSize_ 1000
$cbr38 set rate_ 1.0Mb
$cbr38 set random_ null
$ns at 57.0 "$cbr38 start"
$ns at 61.0 "$cbr38 stop"

#Setup a CBR Application over UDP connection
set cbr39 [new Application/Traffic/CBR]
$cbr39 attach-agent $udp70
$cbr39 set packetSize_ 1000
$cbr39 set rate_ 1.0Mb
$cbr39 set random_ null
$ns at 61.0 "$cbr39 start"
$ns at 65.0 "$cbr39 stop"

#Setup a CBR Application over UDP connection
set cbr40 [new Application/Traffic/CBR]
$cbr40 attach-agent $udp71
$cbr40 set packetSize_ 1000
$cbr40 set rate_ 1.0Mb
$cbr40 set random_ null
$ns at 66.0 "$cbr40 start"
$ns at 69.0 "$cbr40 stop"

#Setup a CBR Application over UDP connection
set cbr41 [new Application/Traffic/CBR]
$cbr41 attach-agent $udp80
$cbr41 set packetSize_ 1000
$cbr41 set rate_ 1.0Mb
$cbr41 set random_ null
$ns at 70.0 "$cbr41 start"
$ns at 73.0 "$cbr41 stop"

#Setup a CBR Application over UDP connection
set cbr42 [new Application/Traffic/CBR]
$cbr42 attach-agent $udp81
$cbr42 set packetSize_ 1000
$cbr42 set rate_ 1.0Mb
$cbr42 set random_ 
$ns at 74.0 "$cbr42 start"
$ns at 77.0 "$cbr42 stop"

#Setup a CBR Application over UDP connection
set cbr43 [new Application/Traffic/CBR]
$cbr43 attach-agent $udp82
$cbr43 set packetSize_ 1000
$cbr43 set rate_ 1.0Mb
$cbr43 set random_ 
$ns at 78.0 "$cbr43 start"
$ns at 81.0 "$cbr43 stop"

#Setup a CBR Application over UDP connection
set cbr44 [new Application/Traffic/CBR]
$cbr44 attach-agent $udp83
$cbr44 set packetSize_ 1000
$cbr44 set rate_ 1.0Mb
$cbr44 set random_ null
$ns at 81.0 "$cbr44 start"
$ns at 83.0 "$cbr44 stop"

#Setup a CBR Application over UDP connection
set cbr45 [new Application/Traffic/CBR]
$cbr45 attach-agent $udp84
$cbr45 set packetSize_ 1000
$cbr45 set rate_ 1.0Mb
$cbr45 set random_ null
$ns at 83.0 "$cbr45 start"
$ns at 85.0 "$cbr45 stop"

#Setup a CBR Application over UDP connection
set cbr46 [new Application/Traffic/CBR]
$cbr46 attach-agent $udp85
$cbr46 set packetSize_ 1000
$cbr46 set rate_ 1.0Mb
$cbr46 set random_ null
$ns at 85.0 "$cbr46 start"
$ns at 88.0 "$cbr46 stop"

#Setup a CBR Application over UDP connection
set cbr47 [new Application/Traffic/CBR]
$cbr47 attach-agent $udp86
$cbr47 set packetSize_ 1000
$cbr47 set rate_ 1.0Mb
$cbr47 set random_ null
$ns at 89.0 "$cbr47 start"
$ns at 91.3 "$cbr47 stop"

#Setup a CBR Application over UDP connection
set cbr48 [new Application/Traffic/CBR]
$cbr48 attach-agent $udp87
$cbr48 set packetSize_ 1000
$cbr48 set rate_ 1.0Mb
$cbr48 set random_ null
$ns at 91.4 "$cbr48 start"
$ns at 93.0 "$cbr48 stop"

#Setup a CBR Application over UDP connection
set cbr49 [new Application/Traffic/CBR]
$cbr49 attach-agent $udp96
$cbr49 set packetSize_ 1000
$cbr49 set rate_ 1.0Mb
$cbr49 set random_ null
$ns at 93.0 "$cbr49 start"
$ns at 95.0 "$cbr49 stop"

#Setup a CBR Application over UDP connection
set cbr50 [new Application/Traffic/CBR]
$cbr50 attach-agent $udp97
$cbr50 set packetSize_ 1000
$cbr50 set rate_ 1.0Mb
$cbr50 set random_ null
$ns at 95.0 "$cbr50 start"
$ns at 97.0 "$cbr50 stop"

#Setup a CBR Application over UDP connection
set cbr51 [new Application/Traffic/CBR]
$cbr51 attach-agent $udp98
$cbr51 set packetSize_ 1000
$cbr51 set rate_ 1.0Mb
$cbr51 set random_ null
$ns at 96.0 "$cbr51 start"
$ns at 97.5 "$cbr51 stop"

#Setup a CBR Application over UDP connection
set cbr52 [new Application/Traffic/CBR]
$cbr52 attach-agent $udp99
$cbr52 set packetSize_ 1000
$cbr52 set rate_ 1.0Mb
$cbr52 set random_ null
$ns at 97.5 "$cbr52 start"
$ns at 98.3 "$cbr52 stop"

#Setup a CBR Application over UDP connection
set cbr53 [new Application/Traffic/CBR]
$cbr53 attach-agent $udp100
$cbr53 set packetSize_ 1000
$cbr53 set rate_ 1.0Mb
$cbr53 set random_ null
$ns at 98.3 "$cbr53 start"
$ns at 98.9 "$cbr53 stop"

#Setup a CBR Application over UDP connection
set cbr54 [new Application/Traffic/CBR]
$cbr54 attach-agent $udp101
$cbr54 set packetSize_ 1000
$cbr54 set rate_ 1.0Mb
$cbr54 set random_ null
$ns at 99.3 "$cbr54 start"
$ns at 99.7 "$cbr54 stop"

#Setup a CBR Application over UDP connection
set cbr55 [new Application/Traffic/CBR]
$cbr55 attach-agent $udp102
$cbr55 set packetSize_ 1000
$cbr55 set rate_ 1.0Mb
$cbr55 set random_ null
$ns at 99.7 "$cbr55 start"
$ns at 99.9 "$cbr55 stop"

#Setup a CBR Application over UDP connection
set cbr56 [new Application/Traffic/CBR]
$cbr56 attach-agent $udp103
$cbr56 set packetSize_ 1000
$cbr56 set rate_ 1.0Mb
$cbr56 set random_ null
$ns at 99.9 "$cbr56 start"
$ns at 100.5 "$cbr56 stop"


#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam NewWireless60Node.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
