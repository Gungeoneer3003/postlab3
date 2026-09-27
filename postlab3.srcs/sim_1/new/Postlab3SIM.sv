`timescale 1ns / 1ps

// Testbench for all Postlab 3 comparator implementations
module Postlab3SIM;
    logic [7:0] a_value;
    logic [7:0] b_value;
    logic behavioral_eq;
    logic behavioral_gt;
    logic behavioral_lt;
    logic structural_eq;
    logic structural_gt;
    logic structural_lt;

    EightBitComparator eight_bit_dut (
        .A_0(a_value[0]),
        .A_1(a_value[1]),
        .A_2(a_value[2]),
        .A_3(a_value[3]),
        .A_4(a_value[4]),
        .A_5(a_value[5]),
        .A_6(a_value[6]),
        .A_7(a_value[7]),
        .B_0(b_value[0]),
        .B_1(b_value[1]),
        .B_2(b_value[2]),
        .B_3(b_value[3]),
        .B_4(b_value[4]),
        .B_5(b_value[5]),
        .B_6(b_value[6]),
        .B_7(b_value[7]),
        .AequalsB(eight_eq),
        .AgreaterthanB(eight_gt),
        .AlessthanB(eight_lt)
    );

    ComplexBitComparator complex_dut (
        .A(a_value),
        .B(b_value),
        .AequalsB(complex_eq),
        .AgreaterthanB(complex_gt),
        .AlessthanB(complex_lt)
    );

    // Applies and verifies both 8-bit comparator implementations
    task automatic check_eight_bit(
        input logic [7:0] test_a,
        input logic [7:0] test_b,
        input string description
    );
        logic expected_eq;
        logic expected_gt;
        logic expected_lt;

        begin
            a_value = test_a;
            b_value = test_b;
            expected_eq = (test_a == test_b);
            expected_gt = (test_a > test_b);
            expected_lt = (test_a < test_b);
            #10;

            $display(
                "8-bit: %s | A=%0d, B=%0d ",
                description, test_a, test_b,
                test_b
            );
            $display(
                "       expected: =%b >%b <%b | direct: =%b >%b <%b",
                expected_eq, expected_gt, expected_lt,
                eight_eq, eight_gt, eight_lt
            );
            $display(
                "       hierarchical: =%b >%b <%b",
                complex_eq, complex_gt, complex_lt
            );

            if ({eight_eq, eight_gt, eight_lt} !==
                {expected_eq, expected_gt, expected_lt}) begin
                $error("Direct 8-bit comparator failed: %s", description);
            end

            if ({complex_eq, complex_gt, complex_lt} !==
                {expected_eq, expected_gt, expected_lt}) begin
                $error("Hierarchical comparator failed: %s", description);
            end
        end
    endtask

    initial begin
        $display("--- Postlab 3 comparator simulation ---");

        check_eight_bit(8'd0, 8'd0, "test 1");
        check_eight_bit(8'd42, 8'd42, "test 2");
        check_eight_bit(8'd128, 8'd127, "test 3");
        check_eight_bit(8'd34, 8'd35, "test 4");
        check_eight_bit(8'd255, 8'd0, "test 5");
        check_eight_bit(8'd21, 8'd17, "test 6");
        check_eight_bit(8'd22, 8'd30, "test 7");
        check_eight_bit(8'd200, 8'd100, "test 8");
        check_eight_bit(8'd112, 8'd111, "test 9");
        check_eight_bit(8'd1, 8'd22, "test 10");
        check_eight_bit(8'b00001111, 8'b11110000, "test 11");
        check_eight_bit(8'b11110000, 8'b00001111, "test 12");
        
        $display("--- All Postlab 3 comparator tests completed ---");
        $finish;
    end
endmodule
