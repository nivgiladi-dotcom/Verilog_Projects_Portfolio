module full_adder (
input wire A,
input wire B,
input wire D, // Carry in
output wire C, // Carry out
output wire S // Sum
);
    assign S = A ^ B ^ D;
    assign C = (A & B) | (A & D)| (B & D);

endmodule