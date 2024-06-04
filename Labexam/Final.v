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
// CREATED		"Thu Jul 09 14:40:33 2020"

module Final(
	CTRL,
	WR,
	CLK,
	CLRN,
	RP2,
	RP1,
	RP0,
	RQ2,
	RQ1,
	RQ0,
	WA2,
	WA1,
	WA0,
	SEL,
	LD_DATA,
	COUT,
	P,
	Q
);


input wire	CTRL;
input wire	WR;
input wire	CLK;
input wire	CLRN;
input wire	RP2;
input wire	RP1;
input wire	RP0;
input wire	RQ2;
input wire	RQ1;
input wire	RQ0;
input wire	WA2;
input wire	WA1;
input wire	WA0;
input wire	SEL;
input wire	[3:0] LD_DATA;
output wire	COUT;
output wire	[6:0] P;
output wire	[6:0] Q;

wire	[3:0] S;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;





regfile	b2v_inst(
	.RP2(RP2),
	.RP1(RP1),
	.RP0(RP0),
	.RQ2(RQ2),
	.RQ1(RQ1),
	.RQ0(RQ0),
	.WA2(WA2),
	.WA1(WA1),
	.WA0(WA0),
	.WR(WR),
	.CLRN(CLRN),
	.CLK(CLK),
	.LD_DATA(SYNTHESIZED_WIRE_0),
	.DATAP3(SYNTHESIZED_WIRE_17),
	.DATAP2(SYNTHESIZED_WIRE_19),
	.DATAP1(SYNTHESIZED_WIRE_21),
	.DATAP0(SYNTHESIZED_WIRE_23),
	.DATAQ3(SYNTHESIZED_WIRE_18),
	.DATAQ2(SYNTHESIZED_WIRE_20),
	.DATAQ1(SYNTHESIZED_WIRE_22),
	.DATAQ0(SYNTHESIZED_WIRE_24));


adder_4bit	b2v_inst1(
	.X3(SYNTHESIZED_WIRE_17),
	.Y3(SYNTHESIZED_WIRE_18),
	.X2(SYNTHESIZED_WIRE_19),
	.Y2(SYNTHESIZED_WIRE_20),
	.X1(SYNTHESIZED_WIRE_21),
	.Y1(SYNTHESIZED_WIRE_22),
	.X0(SYNTHESIZED_WIRE_23),
	.Y0(SYNTHESIZED_WIRE_24),
	.Ci(CTRL),
	.S0(S[0]),
	.S1(S[1]),
	.S2(S[2]),
	.S3(S[3]),
	.Co(COUT));


seven_seg_decoder	b2v_inst3(
	.x3(SYNTHESIZED_WIRE_17),
	.x2(SYNTHESIZED_WIRE_19),
	.x1(SYNTHESIZED_WIRE_21),
	.x0(SYNTHESIZED_WIRE_23),
	.out(P));


seven_seg_decoder	b2v_inst4(
	.x3(SYNTHESIZED_WIRE_18),
	.x2(SYNTHESIZED_WIRE_20),
	.x1(SYNTHESIZED_WIRE_22),
	.x0(SYNTHESIZED_WIRE_24),
	.out(Q));


busmux_0	b2v_inst8(
	.sel(SEL),
	.dataa(LD_DATA),
	.datab(S),
	.result(SYNTHESIZED_WIRE_0));


endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [3:0] dataa;
input [3:0] datab;
output [3:0] result;

endmodule
