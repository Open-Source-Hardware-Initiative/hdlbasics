/*
* This file contains a 2 input OR gate in systemverilog
*/

module or2(input logic A, B,
	   output logic C);

   	assign C = A | B;

endmodule
