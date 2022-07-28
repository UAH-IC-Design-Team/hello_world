v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -220 60 -200 {
lab=GND}
N 160 -220 160 -200 {
lab=GND}
N 730 -300 760 -300 {
lab=VDD}
N 730 -280 760 -280 {
lab=VSS}
N 360 -80 360 -60 {
lab=GND}
N 730 -260 760 -260 {
lab=Q_n}
N 410 -300 430 -300 {
lab=Q}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {hello_world.sym} 580 -280 0 0 {name=x1}
C {devices/code.sym} 10 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 160 -130 0 0 {name=SPICE 
only_toplevel=true
value=".options acct list
.temp 25
*vvcc VDD 0 dc 1.8
*vvss VSS 0 0
.control
*tran 0.1u 60u
dc V2 0 1.8 1m
*plot RST_PLS clk+2 Pulse+4
plot Q Q_n
write hello_world_test.raw
.endc
"}
C {devices/vsource.sym} 60 -250 0 0 {name=V3 value="1.8V"
}
C {devices/gnd.sym} 60 -200 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 60 -280 0 0 {name=l15 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 160 -250 0 0 {name=V4 value=0
}
C {devices/gnd.sym} 160 -200 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 160 -280 0 0 {name=l17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 760 -300 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 760 -280 2 0 {name=l3 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 360 -110 0 0 {name=V2 value="PULSE 0 1.8V 0 1ns 1ns 10us 20us"
}
C {devices/gnd.sym} 360 -60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 360 -140 0 0 {name=l7 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} 410 -300 0 0 {name=l4 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} 760 -260 2 0 {name=l5 sig_type=std_logic lab=Q_n
}
