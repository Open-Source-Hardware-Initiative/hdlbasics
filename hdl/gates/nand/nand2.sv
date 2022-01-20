/*
* Description : This file contains a 2 input and gate
*/

module nand2(input logic A, B,
            output logic C);

    assign C = ~(A & B);

endmodule
