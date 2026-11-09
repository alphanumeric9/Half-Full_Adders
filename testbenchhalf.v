`timescale 1ns / 1ps
module testbenchhalf;
reg A, B;
wire Sum, Carry;

Halfadd uut (.A(A), .B(B), .Sum(Sum), .Carry(Carry));
initial begin
    $dumpfile("Halfadder.vcd");
    $dumpvars(0, testbenchhalf);
    $monitor("Time=%0t | A=%b | B=%b | Sum=%b | Carry=%b", $time, A, B, Sum, Carry);
    A=0;B=0; #10;
    A=0;B=1; #10;
    A=1;B=0; #10;
    A=1;B=1; #10;
    $finish;

end

endmodule