// WARNING: Do NOT edit the input and output ports in this file in a text
// editor if you plan to continue editing the block that represents it in
// the Block Editor! File corruption is VERY likely to occur.

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


// Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
// Created on Tue Jun 09 15:17:19 2020

//  Module Declaration
module Modes
(
	// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
	e, f, m, ac
	// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

	// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	input e;
	input f;
	input m;
	output reg ac;
	// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
always@(e,f,m)
if (m==1)
	ac = f;
else 
	ac = e;




endmodule