module uncle_bob_original(w,x,y,z,out);
input w,x,y,z;
output out;
//first 4 nands attached to inputs
nand(nandw,w,w);
nand(nandx,x,x);
nand(nandy,y,y);
nand(nandz,z,z);

//middle 3 nands (top to bottom)
nand(nand1,x,nandy,z);
nand(nand2,w,y,z);
nand(nand3,nandz,nandw,nandx,y);

//final nand

nand(out,nand1,nand2,nand3);


endmodule;
