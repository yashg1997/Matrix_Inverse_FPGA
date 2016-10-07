`timescale 1ns / 1ps



module Matrix_Inverse_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;
	

	// Outputs
	wire [31:0] id11;
	wire [31:0] id12;
	wire [31:0] id13;
	wire [31:0] id14;
	wire [31:0] id15;
	wire [31:0] id21;
	wire [31:0] id22;
	wire [31:0] id23;
	wire [31:0] id24;
	wire [31:0] id25;
	wire [31:0] id31;
	wire [31:0] id32;
	wire [31:0] id33;
	wire [31:0] id34;
	wire [31:0] id35;
	wire [31:0] id41;
	wire [31:0] id42;
	wire [31:0] id43;
	wire [31:0] id44;
	wire [31:0] id45;
	wire [31:0] id51;
	wire [31:0] id52;
	wire [31:0] id53;
	wire [31:0] id54;
	wire [31:0] id55;
	wire [31:0] id11d;
	wire [31:0] id12d;
	wire [31:0] id13d;
	wire [31:0] id14d;
	wire [31:0] id15d;
	wire [31:0] id21d;
	wire [31:0] id22d;
	wire [31:0] id23d;
	wire [31:0] id24d;
	wire [31:0] id25d;
	wire [31:0] id31d;
	wire [31:0] id32d;
	wire [31:0] id33d;
	wire [31:0] id34d;
	wire [31:0] id35d;
	wire [31:0] id41d;
	wire [31:0] id42d;
	wire [31:0] id43d;
	wire [31:0] id44d;
	wire [31:0] id45d;
	wire [31:0] id51d;
	wire [31:0] id52d;
	wire [31:0] id53d;
	wire [31:0] id54d;
	wire [31:0] id55d;
	
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Matrix_Inverse uut (
		.clk(clk), 
		.address(address),
		.data_out(data_out),
		.reset(reset),
		
		.id11(id11), 
		.id12(id12), 
		.id13(id13), 
		.id14(id14), 
		.id15(id15), 
		.id21(id21), 
		.id22(id22), 
		.id23(id23), 
		.id24(id24), 
		.id25(id25), 
		.id31(id31), 
		.id32(id32), 
		.id33(id33), 
		.id34(id34), 
		.id35(id35), 
		.id41(id41), 
		.id42(id42), 
		.id43(id43), 
		.id44(id44), 
		.id45(id45), 
		.id51(id51), 
		.id52(id52), 
		.id53(id53), 
		.id54(id54), 
		.id55(id55), 
		.id11d(id11d), 
		.id12d(id12d), 
		.id13d(id13d), 
		.id14d(id14d), 
		.id15d(id15d), 
		.id21d(id21d), 
		.id22d(id22d), 
		.id23d(id23d), 
		.id24d(id24d), 
		.id25d(id25d), 
		.id31d(id31d), 
		.id32d(id32d), 
		.id33d(id33d), 
		.id34d(id34d), 
		.id35d(id35d), 
		.id41d(id41d), 
		.id42d(id42d), 
		.id43d(id43d), 
		.id44d(id44d), 
		.id45d(id45d), 
		.id51d(id51d), 
		.id52d(id52d), 
		.id53d(id53d), 
		.id54d(id54d), 
		.id55d(id55d)
	);
	
	always #100 clk = ~clk;

	initial 
	begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;
		
		
		/*data_in11 = 0;
		data_in12 = 0;
		data_in13 = 0;
		data_in14 = 0;
		data_in15 = 0;
		data_in21 = 0;
		data_in22 = 0;
		data_in23 = 0;
		data_in24 = 0;
		data_in25 = 0;
		data_in31 = 0;
		data_in32 = 0;
		data_in33 = 0;
		data_in34 = 0;
		data_in35 = 0;
		data_in41 = 0;
		data_in42 = 0;
		data_in43 = 0;
		data_in44 = 0;
		data_in45 = 0;
		data_in51 = 0;
		data_in52 = 0;
		data_in53 = 0;
		data_in54 = 0;
		data_in55 = 0;*/

		/*data_in11 = 32'd1;
		data_in12 = 32'd0;
		data_in13 = 32'd0;
		data_in14 = 32'd0;
		data_in15 = 32'd0;
		data_in21 = 32'd0;
		data_in22 = 32'd1;
		data_in23 = 32'd0;
		data_in24 = 32'd0;
		data_in25 = 32'd0;
		data_in31 = 32'd0;
		data_in32 = 32'd0;
		data_in33 = 32'd1;
		data_in34 = 32'd2;
		data_in35 = 32'd3;
		data_in41 = 32'd0;
		data_in42 = 32'd0;
		data_in43 = 32'd0;
		data_in44 = 32'd1;
		data_in45 = 32'd4;
		data_in51 = 32'd0;
		data_in52 = 32'd0;
		data_in53 = 32'd5;
		data_in54 = 32'd6;
		data_in55 = 32'd0;*/

	end
      
endmodule


/*1111111111111111111111

  data_in11 = 32'd1;
		data_in12 = 32'd0;
		data_in13 = 32'd0;
		data_in14 = 32'd0;
		data_in15 = 32'd0;
		data_in21 = 32'd0;
		data_in22 = 32'd1;
		data_in23 = 32'd0;
		data_in24 = 32'd0;
		data_in25 = 32'd0;
		data_in31 = 32'd0;
		data_in32 = 32'd0;
		data_in33 = 32'd5;
		data_in34 = 32'd15;
		data_in35 = 32'd10;
		data_in41 = 32'd0;
		data_in42 = 32'd0;
		data_in43 = 32'd0;
		data_in44 = 32'd3;
		data_in45 = 32'd6;
		data_in51 = 32'd0;
		data_in52 = 32'd0;
		data_in53 = 32'd2;
		data_in54 = 32'd0;
		data_in55 = 32'd8;
		
*/
