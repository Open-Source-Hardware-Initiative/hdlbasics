/*
* Description : This file contains a testbench for the 2 input xnor gate
*/


module xnor2_tb();


logic A;
logic B;
logic C;


//Instantiate Device Under Test
xnor2 DUT(.A(A),.B(B),.C(C));


initial
  begin
    //Set A and B to 0
    A = 1'b0;
    B = 1'b0;
    #1;
    //Check that C is correct
    assert(C == 1'b1);
    
    //Wait 5 ns
    #5;
    
    //Set AB to 01
    A = 1'b0;
    B = 1'b1;
    #1;
    //Check that C is correct
    assert(C == 1'b0);
    
    //Wait 5 ns
    #5;
    
   //Set AB to 10
    A = 1'b1;
    B = 1'b0;
    #1;
    //Check that C is correct
    assert(C == 1'b0);
    
    //Wait 5 ns
    #5;
    
    //Set AB to 11
    
    A = 1'b1;
    B = 1'b1;
    #1;
    //Check that C is correct
    assert(C == 1'b1);
    
    #5; 
    
    $stop;
  
  end
  
endmodule

