`timescale 1ns/1ps

module full_adder_tb;
    reg A, B, D;
    wire C, S;

    full_adder uut (
        .A(A), .B(B), .D(D),
        .C(C), .S(S)
    );

    initial begin
        $dumpfile("full_adder_test.vcd");
        $dumpvars(0, full_adder_tb);

        {A, B, D} = 3'b000; #10;
        {A, B, D} = 3'b001; #10;
        {A, B, D} = 3'b010; #10;
        {A, B, D} = 3'b011; #10;
        {A, B, D} = 3'b100; #10;
        {A, B, D} = 3'b101; #10;
        {A, B, D} = 3'b110; #10;
        {A, B, D} = 3'b111; #10;

        $finish;
    end
endmodule