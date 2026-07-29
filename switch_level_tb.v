module three_inputZC_TB ();

reg aa, bb, cc;
wire y0, y1;

three_inputZC TB1 (aa, bb, cc, y1, y0);

initial begin
	aa=1; bb=0; cc=1; #100; //to 01
	aa=0; bb=1; cc=0; #100; //to 10
	aa=1; bb=0; cc=1; #100; 
	aa=0; bb=0; cc=0; #100; //to 11
	aa=0; bb=1; cc=0; #100;                           
	aa=1; bb=1; cc=1; #100; //to 00
end

endmodule
