class transaction;
  
  //declaring transaction items
  rand bit [1:0]addr;
  rand bit wren;
  rand bit rden;
  rand bit [7:0]wdata;
       bit [7:0]rdata;
       bit [1:0]cnt;
  
  //constraint to generate any one among write and read
  constraint wrrdc{wren != rden};
  
endclass
