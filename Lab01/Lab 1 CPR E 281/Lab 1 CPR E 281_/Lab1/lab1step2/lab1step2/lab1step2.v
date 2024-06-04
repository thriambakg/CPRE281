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
// CREATED		"Mon May 18 15:05:31 2020"

module lab1step2(
	W,
	X,
	Y,
	Z
);


input wire	W;
input wire	X;
input wire	Y;
output wire	Z;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;




assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_0 & X & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_4 = W & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_5 = W & X & Y;

assign	Z = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_2 =  ~X;

assign	SYNTHESIZED_WIRE_0 =  ~W;

assign	SYNTHESIZED_WIRE_7 =  ~Y;


endmodule
