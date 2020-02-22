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
// System configuration name is FullAdderModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module FullAdderModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  FullAdderModuleA,
	input  FullAdderModuleB,
	input  FullAdderModuleCIn,
	output FullAdderModuleO,
	output FullAdderModuleCOut
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  FullAdderModule_TopLevel_FullAdderModuleA;
wire  FullAdderModule_TopLevel_FullAdderModuleB;
wire  FullAdderModule_TopLevel_FullAdderModuleCIn;
wire  FullAdderModule_TopLevel_FullAdderModuleO;
wire  FullAdderModule_TopLevel_FullAdderModuleCOut;
wire  FullAdderModule_TopLevel_FullAdderModule_A;
wire  FullAdderModule_TopLevel_FullAdderModule_B;
wire  FullAdderModule_TopLevel_FullAdderModule_CIn;
wire  FullAdderModule_TopLevel_FullAdderModule_O;
wire  FullAdderModule_TopLevel_FullAdderModule_COut;
wire  FullAdderModule_TopLevel_FullAdderModule_Zero = 1'b0;
wire  FullAdderModule_TopLevel_FullAdderModule_One = 1'b1;
wire  FullAdderModule_TopLevel_FullAdderModule_true = 1'b1;
wire  FullAdderModule_TopLevel_FullAdderModule_false = 1'b0;
wire  FullAdderModule_TopLevel_FullAdderModule_Inputs_A;
wire  FullAdderModule_TopLevel_FullAdderModule_Inputs_B;
wire  FullAdderModule_TopLevel_FullAdderModule_Inputs_CIn;
wire  FullAdderModule_TopLevel_FullAdderModule_P;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_1;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_2;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_1;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_2;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_1;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_2;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_1;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_2;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_1;
wire  FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_2;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_1 ^ FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_2;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_1 ^ FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_2;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_1 | FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_2;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_1 & FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_2;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_1 & FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_2;
	assign FullAdderModule_TopLevel_FullAdderModuleA = FullAdderModuleA;
	assign FullAdderModule_TopLevel_FullAdderModuleB = FullAdderModuleB;
	assign FullAdderModule_TopLevel_FullAdderModuleCIn = FullAdderModuleCIn;
// Top-level entity connections
assign FullAdderModuleO = FullAdderModule_TopLevel_FullAdderModuleO;
assign FullAdderModuleCOut = FullAdderModule_TopLevel_FullAdderModuleCOut;
assign FullAdderModule_TopLevel_FullAdderModule_A = FullAdderModule_TopLevel_FullAdderModuleA;
assign FullAdderModule_TopLevel_FullAdderModule_B = FullAdderModule_TopLevel_FullAdderModuleB;
assign FullAdderModule_TopLevel_FullAdderModule_CIn = FullAdderModule_TopLevel_FullAdderModuleCIn;
assign FullAdderModule_TopLevel_FullAdderModuleO = FullAdderModule_TopLevel_FullAdderModule_O;
assign FullAdderModule_TopLevel_FullAdderModuleCOut = FullAdderModule_TopLevel_FullAdderModule_COut;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_1 = FullAdderModule_TopLevel_FullAdderModule_Inputs_A;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr_2 = FullAdderModule_TopLevel_FullAdderModule_Inputs_B;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_1 = FullAdderModule_TopLevel_FullAdderModule_P;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr_2 = FullAdderModule_TopLevel_FullAdderModule_Inputs_CIn;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_1 = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr_2 = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_1 = FullAdderModule_TopLevel_FullAdderModule_Inputs_A;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F30T49_Expr_2 = FullAdderModule_TopLevel_FullAdderModule_Inputs_B;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_1 = FullAdderModule_TopLevel_FullAdderModule_P;
assign FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F55T69_Expr_2 = FullAdderModule_TopLevel_FullAdderModule_Inputs_CIn;
assign FullAdderModule_TopLevel_FullAdderModule_Inputs_A = FullAdderModule_TopLevel_FullAdderModule_A;
assign FullAdderModule_TopLevel_FullAdderModule_Inputs_B = FullAdderModule_TopLevel_FullAdderModule_B;
assign FullAdderModule_TopLevel_FullAdderModule_Inputs_CIn = FullAdderModule_TopLevel_FullAdderModule_CIn;
assign FullAdderModule_TopLevel_FullAdderModule_P = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L14F27T46_Expr;
assign FullAdderModule_TopLevel_FullAdderModule_O = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L16F26T40_Expr;
assign FullAdderModule_TopLevel_FullAdderModule_COut = FullAdderModule_TopLevel_FullAdderModule_FullAdder_L17F29T70_Expr;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
