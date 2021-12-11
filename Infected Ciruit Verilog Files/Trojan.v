`timescale 1ns / 1ps

module Trojan(
		output trojan_Sum,
		input A,
		input B,
		input HA_Sum
    );

xnor ht_trig(trigger, A, B);
m21 mux21(.Y(trojan_Sum), .D1(B), .D0(HA_Sum), .S(trigger));

endmodule


module m21(
    output Y,
    input D0,
    input D1,
    input S
    );

wire T1, T2, Sbar;

and (T1, D1, S), (T2, D0, Sbar);
not (Sbar, S);
or (Y, T1, T2);

endmodule
