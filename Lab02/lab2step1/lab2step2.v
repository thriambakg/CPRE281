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
// CREATED		"Thu May 28 16:41:56 2020"

module lab2step2(
	Goat0,
	Cabbage0,
	Wolf0,
	Wolf1,
	Cabbage1,
	Goat1,
	Alarm
);


input wire	Goat0;
input wire	Cabbage0;
input wire	Wolf0;
input wire	Wolf1;
input wire	Cabbage1;
input wire	Goat1;
output wire	Alarm;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;




assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_0 & Goat1 & Wolf1;

assign	SYNTHESIZED_WIRE_0 =  ~Cabbage1;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_1 & Goat0 & Wolf0;

assign	SYNTHESIZED_WIRE_6 = Cabbage0 & Goat0 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_8 = Cabbage1 & Goat1 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_1 =  ~Cabbage0;

assign	Alarm = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_2 =  ~Wolf0;

assign	SYNTHESIZED_WIRE_3 =  ~Wolf1;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;


endmodule
