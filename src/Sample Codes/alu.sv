module alu(
  input logic [2:0] alu_op,
  input logic [7:0] a, b,
  output logic [7:0] result
);

  always_comb begin
    case(alu_op)
      3'b000: result = a + b;
      3'b001: result = a - b;
      3'b010: result = a | b;
      3'b011: result = a & b;
      3'b110: result = b;  // MOV operation
      default: result = 8'b0;
    endcase
  end

endmodule