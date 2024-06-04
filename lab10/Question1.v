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
// CREATED		"Thu Jul 02 15:45:13 2020"

module Question1(
	Clock,
	Clear,
	in,
	OUT,
	Q0,
	Q1,
	Q2
);


input wire	Clock;
input wire	Clear;
input wire	in;
output reg	OUT;
output wire	Q0;
output wire	Q1;
output wire	Q2;

reg	DFF_inst;
reg	DFF_cgf;
reg	DFF_inst14;

assign	Q0 = DFF_inst;
assign	Q1 = DFF_cgf;
assign	Q2 = DFF_inst14;




always@(posedge Clock or negedge Clear)
begin
if (!Clear)
	begin
	DFF_cgf <= 0;
	end
else
	begin
	DFF_cgf <= DFF_inst;
	end
end


always@(posedge Clock or negedge Clear)
begin
if (!Clear)
	begin
	DFF_inst <= 0;
	end
else
	begin
	DFF_inst <= in;
	end
end


always@(posedge Clock or negedge Clear)
begin
if (!Clear)
	begin
	DFF_inst14 <= 0;
	end
else
	begin
	DFF_inst14 <= DFF_cgf;
	end
end


always@(posedge Clock or negedge Clear)
begin
if (!Clear)
	begin
	OUT <= 0;
	end
else
	begin
	OUT <= DFF_inst14;
	end
end


endmodule
