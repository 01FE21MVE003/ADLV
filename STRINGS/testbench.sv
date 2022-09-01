// Code your testbench here
// or browse Examples

module string_datatype;
// declaration
  string s1="HELLO";
  string s2={"Hi,"," ",s1};
  bit[31:0]b=128;
  string s3=b;//sets 128 to 3
  initial begin
    //display values
    $display("string 1 s1 = %0s",s1);
    $display("string 2 s2 = %0s",s2);
    $display("string 3 s3 = %0d bit b=%0d",s3,b);
  end
endmodule
