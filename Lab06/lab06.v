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
// CREATED		"Tue Jun 23 21:49:36 2020"

module lab06(
	select,
	decode1,
	decode2,
	decode1out,
	decode2out,
	decode3out,
	decode4out
);


input wire	select;
input wire	[3:0] decode1;
input wire	[3:0] decode2;
output wire	[6:0] decode1out;
output wire	[6:0] decode2out;
output wire	[6:0] decode3out;
output wire	[6:0] decode4out;

wire	[3:0] line1;
wire	[3:0] line2;
wire	[3:0] line3;
wire	[3:0] line4;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





adder_4bit	b2v_inst(
	.X3(line1[3]),
	.Y3(line2[3]),
	.X2(line1[2]),
	.Y2(line2[2]),
	.X1(line1[1]),
	.Y1(line2[1]),
	.X0(line1[0]),
	.Y0(line2[0]),
	.Ci(select),
	.S0(SYNTHESIZED_WIRE_4),
	.S1(SYNTHESIZED_WIRE_3),
	.S2(SYNTHESIZED_WIRE_2),
	.S3(SYNTHESIZED_WIRE_1),
	.Co(SYNTHESIZED_WIRE_0));


seven_seg_decoder	b2v_inst10(
	.in(line2),
	.out(decode2out));


seven_seg_decoder	b2v_inst11(
	.in(line3),
	.out(decode3out));


seven_seg_decoder	b2v_inst12(
	.in(line4),
	.out(decode4out));


bcdconvert	b2v_inst7(
	.c0(SYNTHESIZED_WIRE_0),
	.s3(SYNTHESIZED_WIRE_1),
	.s2(SYNTHESIZED_WIRE_2),
	.s1(SYNTHESIZED_WIRE_3),
	.s0(SYNTHESIZED_WIRE_4),
	.n2x0(line3[0]),
	.n2x1(line3[1]),
	.n2x2(line3[2]),
	.n2x3(line3[3]),
	.n1x0(line4[0]),
	.n1x1(line4[1]),
	.n1x2(line4[2]),
	.n1x3(line4[3]));


seven_seg_decoder	b2v_inst9(
	.in(line1),
	.out(decode1out));

assign	line1 = decode1;
assign	line2 = decode2;

endmodule
