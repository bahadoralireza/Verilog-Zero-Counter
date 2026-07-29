module GL_three_inputZC(input a,b,c, output y1,y0);
	wire [8:1]J;
	not#(12,14) not1 (j[4],a);
	xor#(12,14) xor1 (j[7],b,c);
	xnor xnor1 (j[5],b,c);
	and and1 (J[2],b,c),
        	and2 (J[6],j[4],j[5]),
        	and2 (J[8],a,j[7]);
	nor nor1 (J[1],b,c),
        	nor2 (J[3],b,c),
        	nor3 (J[6],J[4],y1),
        	nor4 (J[5],a,b,c);
	or#(15,14) or1 (y1,J[1],J[3]),
		or2 (y0,J[6],J[8]);
endmodule
