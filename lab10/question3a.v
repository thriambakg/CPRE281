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
// CREATED		"Thu Jul 02 16:45:49 2020"

module question3a(
	clock,
	in,
	clear,
	q1,
	q2,
	q3,
	q4
);


input wire	clock;
input wire	in;
input wire	clear;
output wire	q1;
output wire	q2;
output wire	q3;
output reg	q4;

reg	TFF_inst;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
reg	TFF_inst1;
reg	TFF_inst2;

assign	q1 = TFF_inst;
assign	q2 = TFF_inst1;
assign	q3 = TFF_inst2;



assign	SYNTHESIZED_WIRE_0 =  ~TFF_inst;


always@(posedge clock or negedge clear or negedge clear)
begin
if (!clear)
	begin
	TFF_inst <= 0;
	end
else
if (!clear)
	begin
	TFF_inst <= 1;
	end
else
	TFF_inst <= TFF_inst ^ in;
end


always@(posedge SYNTHESIZED_WIRE_0 or negedge clear or negedge clear)
begin
if (!clear)
	begin
	TFF_inst1 <= 0;
	end
else
if (!clear)
	begin
	TFF_inst1 <= 1;
	end
else
	TFF_inst1 <= TFF_inst1 ^ in;
end


always@(posedge SYNTHESIZED_WIRE_1 or negedge clear or negedge clear)
begin
if (!clear)
	begin
	TFF_inst2 <= 0;
	end
else
if (!clear)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ in;
end


always@(posedge SYNTHESIZED_WIRE_2 or negedge clear or negedge clear)
begin
if (!clear)
	begin
	q4 <= 0;
	end
else
if (!clear)
	begin
	q4 <= 1;
	end
else
	q4 <= q4 ^ in;
end

assign	SYNTHESIZED_WIRE_1 =  ~TFF_inst1;

assign	SYNTHESIZED_WIRE_2 =  ~TFF_inst2;


endmodule
