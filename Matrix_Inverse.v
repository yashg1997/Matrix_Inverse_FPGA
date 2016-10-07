`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:31 10/06/2016 
// Design Name: 
// Module Name:    Matrix_Inverse 
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
//data_in11,data_in12,data_in13,data_in14,data_in15,data_in21,data_in22,data_in23,data_in24,data_in25,data_in31,data_in32,data_in33,data_in34,data_in35,data_in41,data_in42,data_in43,data_in44,data_in45,data_in51,data_in52,data_in53,data_in54,data_in55
//////////////////////////////////////////////////////////////////////////////////
module Matrix_Inverse(clk, reset, data_out, address, id11,id12,id13,id14,id15,id21,id22,id23,id24,id25,id31,id32,id33,id34,id35,id41,id42,id43,id44,id45,id51,id52,id53,id54,id55,id11d,id12d,id13d,id14d,id15d,id21d,id22d,id23d,id24d,id25d,id31d,id32d,id33d,id34d,id35d,id41d,id42d,id43d,id44d,id45d,id51d,id52d,id53d,id54d,id55d);

output [31:0] id11d,id12d,id13d,id14d,id15d;
output [31:0] id21d,id22d,id23d,id24d,id25d;
output [31:0] id31d,id32d,id33d,id34d,id35d;
output [31:0] id41d,id42d,id43d,id44d,id45d;
output [31:0] id51d,id52d,id53d,id54d,id55d;

output reg [31:0] id11,id12,id13,id14,id15;
output reg [31:0] id21,id22,id23,id24,id25;
output reg [31:0] id31,id32,id33,id34,id35;
output reg [31:0] id41,id42,id43,id44,id45;
output reg [31:0] id51,id52,id53,id54,id55;

reg [31:0] matrix[0:25];
reg [31:0] inverse[0:24];

output [31:0] data_out;

input reset;
input [4:0] address;

reg [31:0] data_in11,data_in12,data_in13,data_in14,data_in15;
reg [31:0] data_in21,data_in22,data_in23,data_in24,data_in25;
reg [31:0] data_in31,data_in32,data_in33,data_in34,data_in35;
reg [31:0] data_in41,data_in42,data_in43,data_in44,data_in45;
reg [31:0] data_in51,data_in52,data_in53,data_in54,data_in55;
input clk;


reg [31:0] id11t = 32'd1;
reg [31:0] id12t = 32'd0;
reg [31:0] id13t = 32'd0;
reg [31:0] id14t = 32'd0;
reg [31:0] id15t = 32'd0;

reg [31:0] id21t = 32'd0;
reg [31:0] id22t = 32'd1;
reg [31:0] id23t = 32'd0;
reg [31:0] id24t = 32'd0;
reg [31:0] id25t = 32'd0;

reg [31:0] id31t = 32'd0;
reg [31:0] id32t = 32'd0;
reg [31:0] id33t = 32'd1;
reg [31:0] id34t = 32'd0;
reg [31:0] id35t = 32'd0;

reg [31:0] id41t = 32'd0;
reg [31:0] id42t = 32'd0;
reg [31:0] id43t = 32'd0;
reg [31:0] id44t = 32'd1;
reg [31:0] id45t = 32'd0;

reg [31:0] id51t = 32'd0;
reg [31:0] id52t = 32'd0;
reg [31:0] id53t = 32'd0;
reg [31:0] id54t = 32'd0;
reg [31:0] id55t = 32'd1;

reg [31:0] temp_ans11,temp_ans12,temp_ans13,temp_ans14,temp_ans15,temp_ans21,temp_ans22,temp_ans23,temp_ans24,temp_ans25,temp_ans31,temp_ans32,temp_ans33,temp_ans34,temp_ans35,temp_ans41,temp_ans42,temp_ans43,temp_ans44,temp_ans45,temp_ans51,temp_ans52,temp_ans53t,temp_ans54t,temp_ans55t;

reg [31:0] x;
reg [31:0] y;

matrix setting_value (
  .clka(clk), // input clka
  .addra(address), // input [4 : 0] addra
  .douta(data_out) // output [31 : 0] douta
);


always@(posedge clk)
begin

if(reset==1'b0)
begin
	matrix[address] <= data_out;
end

else
begin

data_in11 = matrix[1];
data_in12 = matrix[2];
data_in13 = matrix[3];
data_in14 = matrix[4];
data_in15 = matrix[5];

data_in21 = matrix[6];
data_in22 = matrix[7];
data_in23 = matrix[8];
data_in24 = matrix[9];
data_in25 = matrix[10];

data_in31 = matrix[11];
data_in32= matrix[12];
data_in33= matrix[13];
data_in34 = matrix[14];
data_in35 = matrix[15];

data_in41 = matrix[16];
data_in42 =  matrix[17];
data_in43 = matrix[18];
data_in44 = matrix[19];
data_in45 = matrix[20];

data_in51 = matrix[21];
data_in52 = matrix[22];
data_in53 = matrix[23];
data_in54 = matrix[24];
data_in55 = matrix[25];

temp_ans11 = (data_in11 > 0 ? data_in11 : (~data_in11+32'd1));
temp_ans12 = (data_in12 > 0 ? data_in12 : (~data_in12+32'd1));
temp_ans13 = (data_in13 > 0 ? data_in13 : (~data_in13+32'd1));
temp_ans14 = (data_in14 > 0 ? data_in14 : (~data_in14+32'd1));
temp_ans15 = (data_in15 > 0 ? data_in15 : (~data_in15+32'd1));

temp_ans21 = (data_in21 > 0 ? data_in21 : (~data_in21 + 32'd1));
temp_ans22 = (data_in22 > 0 ? data_in22 : (~data_in22 + 32'd1));
temp_ans23 = (data_in23 > 0 ? data_in23 : (~data_in23 + 32'd1));
temp_ans24 = (data_in24 > 0 ? data_in24 : (~data_in24 + 32'd1));
temp_ans25 = (data_in25 > 0 ? data_in25 : (~data_in25 + 32'd1));

temp_ans31 = (data_in31 > 0 ? data_in31 : (~data_in31 + 32'd1));
temp_ans32 = (data_in32 > 0 ? data_in32 : (~data_in32 + 32'd1));
temp_ans33 = (data_in33 > 0 ? data_in33 : (~data_in33 + 32'd1));
temp_ans34 = (data_in34 > 0 ? data_in34 : (~data_in34 + 32'd1));
temp_ans35 = (data_in35 > 0 ? data_in35 : (~data_in35 + 32'd1));

temp_ans41 = (data_in41 > 0 ? data_in41 : (~data_in41+32'd1));
temp_ans42 = (data_in42 > 0 ? data_in42 : (~data_in42+32'd1));
temp_ans43 = (data_in43 > 0 ? data_in43 : (~data_in43+32'd1));
temp_ans44 = (data_in44 > 0 ? data_in44 : (~data_in44+32'd1));
temp_ans45 = (data_in45 > 0 ? data_in45 : (~data_in45+32'd1));

temp_ans51 = (data_in51 > 0 ? data_in51 : (~data_in51+32'd1));
temp_ans52 = (data_in52 > 0 ? data_in52 : (~data_in52+32'd1));
temp_ans53t = (data_in53 > 0 ? data_in53 : (~data_in53+32'd1));
temp_ans54t = (data_in54 > 0 ? data_in54 : (~data_in54+32'd1));
temp_ans55t = (data_in55 > 0 ? data_in55 : (~data_in55+32'd1));



x = temp_ans11;
y = temp_ans21;

temp_ans21 = x*temp_ans21 - y*temp_ans11;
temp_ans22 = x*temp_ans22 - y*temp_ans12;
temp_ans23 = x*temp_ans23 - y*temp_ans13;
temp_ans24 = x*temp_ans24 - y*temp_ans14;
temp_ans25 = x*temp_ans25 - y*temp_ans15;
id21t = x*id21t - y*id11t;
id22t = x*id22t - y*id12t;
id23t = x*id23t - y*id13t;
id24t = x*id24t - y*id14t;
id25t = x*id25t - y*id15t;

x = temp_ans11;
y = temp_ans31;

temp_ans31 = x*temp_ans31 - y*temp_ans11;
temp_ans32 = x*temp_ans32 - y*temp_ans12;
temp_ans33 = x*temp_ans33 - y*temp_ans13;
temp_ans34 = x*temp_ans34 - y*temp_ans14;
temp_ans35 = x*temp_ans35 - y*temp_ans15;
id31t = x*id31t - y*id11t;
id32t = x*id32t - y*id12t;
id33t = x*id33t - y*id13t;
id34t = x*id34t - y*id14t;
id35t = x*id35t - y*id15t;

x = temp_ans11;
y = temp_ans41;

temp_ans41 = x*temp_ans41 - y*temp_ans11;
temp_ans42 = x*temp_ans42 - y*temp_ans12;
temp_ans43 = x*temp_ans43 - y*temp_ans13;
temp_ans44 = x*temp_ans44 - y*temp_ans14;
temp_ans45 = x*temp_ans45 - y*temp_ans15;
id41t = x*id41t - y*id11t;
id42t = x*id42t - y*id12t;
id43t = x*id43t - y*id13t;
id44t = x*id44t - y*id14t;
id45t = x*id45t - y*id15t;

x = temp_ans11;
y = temp_ans51;

temp_ans51 = x*temp_ans51 - y*temp_ans11;
temp_ans52 = x*temp_ans52 - y*temp_ans12;
temp_ans53t = x*temp_ans53t - y*temp_ans13;
temp_ans54t = x*temp_ans54t - y*temp_ans14;
temp_ans55t = x*temp_ans55t - y*temp_ans15;
id51t = x*id51t - y*id11t;
id52t = x*id52t - y*id12t;
id53t = x*id53t - y*id13t;
id54t = x*id54t - y*id14t;
id55t = x*id55t - y*id15t;


/*         */


x = temp_ans22;
y = temp_ans12;

temp_ans11 = x*temp_ans11 - y*temp_ans21;
temp_ans12 = x*temp_ans12 - y*temp_ans22;
temp_ans13 = x*temp_ans13 - y*temp_ans23;
temp_ans14 = x*temp_ans14 - y*temp_ans24;
temp_ans15 = x*temp_ans15 - y*temp_ans25;
id11t = x*id11t - y*id21t;
id12t = x*id12t - y*id22t;
id13t = x*id13t - y*id23t;
id14t = x*id14t - y*id24t;
id15t = x*id15t - y*id25t;

x = temp_ans22;
y = temp_ans32;

temp_ans31 = x*temp_ans31 - y*temp_ans21;
temp_ans32 = x*temp_ans32 - y*temp_ans22;
temp_ans33 = x*temp_ans33 - y*temp_ans23;
temp_ans34 = x*temp_ans34 - y*temp_ans24;
temp_ans35 = x*temp_ans35 - y*temp_ans25;
id31t = x*id31t - y*id21t;
id32t = x*id32t - y*id22t;
id33t = x*id33t - y*id23t;
id34t = x*id34t - y*id24t;
id35t = x*id35t - y*id25t;

x = temp_ans22;
y = temp_ans42;

temp_ans41 = x*temp_ans41 - y*temp_ans21;
temp_ans42 = x*temp_ans42 - y*temp_ans22;
temp_ans43 = x*temp_ans43 - y*temp_ans23;
temp_ans44 = x*temp_ans44 - y*temp_ans24;
temp_ans45 = x*temp_ans45 - y*temp_ans25;
id41t = x*id41t - y*id21t;
id42t = x*id42t - y*id22t;
id43t = x*id43t - y*id23t;
id44t = x*id44t - y*id24t;
id45t = x*id45t - y*id25t;

x = temp_ans22;
y = temp_ans52;

temp_ans51 = x*temp_ans51 - y*temp_ans21;
temp_ans52 = x*temp_ans52 - y*temp_ans22;
temp_ans53t = x*temp_ans53t - y*temp_ans23;
temp_ans54t = x*temp_ans54t - y*temp_ans24;
temp_ans55t = x*temp_ans55t - y*temp_ans25;
id51t = x*id51t - y*id21t;
id52t = x*id52t - y*id22t;
id53t = x*id53t - y*id23t;
id54t = x*id54t - y*id24t;
id55t = x*id55t - y*id25t;


/*         */


x = temp_ans33;
y = temp_ans13;

temp_ans11 = x*temp_ans11 - y*temp_ans31;
temp_ans12 = x*temp_ans12 - y*temp_ans32;
temp_ans13 = x*temp_ans13 - y*temp_ans33;
temp_ans14 = x*temp_ans14 - y*temp_ans34;
temp_ans15 = x*temp_ans15 - y*temp_ans35;
id11t = x*id11t - y*id31t;
id12t = x*id12t - y*id32t;
id13t = x*id13t - y*id33t;
id14t = x*id14t - y*id34t;
id15t = x*id15t - y*id35t;

x = temp_ans33;
y = temp_ans23;

temp_ans21 = x*temp_ans21 - y*temp_ans31;
temp_ans22 = x*temp_ans22 - y*temp_ans32;
temp_ans23 = x*temp_ans23 - y*temp_ans33;
temp_ans24 = x*temp_ans24 - y*temp_ans34;
temp_ans25 = x*temp_ans25 - y*temp_ans35;
id21t = x*id21t - y*id31t;
id22t = x*id22t - y*id32t;
id23t = x*id23t - y*id33t;
id24t = x*id24t - y*id34t;
id25t = x*id25t - y*id35t;

x = temp_ans33;
y = temp_ans43;

temp_ans41 = x*temp_ans41 - y*temp_ans31;
temp_ans42 = x*temp_ans42 - y*temp_ans32;
temp_ans43 = x*temp_ans43 - y*temp_ans33;
temp_ans44 = x*temp_ans44 - y*temp_ans34;
temp_ans45 = x*temp_ans45 - y*temp_ans35;
id41t = x*id41t - y*id31t;
id42t = x*id42t - y*id32t;
id43t = x*id43t - y*id33t;
id44t = x*id44t - y*id34t;
id45t = x*id45t - y*id35t;

x = temp_ans33;
y = temp_ans53t;

temp_ans51 = x*temp_ans51 - y*temp_ans31;
temp_ans52 = x*temp_ans52 - y*temp_ans32;
temp_ans53t = x*temp_ans53t - y*temp_ans33;
temp_ans54t = x*temp_ans54t - y*temp_ans34;
temp_ans55t = x*temp_ans55t - y*temp_ans35;
id51t = x*id51t - y*id31t;
id52t = x*id52t - y*id32t;
id53t = x*id53t - y*id33t;
id54t = x*id54t - y*id34t;
id55t = x*id55t - y*id35t;


/*         */


x = temp_ans44;
y = temp_ans14;

temp_ans11 = x*temp_ans11 - y*temp_ans41;
temp_ans12 = x*temp_ans12 - y*temp_ans42;
temp_ans13 = x*temp_ans13 - y*temp_ans43;
temp_ans14 = x*temp_ans14 - y*temp_ans44;
temp_ans15 = x*temp_ans15 - y*temp_ans45;
id11t = x*id11t - y*id41t;
id12t = x*id12t - y*id42t;
id13t = x*id13t - y*id43t;
id14t = x*id14t - y*id44t;
id15t = x*id15t - y*id45t;

x = temp_ans44;
y = temp_ans24;

temp_ans21 = x*temp_ans21 - y*temp_ans41;
temp_ans22 = x*temp_ans22 - y*temp_ans42;
temp_ans23 = x*temp_ans23 - y*temp_ans43;
temp_ans24 = x*temp_ans24 - y*temp_ans44;
temp_ans25 = x*temp_ans25 - y*temp_ans45;
id21t = x*id21t - y*id41t;
id22t = x*id22t - y*id42t;
id23t = x*id23t - y*id43t;
id24t = x*id24t - y*id44t;
id25t = x*id25t - y*id45t;

x = temp_ans44;
y = temp_ans34;

temp_ans31 = x*temp_ans31 - y*temp_ans41;
temp_ans32 = x*temp_ans32 - y*temp_ans42;
temp_ans33 = x*temp_ans33 - y*temp_ans43;
temp_ans34 = x*temp_ans34 - y*temp_ans44;
temp_ans35 = x*temp_ans35 - y*temp_ans45;
id31t = x*id31t - y*id41t;
id32t = x*id32t - y*id42t;
id33t = x*id33t - y*id43t;
id34t = x*id34t - y*id44t;
id35t = x*id35t - y*id45t;

x = temp_ans44;
y = temp_ans54t;

temp_ans51 = x*temp_ans51 - y*temp_ans41;
temp_ans52 = x*temp_ans52 - y*temp_ans42;
temp_ans53t = x*temp_ans53t - y*temp_ans43;
temp_ans54t = x*temp_ans54t - y*temp_ans44;
temp_ans55t = x*temp_ans55t - y*temp_ans45;
id51t = x*id51t - y*id41t;
id52t = x*id52t - y*id42t;
id53t = x*id53t - y*id43t;
id54t = x*id54t - y*id44t;
id55t = x*id55t - y*id45t;


/*         */


x = temp_ans55t;
y = temp_ans15;

temp_ans11 = x*temp_ans11 - y*temp_ans51;
temp_ans12 = x*temp_ans12 - y*temp_ans52;
temp_ans13 = x*temp_ans13 - y*temp_ans53t;
temp_ans14 = x*temp_ans14 - y*temp_ans54t;
temp_ans15 = x*temp_ans15 - y*temp_ans55t;
id11t = x*id11t - y*id51t;
id12t = x*id12t - y*id52t;
id13t = x*id13t - y*id53t;
id14t = x*id14t - y*id54t;
id15t = x*id15t - y*id55t;

x = temp_ans55t;
y = temp_ans25;

temp_ans21 = x*temp_ans21 - y*temp_ans51;
temp_ans22 = x*temp_ans22 - y*temp_ans52;
temp_ans23 = x*temp_ans23 - y*temp_ans53t;
temp_ans24 = x*temp_ans24 - y*temp_ans54t;
temp_ans25 = x*temp_ans25 - y*temp_ans55t;
id21t = x*id21t - y*id51t;
id22t = x*id22t - y*id52t;
id23t = x*id23t - y*id53t;
id24t = x*id24t - y*id54t;
id25t = x*id25t - y*id55t;

x = temp_ans55t;
y = temp_ans35;

temp_ans31 = x*temp_ans31 - y*temp_ans51;
temp_ans32 = x*temp_ans32 - y*temp_ans52;
temp_ans33 = x*temp_ans33 - y*temp_ans53t;
temp_ans34 = x*temp_ans34 - y*temp_ans54t;
temp_ans35 = x*temp_ans35 - y*temp_ans55t;
id31t = x*id31t - y*id51t;
id32t = x*id32t - y*id52t;
id33t = x*id33t - y*id53t;
id34t = x*id34t - y*id54t;
id35t = x*id35t - y*id55t;

x = temp_ans55t;
y = temp_ans45;

temp_ans41 = x*temp_ans41 - y*temp_ans51;
temp_ans42 = x*temp_ans42 - y*temp_ans52;
temp_ans43 = x*temp_ans43 - y*temp_ans53t;
temp_ans44 = x*temp_ans44 - y*temp_ans54t;
temp_ans45 = x*temp_ans45 - y*temp_ans55t;
id41t = x*id41t - y*id51t;
id42t = x*id42t - y*id52t;
id43t = x*id43t - y*id53t;
id44t = x*id44t - y*id54t;
id45t = x*id45t - y*id55t;




if(temp_ans11==32'd0 || temp_ans22 == 32'd0 || temp_ans33 == 32'd0 || temp_ans44==32'd0 || temp_ans55t==32'd0)
begin
	id11=32'dx;
	id22=32'dx;
	id33=32'dx;
	id44=32'dx;
	id55=32'dx;
end

else
begin
	id11 = id11t;
	id12 = id12t;
	id13 = id13t;
	id14 = id14t;
	id15 = id15t;

	id21 = id21t;
	id22 = id22t;
	id23 = id23t;
	id24 = id24t;
	id25 = id25t;

	id31 = id31t;
	id32 = id32t;
	id33 = id33t;
	id34 = id34t;
	id35 = id35t;

	id41 = id41t;
	id42 = id42t;
	id43 = id43t;
	id44 = id44t;
	id45 = id45t;

	id51 = id51t;
	id52 = id52t;
	id53 = id53t;
	id54 = id54t;
	id55 = id55t;
end


inverse[0] = id11;
inverse[1] = id12;
inverse[2] = id13;
inverse[3] = id14;
inverse[4] = id15;

inverse[5] = id21;
inverse[6] = id22;
inverse[7] = id23;
inverse[8] = id24;
inverse[9] = id25;

inverse[10] = id31;
inverse[11] = id32;
inverse[12] = id33;
inverse[13] = id34;
inverse[14] = id35;

inverse[15] = id41;
inverse[16] = id42;
inverse[17] = id43;
inverse[18] = id44;
inverse[19] = id45;

inverse[20] = id51;
inverse[21] = id52;
inverse[22] = id53;
inverse[23] = id54;
inverse[24] = id55;

end

end



wire [31:0] id11dt,id12dt,id13dt,id14dt,id15dt;
wire [31:0] id21dt,id22dt,id23dt,id24dt,id25dt;
wire [31:0] id31dt,id32dt,id33dt,id34dt,id35dt;
wire [31:0] id41dt,id42dt,id43dt,id44dt,id45dt;
wire [31:0] id51dt,id52dt,id53dt,id54dt,id55dt;


assign id11d = id11;
assign id12d = id12;
assign id13d = id13;
assign id14d = id14;
assign id15d = id15;

assign id21d = id21;
assign id22d = id22;
assign id23d = id23;
assign id24d = id24;
assign id25d = id25;

assign id31d = id31;
assign id32d = id32;
assign id33d = id33;
assign id34d = id34;
assign id35d = id35;

assign id41d = id41;
assign id42d = id42;
assign id43d = id43;
assign id44d = id44;
assign id45d = id45;

assign id51d = id51;
assign id52d = id52;
assign id53d = id53;
assign id54d = id54;
assign id55d = id55;

wire [31:0] a,b,c,d,e;

assign a = temp_ans11;
assign b = temp_ans22;
assign c = temp_ans33;
assign d = temp_ans44;
assign e = temp_ans55t;


assign id11d = id11dt;
assign id12d = id12dt;
assign id13d = id13dt;
assign id14d = id14dt;
assign id15d = id15dt;

assign id21d = id21dt;
assign id22d = id22dt;
assign id23d = id23dt;
assign id24d = id24dt;
assign id25d = id25dt;

assign id31d = id31dt;
assign id32d = id32dt;
assign id33d = id33dt;
assign id34d = id34dt;
assign id35d = id35dt;

assign id41d = id41dt;
assign id42d = id42dt;
assign id43d = id43dt;
assign id44d = id44dt;
assign id45d = id45dt;

assign id51d = id51dt;
assign id52d = id52dt;
assign id53d = id53dt;
assign id54d = id54dt;
assign id55d = id55dt;



endmodule








