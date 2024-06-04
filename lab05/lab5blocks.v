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
// CREATED		"Tue Jun 16 16:36:36 2020"

module lab5blocks(
	seg1,
	seg2,
	seg3,
	seg4,
	out1,
	out2,
	out3,
	out4
);


input wire	[3:0] seg1;
input wire	[3:0] seg2;
input wire	[3:0] seg3;
input wire	[3:0] seg4;
output wire	[6:0] out1;
output wire	[6:0] out2;
output wire	[6:0] out3;
output wire	[6:0] out4;






seven_seg_decoder	b2v_inst(
	.in(seg1),
	.out(out1));


seven_seg_decoder	b2v_inst2(
	.in(seg2),
	.out(out2));


seven_seg_decoder	b2v_inst3(
	.in(seg3),
	.out(out3));


seven_seg_decoder	b2v_inst4(
	.in(seg4),
	.out(out4));


endmodule
