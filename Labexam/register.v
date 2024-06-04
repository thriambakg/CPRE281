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
// CREATED		"Mon Jul 06 21:02:53 2020"

module \1bitreg (
	Load,
	Clock,
	Clrn,
	In,
	out
);


input wire	Load;
input wire	Clock;
input wire	Clrn;
input wire	In;
output wire	out;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	out = DFF_inst;




always@(posedge Clock or negedge Clrn or negedge Clrn)
begin
if (!Clrn)
	begin
	DFF_inst <= 0;
	end
else
if (!Clrn)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_3 = ~(In & Load);

assign	SYNTHESIZED_WIRE_2 = ~(DFF_inst & SYNTHESIZED_WIRE_1);

assign	SYNTHESIZED_WIRE_0 = ~(SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3);

assign	SYNTHESIZED_WIRE_1 =  ~Load;


endmodule
