`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:44 12/26/2018 
// Design Name: 
// Module Name:    simd 
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
module simd( input clk, input [3:0] x , input [1:0] opcode,
output reg [15:0] output_one,
output reg [15:0] output_two,
output reg [15:0] output_three,
output reg [15:0] output_four,
output reg [15:0] output_five,
output reg [15:0] output_six,
output reg [15:0] output_seven,
output reg [15:0] output_eight,
output reg [15:0] output_nine,
output reg [15:0] output_ten

    );
	 
	 /*always@(posedge clk)
	 begin
		/*ALU  one(4'b0001,opcode,output_one);
		ALU  two(4'b0010,opcode,output_two);
		ALU  three(4'b0011,opcode,output_three);
		ALU  four(4'b0100,opcode,output_four);
		ALU  five(4'b0101,opcode,output_five);
		ALU  six(4'b0110,opcode,output_six);
		ALU  seven(4'b0111,opcode,output_seven);
		ALU  eight(4'b1000,opcode,output_eight);
		ALU  nine(4'b1001,opcode,output_nine);
		ALU  ten(4'b1010,opcode,output_ten);
	 end*/
	 
	 
	 
	 
endmodule

/*module ALU(input [3:0] x ,input [1:0] opcode,
output reg [15:0] result
);

	//wire [31:0] temp;

	/*always@(*)
	begin
		//Memory mem(x,temp);
		/*if(x== 4'b0001)
		begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
		end
		
	end
endmodule*/


/*module Memory(input [3:0] x, output reg [31:0] wholeLine);
endmodule*/


