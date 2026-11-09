`timescale 1ns/1ps
module testbenchfull;
reg A, B, Cin;
wire Sum,Cout;

Fulladd uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
initial begin
    $dumpfile("Fulladder.vcd");
    $dumpvars(0, testbenchfull);
    $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b", $time, A, B, Cin, Sum, Cout);
    A=0;B=0;Cin=0; #10;
    A=0;B=0;Cin=1; #10;
    A=0;B=1;Cin=0; #10;
    A=0;B=1;Cin=1; #10;
    A=1;B=0;Cin=0; #10;
    A=1;B=0;Cin=1; #10;
    A=1;B=1;Cin=0; #10;
    A=1;B=1;Cin=1; #10;
    $finish;
end

endmodule