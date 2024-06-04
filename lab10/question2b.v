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
// CREATED		"Thu Jul 02 15:44:18 2020"

module question2b(
	Clear,
	prn,
	clock,
	in,
	q1,
	q2,
	q3,
	q4
);


input wire	Clear;
input wire	prn;
input wire	clock;
input wire	in;
output wire	q1;
output wire	q2;
output wire	q3;
output reg	q4;

reg	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
reg	TFF_inst2;
reg	TFF_inst3;

assign	q1 = SYNTHESIZED_WIRE_3;
assign	q2 = TFF_inst2;
assign	q3 = TFF_inst3;




always@(posedge clock or negedge Clear or negedge prn)
begin
if (!Clear)
	begin
	SYNTHESIZED_WIRE_3 <= 0;
	end
else
if (!prn)
	begin
	SYNTHESIZED_WIRE_3 <= 1;
	end
else
	SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_3 ^ in;
end


always@(posedge clock or negedge Clear or negedge prn)
begin
if (!Clear)
	begin
	TFF_inst2 <= 0;
	end
else
if (!prn)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_3;
end


always@(posedge clock or negedge Clear or negedge prn)
begin
if (!Clear)
	begin
	TFF_inst3 <= 0;
	end
else
if (!prn)
	begin
	TFF_inst3 <= 1;
	end
else
	TFF_inst3 <= TFF_inst3 ^ SYNTHESIZED_WIRE_4;
end


always@(posedge clock or negedge Clear or negedge prn)
begin
if (!Clear)
	begin
	q4 <= 0;
	end
else
if (!prn)
	begin
	q4 <= 1;
	end
else
	q4 <= q4 ^ SYNTHESIZED_WIRE_1;
end

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_3 & TFF_inst2;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_4 & TFF_inst3;


endmodule
