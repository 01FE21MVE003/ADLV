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
    //exists
    if(array.exists(16))
      $display("Index 8 exists in array");
    else
      $display("Index 8 does not exist in array");
    //first()
    array.first(index);
    $display("\tFirst entry is \t array[%0d] = %0d",index, array[index]);
    //last()
    array.last(index);
    $display("\tLast entry is \t array[%0d] = %0d",index, array[index]);
    //prev()
    array.prev(index);
    $display("\tEntry is array[%0d] = %0d",index, array[index]);
    //next()
    array.next(index);
    $display("\tEntry is array[%0d] = %0d",index, array[index]);
    //delete
    $display("[Before delete] Associative array size is %0d", array.size());
    array.delete();
    //delete
    $display("[After delete] Associative array size is %0d", array.size());
  end
endmodule
