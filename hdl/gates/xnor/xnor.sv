/*
* This file contains a 2 input XNOR gate in systemverilog
*/

module xnor2(input logic A, B,
	   output logic C);

   	assign C = ~(A ^ B);

endmodule
