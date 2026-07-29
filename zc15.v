module fifteen_inputZC (input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o, output x3,x2,x1,x0);
	wire [16:1]J;
	not #(5,7) not1 (J[7],J[1]),
        	not2 (J[8],J[2]),
        	not3 (J[9],J[3]),
        	not4 (J[10],J[4]),
        	not5 (J[11],J[5]),
        	not6 (J[12],J[6]),
        	not7 (J[14],J[13]),
        	not8 (J[16],J[15]);
	three_inputZC ZC3 (o,J[7],J[10],J[11],x0),
        	ZC4 (J[8],J[11],J[14],J[15],x1),
        	ZC5 (J[9],J[12],J[16],x3,x2);
	seven_inputZC ZC1 (a,b,c,d,e,f,g,J[3],J[2],J[1]),
       		ZC2 (h,i,j,k,l,m,n,J[6],J[5],J[4]);
endmodule
