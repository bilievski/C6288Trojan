module ROM_toplevel(clk, out1, out2);
output[15:0] out1;
output[15:0] out2;
input clk;
reg [15:0] out1;
reg [15:0] out2;
reg [2:0] addr = 3'b000;
wire [15:0] ROM[7:0];
assign ROM[0]=16'b0000000000001111;
assign ROM[1]=16'b0000000011111111; 
assign ROM[2]=16'b0000111111111111;
assign ROM[3]=16'b1111111111111111; 
assign ROM[4]=16'b0000000001000101; 
assign ROM[5]=16'b0000000110100100; 
assign ROM[6]=16'b0011010111111011; 
assign ROM[7]=16'b1100111100100111;  
assign ROM[7]=16'bz;
always @(posedge clk)
begin
addr <= addr + 1'b1;
out1 <= ROM[addr];
out2 <= ROM[addr];
end
endmodule