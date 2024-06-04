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
// CREATED		"Tue Jun 09 15:38:01 2020"

module diagram(
	p,
	h,
	t,
	m,
	ac
);


input wire	p;
input wire	h;
input wire	t;
input wire	m;
output wire	ac;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





Normal	b2v_inst(
	.p(p),
	.t(t),
	.h(h),
	.e(SYNTHESIZED_WIRE_0));


Powersaving	b2v_inst1(
	.p(p),
	.h(h),
	.t(t),
	.f(SYNTHESIZED_WIRE_1));


Modes	b2v_inst2(
	.e(SYNTHESIZED_WIRE_0),
	.f(SYNTHESIZED_WIRE_1),
	.m(m),
	.ac(ac));


endmodule
