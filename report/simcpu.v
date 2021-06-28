module test_cpu();
   

reg clk,rstd;
computer c(clk, rstd);
initial begin
	clk = 0;
	rstd = 0;
#5	rstd = 1;
// #100	rstd = 0;
	
        #800 $finish;
end

always #10 clk = ~clk;

endmodule

