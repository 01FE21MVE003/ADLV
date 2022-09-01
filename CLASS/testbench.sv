// Code your testbench here
// or browse Examples
class sv_class;
  
  //class properties
  int x;
  
  //method 1
  task add(int i,j);
    x = i+j;
  endtask
  
  //method 2
  function int get();
    return x;
  endfunction
  
  //method 3
  task set(int i);
    x = i;
  endtask

endclass

module sv_class_ex;

    sv_class class1 = new();
    sv_class class2 = new();
    initial begin
    //Accessing class methods
    class1.set(10);
    class2.set(20);
    $display("\t class1 :: Value of x = %0d",class1.get());
    $display("\t class2 :: Value of x = %0d",class2.get());
   end
 endmodule
