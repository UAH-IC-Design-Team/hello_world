v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 430 -270 430 -240 {
lab=Q_n}
N 350 -250 370 -250 {
lab=Q}
N 370 -300 390 -300 {
lab=Q}
N 370 -300 370 -250 {
lab=Q}
N 370 -250 370 -210 {
lab=Q}
N 430 -250 520 -250 {
lab=Q_n}
N 370 -210 370 -200 {
lab=Q}
N 370 -200 390 -200 {
lab=Q}
N 430 -240 430 -230 {
lab=Q_n}
N 430 -170 430 -140 {
lab=VSS}
N 430 -370 430 -330 {
lab=VDD}
N 430 -200 490 -200 {
lab=VSS}
N 430 -300 490 -300 {
lab=VSS}
C {devices/title.sym} 170 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/pfet_01v8.sym} 410 -300 0 0 {name=M1
L=0.15
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -200 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 140 -280 0 0 {name=p1 lab=Q
}
C {devices/opin.sym} 100 -250 0 0 {name=p2 lab=Q_n
}
C {devices/iopin.sym} 180 -280 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 180 -250 0 0 {name=p4 lab=VSS
}
C {devices/lab_pin.sym} 350 -250 0 0 {name=l2 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} 520 -250 2 0 {name=l3 sig_type=std_logic lab=Q_n
}
C {devices/lab_pin.sym} 430 -140 0 0 {name=l4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 430 -370 0 0 {name=l5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 490 -200 2 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 490 -300 2 0 {name=l7 sig_type=std_logic lab=VSS
}
