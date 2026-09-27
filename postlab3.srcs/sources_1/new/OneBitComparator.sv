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


module OneBitComparator(
    input   logic A,
    input   logic B, 
    output logic AequalsB,
    output logic AgreaterthanB,
    output logic AlessthanB
    );
    
    assign AgreaterthanB = A & ~B; 
    assign AequalsB = ~A & ~B | A & B;
    assign AlessthanB = ~A & B;
endmodule
