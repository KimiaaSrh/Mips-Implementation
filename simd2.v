`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:13 12/26/2018 
// Design Name: 
// Module Name:    simd2 
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
module simd2(input clk, input [3:0] x , input [1:0] opcode,
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
	 
	 reg [9:0] isValidOrNot;
	 // in array pass dade mishe be alu baraye in ke check konim bebinim
	 // mikhaim amaliate alu ru in satr anjam she ya na
	 integer index1;
	
	initial
	begin
		for(index1 = 0; index1 < x; index1 = index1 + 1)
			isValidOrNot[index1]=1;
	end

	always@(posedge clk)
	 begin
		ALU  one(isValidOrNot,4'b0001,opcode,output_one);
		ALU  two(isValidOrNot,4'b0010,opcode,output_two);
		ALU  three(isValidOrNot,4'b0011,opcode,output_three);
		ALU  four(isValidOrNot,4'b0100,opcode,output_four);
		ALU  five(isValidOrNot,4'b0101,opcode,output_five);
		ALU  six(isValidOrNot,4'b0110,opcode,output_six);
		ALU  seven(isValidOrNot,4'b0111,opcode,output_seven);
		ALU  eight(isValidOrNot,4'b1000,opcode,output_eight);
		ALU  nine(isValidOrNot,4'b1001,opcode,output_nine);
		ALU  ten(isValidOrNot,4'b1010,opcode,output_ten);
	 end
endmodule


module ALU(input [9:0] isValidOrNot,
input [3:0] x ,input [1:0] opcode,
output reg [15:0] result
);

	wire [31:0] temp;

	always@(*)
	begin
		Memory mem(x,temp);
		if(x== 4'b0001 )
		begin
			if(isValidOrNot[0]==1)
			begin
				if(opcode==2'b00)
					result=temp[31:16]+temp[15:0];
				if(opcode==2'b01)
					assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
				if(opcode==2'b10)
					result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		if(x== 4'b0010 )
		begin
			if(isValidOrNot[1]==1)
			begin
				if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
				if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
				if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end

		if(x== 4'b0011 )
		begin
			if(isValidOrNot[2]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		if(x== 4'b0100 )
		begin
			if(isValidOrNot[3]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		if(x== 4'b0101 )
		begin
			if(isValidOrNot[4]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		if(x== 4'b0110  )
		begin
			if(isValidOrNot[5]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		
		if(x== 4'b0111  )
		begin
			if(isValidOrNot[6]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		
		if(x== 4'b1000  )
		begin
			if(isValidOrNot[7]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		if(x== 4'b1001 )
		begin	
			if(isValidOrNot[8]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
		
		if(x== 4'b1010 )
		begin
			if(isValidOrNot[9]==1)
			begin
			if(opcode==2'b00)
				result=temp[31:16]+temp[15:0];
			if(opcode==2'b01)
				assign result=(temp[31:16] > temp[15:0]) ? temp[31:16] :temp[15:0];
			if(opcode==2'b10)
				result=temp[31:16] ^ temp[15:0];
			end
			else
				result=16'bx;
		end
		
	end
endmodule


module Memory(input [3:0] x, output reg [31:0] wholeLine);

	reg [31:0] memoryFile[9:0];
	always@(*)
	begin
		//memoryFile[4'b0001][31:16]=d'101;
		wholeLine=memoryFile[x][31:0];

	end
endmodule




