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


module ComplexBitComparator(
        input logic [7:0] A,
        input logic [7:0] B,
        output logic       AequalsB,
        output logic       AgreaterthanB,
        output logic       AlessthanB
    );
    
    logic eq0, eq1, eq2, eq3, eq4, eq5, eq6, eq7;
    logic gt0, gt1, gt2, gt3, gt4, gt5, gt6, gt7;
    logic lt0, lt1, lt2, lt3, lt4, lt5, lt6, lt7;

    OneBitComparator bit_0 (
        .A(A[0]),
        .B(B[0]),
        .AequalsB(eq0),
        .AgreaterthanB(gt0),
        .AlessthanB(lt0)
    );
    
    OneBitComparator bit_1 (
        .A(A[1]),
        .B(B[1]),
        .AequalsB(eq1),
        .AgreaterthanB(gt1),
        .AlessthanB(lt1)
    );
    
    OneBitComparator bit_2 (
        .A(A[2]),
        .B(B[2]),
        .AequalsB(eq2),
        .AgreaterthanB(gt2),
        .AlessthanB(lt2)
    );
    
    OneBitComparator bit_3 (
        .A(A[3]),
        .B(B[3]),
        .AequalsB(eq3),
        .AgreaterthanB(gt3),
        .AlessthanB(lt3)
    );
 
    OneBitComparator bit_4 (
        .A(A[4]),
        .B(B[4]),
        .AequalsB(eq4),
        .AgreaterthanB(gt4),
        .AlessthanB(lt4)
    );
    
    OneBitComparator bit_5 (
        .A(A[5]),
        .B(B[5]),
        .AequalsB(eq5),
        .AgreaterthanB(gt5),
        .AlessthanB(lt5)
    );
    
    OneBitComparator bit_6 (
        .A(A[6]),
        .B(B[6]),
        .AequalsB(eq6),
        .AgreaterthanB(gt6),
        .AlessthanB(lt6)
    );
    
    OneBitComparator bit_7 (
        .A(A[7]),
        .B(B[7]),
        .AequalsB(eq7),
        .AgreaterthanB(gt7),
        .AlessthanB(lt7)
    );

    assign AequalsB = eq7 & eq6 & eq5 & eq4 & eq3 & eq2 & eq1 & eq0;
    
    assign AgreaterthanB = gt7
                            | (eq7 & gt6)
                            | (eq7 & eq6 & gt5)
                            | (eq7 & eq6 & eq5 & gt4)
                            | (eq7 & eq6 & eq5 & eq4 & gt3)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & gt2)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & eq2 & gt1)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & eq2 & eq1 & gt0);

    assign AlessthanB = lt7
                            | (eq7 & lt6)
                            | (eq7 & eq6 & lt5)
                            | (eq7 & eq6 & eq5 & lt4)
                            | (eq7 & eq6 & eq5 & eq4 & lt3)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & lt2)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & eq2 & lt1)
                            | (eq7 & eq6 & eq5 & eq4 & eq3 & eq2 & eq1 & lt0);

endmodule
