// Code your testbench here
// or browse Examples
module dynamic_array;
  bit[7:0] d_array1[];
  int d_array2[];
  initial begin
    $display("Before Memory Allocation");
    $display("\t Size of array1 %0d",d_array1.size());
    $display("\t Size of array2 %0d",d_array2.size());
    
    d_array1 = new[4];
    d_array2 = new[6];
    $display("After Memory Allocation");
    $display("\t Size of array1 %0d",d_array1.size());
    $display("\t Size of array2 %0d",d_array2.size());
    
    d_array1 = {0,1,2,3};
    foreach(d_array2[j]) d_array2[j]=j+1;
    $display("---d_array1 Values are---");
    foreach(d_array1[i]) 
      $display("\t d_array1[%0d] = %0d",i,d_array1[i]);
    $display("--------------------");
    $display("---d_array2 Values are---");
    foreach(d_array2[i]) 
      $display("\t d_array2[%0d] = %0d",i,d_array2[i]);
    $display("--------------------");
    
    d_array1 = new[6];
    $display("\t Size of array1 %0d",d_array1.size());
    $display("---d_array1 Values are---");
    foreach(d_array1[i]) 
      $display("\t d_array1[%0d] = %0d",i,d_array1[i]);
    
    d_array2 = new[10](d_array2);
    $display("\t Size of array2 %0d",d_array2.size());
    $display("---d_array2 Values are---");
    foreach(d_array2[i]) 
      $display("\t d_array2[%0d] = %0d",i,d_array2[i]);
  end
endmodule
