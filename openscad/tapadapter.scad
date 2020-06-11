/////////////////////////////////////////////////////////////////////////////////
// Tap adapter M3/M4                                                           //
//                                                                             //
// Fits M3/M4 undersized tap in M5-M12 Ratchet tap wrench   KWB 443820         //
//                                                                             //    
// auth: Ousiris                                                               //
// date: 10jun20                                                               //
// version: V1                                                                 //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////

$fn=80;

module M3(){// KWB 443003 M3 HSS DIN352 M3 machine tap 
bh=6;       // bottom height
bs=2.65;    // bottom square rib
ch=5;       // cylindrical height
cd=3.42;    // cylindrical diameter
ocd=5;      // outer cylinder diameter
sw=0.4;     // compression slit width
tol=0.3;    // tolerance
build(bh,bs,ch,cd,ocd,sw,tol);    
};//</M3>

module M4(){//KWB 443004 M4 HSS DIN352 M4 machine tap                            
bh=7;       // bottom height
bs=3.3;     // bottom square rib
ch=6;       // cylindrical height
cd=4.45;    // cylindrical diameter
ocd=6;      // outer cylinder diameter
sw=0.4;     // compression slit width
tol=0.35;   // tolerance
build(bh,bs,ch,cd,ocd,sw,tol);    
};//</M4>



module build(bh,bs,ch,cd,ocd,sw,tol){
difference(){
    linear_extrude(bh+ch)square(ocd,center=true);
    linear_extrude(bh)square(bs+tol,center=true );
    translate([0,0,bh])linear_extrude(ch)circle(d=(cd+2.5*tol));
    linear_extrude(20)translate([0,-sw/2])square([10,sw],center=false);
    }
};//</build>

// Uncomment to enable desired tap size
M3();
//M4();