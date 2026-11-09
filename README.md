# Half-Full_Adders
These scripts implement half and full adders using Verilog

## Pre-Requisites
iverilog, gtkwave (optional)

## Implementation

### Half Adder
Half Adder has the following outputs— Sum and Carry given by

$$
\begin{aligned}
\text{Sum} = A \oplus B \\
\text{Carry} = A \cdot B 
\end{aligned}
$$



With the Truth table being:

|Input A|Input B|Sum|Carry|
|-|-|-|-|
| 0|0|0|0|
|0|1|1|0|
|1|0|1|0|
|1|1|0|1|

Navigate to Current Directory and execute the follwing for <u>**linux shell**</u>:

Download the Repo/Files and then follow these instruction

```shell
iverilog -o halfadd halfadder.v testbenchhalf.v
sleep 1
vvp halfadd
sleep 1
gtkwave Halfadder.vcd #optional
```
> Files created from the above commands: `halfadd` & `Halfadder.vcd` in the cwd/pwd

### Full Adder
Full Adder outputs are as follows:

$$
\begin{aligned}
&\text{Sum}= A \oplus B \oplus Cin \\
&\text{Carry} = A \cdot B + B \cdot Cin + A \cdot Cin
\end{aligned}
$$

Truth table for Full Adder

|A|B|Cin|Sum|Carry(out)|Cout'|
|-|-|-|-|-|-|
|0|0|0|0|0|1|
|0|0|1|1|0|1|
|0|1|0|1|0|1|
|0|1|1|0|1|0|
|1|0|0|1|0|1|
|1|0|1|0|1|0|
|1|1|0|0|1|0|
|1|1|1|1|1|0|

But we can make a more efficient version (For VLSI Circuits, less complexxity for NAND/NOR gates) using

$$
\begin{aligned}
&\overline{Cout} = \overline{A \cdot B + B \cdot Cin + A \cdot Cin} \\
&\text{Sum} = Cin \cdot \overline{Cout} + B \cdot \overline{Cout} + \overline{A} \cdot \overline{Cout} + A \cdot B \cdot Cin
\end{aligned}
$$

But for the sake of simplicity and fast output, i will assume that verilog is already efficient with multi XOR operations— will stick to the previous equation.

Navigate to Current Directory and execute the follwing for <u>**linux shell**</u>:
```shell
iverilog -o fulladd testbenchfull.v fulladder.v
sleep 1
vvp fulladd
sleep 1
gtkwave Fulladder.vcd #optional
```
> Files created from the above commands: `fulladd` & `Fulladder.vcd` in the cwd/pwd

Thank You\
alphanumeric9

> "Never stop learning. Those who stop learning, stop living." - Prime Newtons @ YouTube