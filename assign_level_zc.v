module EX_three_inputZC (input a,b,c, output y1,y0);
	assign #(15,14) y1 = ( (~a.(~b+~c)) + (~b.~c) );
	assign #(27,28) y0 = ( (a.((~b.c)+(b.~c))) + (~a.((~b.~c)+(b.c)) );
endmodule
