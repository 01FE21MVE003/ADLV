// Code your testbench here
// or browse Examples
class packet;
  rand bit[3:0] addr;
  rand bit[3:0] start_addr;
  rand bit[3:0] end_addr;
  constraint addr_range {addr inside{[start_addr:end_addr]};}
endclass

//addr inside{[5:10]};}
//addr inside{[1,3,5,7,9]};}
//addr inside{[1,3,[5:10],12,[13:15]};}
//addr !(inside{[5:10]});}

module constr_inside;
  initial begin
    packet pkt;
    pkt = new();
    $display("------------");
    repeat(10) begin
      pkt.randomize();
      $display("\t start_addr = %0d, \t end_addr = %0d", pkt.start_addr,end_addr);
      $display("\t adddr = %0d", pkt.addr);
      $display("------------");
    end
  end
endmodule
