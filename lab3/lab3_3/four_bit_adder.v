`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:50 01/27/2019 
// Design Name: 
// Module Name:    four_bit_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module four_bit_adder(a, b, sum, carry);
input [3:0] a, b;
output [3:0] sum;
output carry;
wire [3:0] sum;
wire carry;
wire c0, c1, c2;

full_adder FA0(a[0], b[0], 1'b0, sum[0], c0);
full_adder FA1(a[1], b[1], c0, sum[1], c1);
full_adder FA2(a[2], b[2], c1, sum[2], c2);
full_adder FA3(a[3], b[3], c2, sum[3], carry);

endmodule
