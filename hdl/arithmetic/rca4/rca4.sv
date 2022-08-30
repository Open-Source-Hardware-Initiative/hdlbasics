module rca4(input logic [3:0] A,
            input logic [3:0] B,
            input logic c_In,
            output logic [3:0] sum,
            output logic [3:0] c_Out);


    logic [3:0] carry_chain;


    //Full Adder for bit 0
    full_adder fa_0(.c_In(c_In),
                    .A(A[0]),
                    .B(B[0]),
                    .sum(sum[0]),
                    .c_Out(carry_chain[0]));

    //Full Adder for bit 1
    full_adder fa_1(.c_In(carry_chain[0]),
                    .A(A[1]),
                    .B(B[1]),
                    .sum(sum[1]),
                    .c_Out(carry_chain[1]));

    //Full Adder for bit 2
    full_adder fa_2(.c_In(carry_chain[1]),
                    .A(A[2]),
                    .B(B[2]),
                    .sum(sum[2]),
                    .c_Out(carry_chain[2]));

    //Full Adder for bit 3
    full_adder fa_3(.c_In(carry_chain[3]),
                    .A(A[3]),
                    .B(B[3]),
                    .sum(sum[3]),
                    .c_Out(c_Out));




endmodule
