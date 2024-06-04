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
// CREATED		"Thu Jun 11 18:07:22 2020"

module Block1(
	w,
	x,
	y,
	z,
	out
);


input wire	w;
input wire	x;
input wire	y;
input wire	z;
output wire	out;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;




assign	SYNTHESIZED_WIRE_8 = ~(x & SYNTHESIZED_WIRE_0 & z);

assign	SYNTHESIZED_WIRE_10 = ~(SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_15 & y);

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_14 & x & y & z;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_15 & y & z;

assign	SYNTHESIZED_WIRE_9 = ~(w & SYNTHESIZED_WIRE_15 & z & y);

assign	SYNTHESIZED_WIRE_14 = ~(w & w);

assign	SYNTHESIZED_WIRE_15 = ~(x & x);

assign	SYNTHESIZED_WIRE_0 = ~(y & y);

assign	SYNTHESIZED_WIRE_2 = ~(z & z);

assign	SYNTHESIZED_WIRE_13 = ~(SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_10);

assign	out = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13;


endmodule
