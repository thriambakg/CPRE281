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
// CREATED		"Thu Jul 02 15:31:09 2020"

module question2a(
	clock,
	Clear,
	PRn,
	qa,
	qb,
	q3,
	q4
);


input wire	clock;
input wire	Clear;
input wire	PRn;
output wire	qa;
output wire	qb;
output wire	q3;
output wire	q4;

wire	SYNTHESIZED_WIRE_0;
reg	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
reg	SYNTHESIZED_WIRE_20;
reg	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
reg	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	qa = SYNTHESIZED_WIRE_23;
assign	qb = SYNTHESIZED_WIRE_17;
assign	q3 = SYNTHESIZED_WIRE_20;
assign	q4 = SYNTHESIZED_WIRE_21;




always@(posedge clock or negedge Clear or negedge PRn)
begin
if (!Clear)
	begin
	SYNTHESIZED_WIRE_23 <= 0;
	end
else
if (!PRn)
	begin
	SYNTHESIZED_WIRE_23 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_22 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;


always@(posedge clock or negedge Clear or negedge PRn)
begin
if (!Clear)
	begin
	SYNTHESIZED_WIRE_20 <= 0;
	end
else
if (!PRn)
	begin
	SYNTHESIZED_WIRE_20 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_10;
	end
end

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_20 ^ SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_22;


always@(posedge clock or negedge Clear or negedge PRn)
begin
if (!Clear)
	begin
	SYNTHESIZED_WIRE_21 <= 0;
	end
else
if (!PRn)
	begin
	SYNTHESIZED_WIRE_21 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_21;
	end
end

assign	SYNTHESIZED_WIRE_19 =  ~SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_15 =  ~SYNTHESIZED_WIRE_23;


always@(posedge clock or negedge Clear or negedge PRn)
begin
if (!Clear)
	begin
	SYNTHESIZED_WIRE_17 <= 0;
	end
else
if (!PRn)
	begin
	SYNTHESIZED_WIRE_17 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_16;
	end
end


endmodule
