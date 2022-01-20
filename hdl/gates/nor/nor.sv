/*
* This file contains a 2 input NOR gate in systemverilog
*/

module nor2(input logic A, B,
	   output logic C);

   	assign C = ~(A | B)

endmodule
