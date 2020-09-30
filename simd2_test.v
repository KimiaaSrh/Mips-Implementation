`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:48 12/26/2018
// Design Name:   simd2
// Module Name:   D:/com/arch lab/final9532275_kimiaSoroush/simd2_test.v
// Project Name:  final9532275_kimiaSoroush
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simd2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simd2_test;

	// Inputs
	reg clk;
	reg [3:0] x;
	reg [1:0] opcode;

	// Outputs
	wire [15:0] output_one;
	wire [15:0] output_two;
	wire [15:0] output_three;
	wire [15:0] output_four;
	wire [15:0] output_five;
	wire [15:0] output_six;
	wire [15:0] output_seven;
	wire [15:0] output_eight;
	wire [15:0] output_nine;
	wire [15:0] output_ten;

	// Instantiate the Unit Under Test (UUT)
	simd2 uut (
		.clk(clk), 
		.x(x), 
		.opcode(opcode), 
		.output_one(output_one), 
		.output_two(output_two), 
		.output_three(output_three), 
		.output_four(output_four), 
		.output_five(output_five), 
		.output_six(output_six), 
		.output_seven(output_seven), 
		.output_eight(output_eight), 
		.output_nine(output_nine), 
		.output_ten(output_ten)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		x = 4'b0000;
		opcode = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
		begin
		#50 ; 
		clk=~clk;
		end
      
endmodule

