// Code your testbench here
// or browse Examples
class parent_class;
  bit[31:0] address;
endclass

class child_class extends parent_class;
  bit[31:0] data;
  endclass
       
module inheritance;
  initial begin
    child_class c = new();
    c.address= 10;
    c.data = 50;
    $display("Value of address = %0d",c.address);
    $display("Value of data = %0d",c.data); 
    end
endmodule
