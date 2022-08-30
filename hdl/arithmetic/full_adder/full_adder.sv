`ifndef "../half_adder/half_adder.sv"

module full_adder(input logic c_In,
                  input logic A,B,
                  output logic sum,c_Out);

    //Intermediary Logic
    logic ha0_S, ha0_C;
    logic ha1_C;

    //Half Adder Instantiation
    half_adder ha0(.A(A),.B(B),.sum(ha0_S),.c_Out(ha0_C));
    half_adder ha1(.A(ha0_S),.B(C_in),.sum(sum),.c_Out(ha1_C));

    //Compute Carry Out
    assign c_out = ha0_C | ha1_C;



endmodule

