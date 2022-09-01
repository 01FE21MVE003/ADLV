// Code your testbench here
// or browse Examples
class packet;
  
  //class properties
  bit[31:0] addr;
  bit[31:0] data;
  bit write;
  string pkttype;
  
  //constructor
  function new(bit[31:0] addr, data, bit write, string pkttype);
    addr = addr;
    data = data;
    write = write;
    pkttype = pkttype;
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

module sv_constructor;
packet pkt;
    
    initial begin
      pkt = new(32'h10, 32'hFF, 1, "GOOD PKT");
      pkt.display();
   end
 endmodule
