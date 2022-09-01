// Code your testbench here
// or browse Examples
class address_range;
  
  //class properties
  bit[31:0] start_address;
  bit[31:0] end_address;
  function new();
    start_address = 10;
    end_address = 50;
  endfunction
endclass

class packet;
  
  //class properties
  bit[31:0] addr;
  bit[31:0] data;
  address_range ar; //class handle
  
  //constructor
  function new();
    addr = 32'h10;
    data = 32'hFF;
    ar = new(); //creating object
  endfunction
  
  //method to display
  function void display();
    $display("------------");
    $display("\t addr = %0h",addr);
    $display("\t data = %0h",data);
    $display("\t start_address = %0d",ar.start_address);
    $display("\t end_address = %0d",ar.end_address);
    $display("------------");
  endfunction

endclass


module shallow_copy;
packet pkt1;
packet pkt2;
  
    initial begin
      pkt1 = new();
      $display("\t**** Calling pkt1 display ****");
      pkt1.display();
      pkt2 = new pkt1;
      $display("\t**** Calling pkt2 display ****");
      pkt2.display();
      
      //changing values with pkt2 handle
      pkt2.addr = 32'hAB;
      pkt2.ar.start_address = 60;
      pkt2.ar.end_address = 100;
      
      //changes made with pkt2 handle will not reflect on pkt1
      $display("\t**** Calling pkt1 display after changing pkt2 properties ****");
      pkt1.display();
      $display("\t**** Calling pkt2 display after changing pkt2 properties ****");
      pkt2.display();
   end
 endmodule
