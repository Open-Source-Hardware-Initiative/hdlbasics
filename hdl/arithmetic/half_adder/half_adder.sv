module half_adder(input logic A, B,
                  output logic sum, c_Out);

    assign sum = A ^ B;
    assign c_Out = A & B;


endmodule
