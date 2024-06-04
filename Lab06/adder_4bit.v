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
// CREATED		"Tue Jun 23 21:45:58 2020"

module adder_4bit(
	X3,
	Y3,
	X2,
	Y2,
	X1,
	Y1,
	X0,
	Y0,
	Ci,
	S3,
	Co,
	S2,
	S1,
	S0
);


input wire	X3;
input wire	Y3;
input wire	X2;
input wire	Y2;
input wire	X1;
input wire	Y1;
input wire	X0;
input wire	Y0;
input wire	Ci;
output wire	S3;
output wire	Co;
output wire	S2;
output wire	S1;
output wire	S0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





full_adder	b2v_inst(
	.X(X3),
	.Y(Y3),
	.Ci(SYNTHESIZED_WIRE_0),
	.SUM(S3),
	.Co(Co));


full_adder	b2v_inst6(
	.X(X2),
	.Y(Y2),
	.Ci(SYNTHESIZED_WIRE_1),
	.SUM(S2),
	.Co(SYNTHESIZED_WIRE_0));


full_adder	b2v_inst7(
	.X(X1),
	.Y(Y1),
	.Ci(SYNTHESIZED_WIRE_2),
	.SUM(S1),
	.Co(SYNTHESIZED_WIRE_1));


full_adder	b2v_inst8(
	.X(X0),
	.Y(Y0),
	.Ci(Ci),
	.SUM(S0),
	.Co(SYNTHESIZED_WIRE_2));


endmodule
