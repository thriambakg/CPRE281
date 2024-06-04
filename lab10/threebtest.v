// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Thu Jul 02 16:49:41 2020"

module threebtest(
	in,
	clock,
	set,
	out
);


input wire	in;
input wire	clock;
input wire	set;
output wire	[6:0] out;

wire	[3:0] bus;





seven_seg_decoder	b2v_ckjb(
	.in(bus),
	.out(out));


question3b	b2v_inst(
	.in(in),
	.clock(clock),
	.clr(set),
	.q1(bus[0]),
	.q3(bus[2]),
	.q4(bus[3]),
	.q2(bus[1]));


endmodule
