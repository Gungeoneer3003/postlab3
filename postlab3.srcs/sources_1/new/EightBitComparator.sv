`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 10:30:08 AM
// Design Name: 
// Module Name: OneBitComparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module EightBitComparator(
    input  logic A_0,
    input  logic A_1,
    input  logic A_2,
    input  logic A_3,
    input  logic A_4,
    input  logic A_5,
    input  logic A_6,
    input  logic A_7,
    input  logic B_0,
    input  logic B_1,
    input  logic B_2,
    input  logic B_3,
    input  logic B_4,
    input  logic B_5,
    input  logic B_6,
    input  logic B_7,
    output logic AequalsB,
    output logic AgreaterthanB,
    output logic AlessthanB
);

    logic E_7;
    logic E_6;
    logic E_5;
    logic E_4;
    logic E_3;
    logic E_2;
    logic E_1;
    logic E_0;

    // Each XNOR is HIGH only when the corresponding input bits match
    assign E_7 = A_7 ~^ B_7;
    assign E_6 = A_6 ~^ B_6;
    assign E_5 = A_5 ~^ B_5;
    assign E_4 = A_4 ~^ B_4;
    assign E_3 = A_3 ~^ B_3;
    assign E_2 = A_2 ~^ B_2;
    assign E_1 = A_1 ~^ B_1;
    assign E_0 = A_0 ~^ B_0;

    // Equality requires a match at every bit position
    assign AequalsB = E_7 & E_6 & E_5 & E_4 & E_3 & E_2 & E_1 & E_0;

    // The first unequal bit, searching from bit 7 down, decides A > B
    assign AgreaterthanB = (A_7 & ~B_7)
                          | (E_7 & A_6 & ~B_6)
                          | (E_7 & E_6 & A_5 & ~B_5)
                          | (E_7 & E_6 & E_5 & A_4 & ~B_4)
                          | (E_7 & E_6 & E_5 & E_4 & A_3 & ~B_3)
                          | (E_7 & E_6 & E_5 & E_4 & E_3 & A_2 & ~B_2)
                          | (E_7 & E_6 & E_5 & E_4 & E_3 & E_2 & A_1 & ~B_1)
                          | (E_7 & E_6 & E_5 & E_4 & E_3 & E_2 & E_1
                          & A_0 & ~B_0);

    // The first unequal bit, searching from bit 7 down, decides A < B
    assign AlessthanB = (B_7 & ~A_7)
                       | (E_7 & B_6 & ~A_6)
                       | (E_7 & E_6 & B_5 & ~A_5)
                       | (E_7 & E_6 & E_5 & B_4 & ~A_4)
                       | (E_7 & E_6 & E_5 & E_4 & B_3 & ~A_3)
                       | (E_7 & E_6 & E_5 & E_4 & E_3 & B_2 & ~A_2)
                       | (E_7 & E_6 & E_5 & E_4 & E_3 & E_2 & B_1 & ~A_1)
                       | (E_7 & E_6 & E_5 & E_4 & E_3 & E_2 & E_1
                       & B_0 & ~A_0);


endmodule
