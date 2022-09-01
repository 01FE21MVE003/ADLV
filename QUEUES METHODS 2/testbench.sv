// Code your testbench here
// or browse Examples
module queues_array;
  //declaration
  bit[31:0]Queue_1[$];//unbounded queue
  int lvar;
  initial begin
    //queue initialization
    Queue_1 = {0,1,2,3};
    //size method
    $display("--Queue_1 size is %0d--",Queue_1.size());
    //push_front method
    Queue_1.push_front(22);
    $display("--Queue_1 size after push_front is %0d--",Queue_1.size());
    //push_back method
    Queue_1.push_back(44);
    $display("--Queue_1 size after push_back is %0d--",Queue_1.size());
    //pop_front method
    lvar = Queue_1.pop_front();
    $display("--Queue_1 size after pop_front is %0d--",lvar);
    //pop_back method
    lvar = Queue_1.pop_back();
    $display("--Queue_1 size after pop_back is %0d--",lvar);
  end
endmodule
