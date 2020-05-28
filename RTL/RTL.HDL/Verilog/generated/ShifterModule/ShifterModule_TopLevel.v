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
// System configuration name is ShifterModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module ShifterModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [7: 0] Value,
	input  [2: 0] ShiftBy,
	output [7: 0] SHLL,
	output [7: 0] SHRL,
	output signed [7: 0] SHRA
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [8:1] Inputs_Value;
wire  [3:1] Inputs_ShiftBy;
wire  [8:1] ShifterModule_L14F36T59_SignChange;
wire signed  [8:1] ShifterModule_L15F36T57_SignChange;
wire  [8:1] ShifterModule_L13F36T66_Expr;
wire  [8:1] ShifterModule_L13F36T66_Expr_1;
wire  [8:1] ShifterModule_L14F36T77_Expr;
wire  [8:1] ShifterModule_L14F36T77_Expr_1;
wire signed  [8:1] ShifterModule_L15F36T75_Expr;
wire signed  [8:1] ShifterModule_L15F36T75_Expr_1;
assign ShifterModule_L13F36T66_Expr = ShifterModule_L13F36T66_Expr_1 << Inputs_ShiftBy;
assign ShifterModule_L14F36T77_Expr = ShifterModule_L14F36T77_Expr_1 >> Inputs_ShiftBy;
assign ShifterModule_L15F36T75_Expr = ShifterModule_L15F36T75_Expr_1 >>> Inputs_ShiftBy;
assign ShifterModule_L13F36T66_Expr_1 = Inputs_Value/*cast*/;
assign ShifterModule_L14F36T77_Expr_1 = ShifterModule_L14F36T59_SignChange/*cast*/;
assign ShifterModule_L15F36T75_Expr_1 = ShifterModule_L15F36T57_SignChange/*cast*/;
assign Inputs_Value = Value/*cast*/;
assign Inputs_ShiftBy = ShiftBy/*cast*/;
assign SHLL = ShifterModule_L13F36T66_Expr/*cast*/;
assign ShifterModule_L14F36T59_SignChange = Inputs_Value/*cast*/;
assign SHRL = ShifterModule_L14F36T77_Expr/*cast*/;
assign ShifterModule_L15F36T57_SignChange = Inputs_Value/*cast*/;
assign SHRA = ShifterModule_L15F36T75_Expr/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
