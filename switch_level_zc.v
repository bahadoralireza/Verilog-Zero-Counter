module three_inputZC(input a, b, c, output y1, y0);
	supply1 vdd;
	supply0 gnd;
	wire [16:1]j;
	not#(5, 7) na (j[14], a),
		nb (j[15], b),
		nc (j[16], c);
	pmos#(5, 6, 7) p1 (j[1], vdd, b),
        	p2 (j[2], vdd, b),
        	p3 (j[2], vdd, c),
	        p4 (y1, j[1], c),
        	p5 (y1, j[2], a),
	        p6 (j[3], vdd, c),
        	p7 (j[4], vdd, j[16]),
        	p8 (j[5], vdd, j[16]),
        	p9 (j[6], vdd, c),
        	p10 (j[7], j[3], b),
        	p11 (j[7], j[4], j[15]),
        	p12 (j[8], j[5], b),
        	p13 (j[8], j[6], j[15]),
        	p14 (y0, j[7], a),
        	p15 (y0, j[8], j[14]);
	nmos#(3, 4, 5) n1 (j[10], gnd, a),
		n2 (j[9], gnd, c),
		n3 (j[10], j[9], b),
		n4 (y1, j[10], b),
		n5 (y1, j[10], c),
		n6 (j[12], gnd, j[14]),
		n7 (j[11], gnd, j[15]),
		n8 (j[11], gnd, c),
		n9 (j[12], j[11], b),
		n10 (j[12], j[11], j[16]),
		n11 (y0, j[12], a),
		n12 (j[13], j[12], j[15]),
		n13 (j[13], j[12], j[16]),
		n14 (y0, j[13], b),
		n15 (y0, j[13], c);
endmodule
