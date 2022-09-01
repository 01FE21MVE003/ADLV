// Code your testbench here
// or browse Examples
class packet;
  
  //class properties
  bit[31:0] addr;
  bit[31:0] data;
  bit write;
  string pkttype;
  
  //constructor
  function new();
    addr = 32'h10;
    data = 32'hFF;
    write = 1;
    pkttype = "GOOD PKT";
  endfunction
  
  function void display();
    $display("------------");
    $display("\t addr = %0h",addr);
    $display("\t data = %0h",data);
    $display("\t write = %0h",write);
    $display("\t pkttype = %0s",pkttype);
    $display("------------");
  endfunction

endclass


module class_assignment;
packet pkt1;
packet pkt2;
  
    initial begin
      pkt1 = new();
      $display("\t**** Calling pkt1 display ****");
      pkt1.display();
      pkt2 = pkt1;
      $display("\t**** Calling pkt2 display ****");
      pkt2.display();
      
      //changing values with pkt2 handle
      pkt2.addr = 32'hAB;
      pkt2.pkttype = "BAD PKT";
      
      //changes made with pkt2 handle will reflect on pkt1
      $display("\t**** Calling pkt1 display ****");
      pkt1.display();
   end
 endmodule
