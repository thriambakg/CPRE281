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
// CREATED		"Thu Jun 25 14:29:58 2020"

module lab08(
	x0,
	x1,
	x2,
	x3,
	x_1,
	x_2,
	x_3,
	switch,
	F
);


input wire	x0;
input wire	x1;
input wire	x2;
input wire	x3;
input wire	x_1;
input wire	x_2;
input wire	x_3;
input wire	[1:0] switch;
output wire	[3:0] F;

wire	[3:0] F_ALTERA_SYNTHESIZED;





mux4to1	b2v_inst(
	.w3(x0),
	.w2(x1),
	.w1(x2),
	.w0(x3),
	.s(switch),
	.O(F_ALTERA_SYNTHESIZED[3]));


mux4to1	b2v_inst1(
	.w3(x_1),
	.w2(x0),
	.w1(x1),
	.w0(x2),
	.s(switch),
	.O(F_ALTERA_SYNTHESIZED[2]));


mux4to1	b2v_inst2(
	.w3(x_2),
	.w2(x_1),
	.w1(x0),
	.w0(x1),
	.s(switch),
	.O(F_ALTERA_SYNTHESIZED[1]));


mux4to1	b2v_inst3(
	.w3(x_3),
	.w2(x_2),
	.w1(x_1),
	.w0(x0),
	.s(switch),
	.O(F_ALTERA_SYNTHESIZED[0]));

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
