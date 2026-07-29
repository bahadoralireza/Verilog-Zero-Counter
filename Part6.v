module EX_seven_inputZC (input a,b,c,d,e,f,g, output y2,y1,y0);
	wire [10:1]J;
	not #(5,7) not1 (J[5],J[1]),
        	not2 (J[6],J[3]),
        	not3 (J[8],J[7]),
        	not4 (J[9],J[2]),
        	not5 (J[10],J[4]);
	EX_three_inputZC (input a,b,c, output y1,y0);
		assign #(15,14) y1 = ( (~a.(~b+~c)) + (~b.~c) );
		assign #(27,28) y0 = ( (a.((~b.c)+(b.~c))) + (~a.((~b.~c)+(b.c)) );
	EX_three_inputZC ZC1 (a,b,c,J[2],J[1]),
        	ZC2 (d,e,f,J[4],J[3]),
        	ZC3 (J[5],J[6],g,J[7],y0),
        	ZC4 (J[8],J[9],J[10],y2,y1);
endmodule