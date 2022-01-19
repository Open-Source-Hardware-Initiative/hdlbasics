/*
* This file contains a 2 input XOR gate in systemverilog
*/

module xor2(input logic A, B,
	   output logic C);

   	assign C = A ^ B;

endmodule
