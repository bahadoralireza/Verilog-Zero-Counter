module seven_inputZC (input a,b,c,d,e,f,g, output w2,w1,w0);
	wire [10:1]J;
	not #(5,7) not1 (J[5],J[1]),
	        not2 (J[6],J[2]),
        	not3 (J[7],J[3]),
	        not4 (J[8],J[4]),
        	not5 (J[10],J[9]);
	three_inputZC ZC1 (a, b, c, J[2], J[1]),
        	ZC2 (d, e, f, J[4],J[3]),
        	ZC3 (g, J[5], J[7], J[9],w0),
        	ZC4 (J[6],J[8],J[10],w2,w1);
endmodule