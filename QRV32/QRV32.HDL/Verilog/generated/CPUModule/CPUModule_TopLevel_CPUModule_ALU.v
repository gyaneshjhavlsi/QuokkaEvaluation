`default_nettype none
// PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
// * This file was generated by Quokka FPGA Toolkit.
// * Generated code is your property, do whatever you want with it
// * Place custom code between [BEGIN USER ***] and [END USER ***].
// * CAUTION: All code outside of [USER] scope is subject to regeneration.
// * Bad things happen sometimes in developer's life,
//   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
// * Internal structure of code is subject to change.
//   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
// * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
// * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
// 
// DISCLAIMER:
//   Code comes AS-IS, it is your responsibility to make sure it is working as expected
//   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
// 
// System configuration name is CPUModule_TopLevel_CPUModule_ALU, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module CPUModule_TopLevel_CPUModule_ALU (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [32: 1] Op1,
	input  [32: 1] Op2,
	output [32: 1] ADD,
	output ADDOverflow
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [32:1] Inputs_Op1;
wire  [32:1] Inputs_Op2;
wire  [33:1] Sum;
wire  [32:1] ALUModule_L15F35T50_Resize;
wire  ALUModule_L16F36T43_Index;
wire  [34:1] ALUModule_L13F28T51_Expr;
wire signed  [34:1] ALUModule_L13F28T51_Expr_1;
wire signed  [34:1] ALUModule_L13F28T51_Expr_2;
assign ALUModule_L13F28T51_Expr = ALUModule_L13F28T51_Expr_1 + ALUModule_L13F28T51_Expr_2;
assign ALUModule_L13F28T51_Expr_1 = { {2{1'b0}}, Inputs_Op1 }/*expand*/;
assign ALUModule_L13F28T51_Expr_2 = { {2{1'b0}}, Inputs_Op2 }/*expand*/;
assign Inputs_Op1 = Op1/*cast*/;
assign Inputs_Op2 = Op2/*cast*/;
assign Sum = ALUModule_L13F28T51_Expr[33:1]/*truncate*/;
assign ALUModule_L15F35T50_Resize = Sum[32:1]/*truncate*/;
assign ADD = ALUModule_L15F35T50_Resize/*cast*/;
assign ALUModule_L16F36T43_Index = Sum[33];
assign ADDOverflow = ALUModule_L16F36T43_Index;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule