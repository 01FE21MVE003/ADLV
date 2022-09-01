// Code your testbench here
// or browse Examples
module associative_array;
  int array[*];
  int index;
  initial begin
    repeat(5) begin
      array[index]=index*2;
      index = index+4;
    end
    //num()
    $display("\tNumber of entries in array is %0d",array.num());
    $display("---Associative array entries and values are---");
    foreach(array[i]) $display("\t array[%0d]\t= %0d",i,array[i]);
    $display("------------");
    //first()
    array.first(index);
    $display("\tFirst entry is \t array[%0d] = %0d",index, array[index]);
    //last()
    array.last(index);
    $display("\tLast entry is \t array[%0d] = %0d",index, array[index]);
  end
endmodule
