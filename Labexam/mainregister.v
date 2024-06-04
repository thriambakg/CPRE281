module regfile (DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0,
RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, LD_DATA, WR, CLRN, CLK);

//address and control ports
input RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, WR, CLRN, CLK;

//input data port
input [3:0] LD_DATA;

//output data ports
output DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0;

// wire decalarations
wire [3:0] DATAP, DATAQ;
wire EN0, EN1, EN2, EN3, EN4, EN5, EN6, EN7;
wire [3:0] DATA0, DATA1, DATA2, DATA3, DATA4, DATA5, DATA6, DATA7;

ParalelReg REG0 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN0), .OUT(DATA0));
ParalelReg REG1 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN1), .OUT(DATA1));
ParalelReg REG2 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN2), .OUT(DATA2));
ParalelReg REG3 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN3), .OUT(DATA3));
ParalelReg REG4 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN4), .OUT(DATA4));
ParalelReg REG5 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN5), .OUT(DATA5));
ParalelReg REG6 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN6), .OUT(DATA6));
ParalelReg REG7 (.CLK(CLK), .CLRN(CLRN), .In(LD_DATA), .EN(EN7), .OUT(DATA7));

Decoder3to8 WR_DECODE (.en(1'b1), .w2(WA2), .w1(WA1), .w0(WA0), .y0(EN0), .y1(EN1), .y2(EN2), .y3(EN3), .y4(EN4), .y5(EN5), .y6(EN6), .y7(EN7));
Mux8_4b RD_PMUX (.s2(RP2), .s1(RP1), .s0(RP0), .w0(DATA0), .w1(DATA1), .w2(DATA2), .w3(DATA3), .w4(DATA4), .w5(DATA5), .w6(DATA6), .w7(DATA7), .F(DATAP));
Mux8_4b RD_QMUX (.s2(RQ2), .s1(RQ1), .s0(RQ0), .w0(DATA0), .w1(DATA1), .w2(DATA2), .w3(DATA3), .w4(DATA4), .w5(DATA5), .w6(DATA6), .w7(DATA7), .F(DATAQ));

assign DATAP0 = DATAP[0];
assign DATAP1 = DATAP[1];
assign DATAP2 = DATAP[2];
assign DATAP3 = DATAP[3];

assign DATAQ0 = DATAQ[0];
assign DATAQ1 = DATAQ[1];
assign DATAQ2 = DATAQ[2];
assign DATAQ3 = DATAQ[3];

endmodule