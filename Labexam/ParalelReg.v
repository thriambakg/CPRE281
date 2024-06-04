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
// CREATED		"Thu Jul 09 13:58:37 2020"

module ParalelReg(
	EN,
	CLK,
	CLRN,
	In,
	OUT
);


input wire	EN;
input wire	CLK;
input wire	CLRN;
input wire	[3:0] In;
output wire	[3:0] OUT;

wire	[3:0] OUT_ALTERA_SYNTHESIZED;





onebitreg	b2v_inst(
	.In(In[3]),
	.LOAD(EN),
	.CLk(CLK),
	.CLRN(CLRN),
	.OUT(OUT_ALTERA_SYNTHESIZED[3]));


onebitreg	b2v_inst2(
	.In(In[2]),
	.LOAD(EN),
	.CLk(CLK),
	.CLRN(CLRN),
	.OUT(OUT_ALTERA_SYNTHESIZED[2]));


onebitreg	b2v_inst3(
	.In(In[1]),
	.LOAD(EN),
	.CLk(CLK),
	.CLRN(CLRN),
	.OUT(OUT_ALTERA_SYNTHESIZED[1]));


onebitreg	b2v_inst4(
	.In(In[0]),
	.LOAD(EN),
	.CLk(CLK),
	.CLRN(CLRN),
	.OUT(OUT_ALTERA_SYNTHESIZED[0]));

assign	OUT = OUT_ALTERA_SYNTHESIZED;

endmodule
