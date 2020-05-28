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
// System configuration name is ALUModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module ALUModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [31: 0] Op1,
	input  [31: 0] Op2,
	input  [4: 0] SHAMT,
	output [31: 0] ADD,
	output ADDOverflow,
	output [32: 0] resAND,
	output [32: 0] resOR,
	output [32: 0] resXOR,
	output [31: 0] SHLL,
	output [31: 0] SHRL,
	output [31: 0] SHRA
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
wire  [5:1] Inputs_SHAMT;
wire signed  [33:1] Sum;
wire signed  [32:1] ALUModule_L15F28T47_SignChange;
wire signed  [32:1] ALUModule_L15F50T69_SignChange;
wire  [32:1] ALUModule_L17F35T45_Index;
wire  ALUModule_L18F36T43_Index;
wire  [32:1] ALUModule_L24F36T71_Index;
wire  [32:1] ALUModule_L25F37T58_SignChange;
wire  [32:1] ALUModule_L25F36T82_Index;
wire signed  [32:1] ALUModule_L26F37T56_SignChange;
wire  [32:1] ALUModule_L26F36T80_Index;
wire  [32:1] ALUModule_L20F38T61_Expr;
wire  [32:1] ALUModule_L20F38T61_Expr_1;
wire  [32:1] ALUModule_L20F38T61_Expr_2;
wire  [32:1] ALUModule_L21F37T60_Expr;
wire  [32:1] ALUModule_L21F37T60_Expr_1;
wire  [32:1] ALUModule_L21F37T60_Expr_2;
wire  [32:1] ALUModule_L22F38T61_Expr;
wire  [32:1] ALUModule_L22F38T61_Expr_1;
wire  [32:1] ALUModule_L22F38T61_Expr_2;
wire  [32:1] ALUModule_L24F37T63_Expr;
wire  [32:1] ALUModule_L24F37T63_Expr_1;
wire  [32:1] ALUModule_L25F37T74_Expr;
wire  [32:1] ALUModule_L25F37T74_Expr_1;
wire signed  [32:1] ALUModule_L26F37T72_Expr;
wire signed  [32:1] ALUModule_L26F37T72_Expr_1;
wire signed  [33:1] ALUModule_L15F28T69_Expr;
wire signed  [33:1] ALUModule_L15F28T69_Expr_1;
wire signed  [33:1] ALUModule_L15F28T69_Expr_2;
assign ALUModule_L20F38T61_Expr = ALUModule_L20F38T61_Expr_1 & ALUModule_L20F38T61_Expr_2;
assign ALUModule_L21F37T60_Expr = ALUModule_L21F37T60_Expr_1 | ALUModule_L21F37T60_Expr_2;
assign ALUModule_L22F38T61_Expr = ALUModule_L22F38T61_Expr_1 ^ ALUModule_L22F38T61_Expr_2;
assign ALUModule_L24F37T63_Expr = ALUModule_L24F37T63_Expr_1 << Inputs_SHAMT;
assign ALUModule_L25F37T74_Expr = ALUModule_L25F37T74_Expr_1 >> Inputs_SHAMT;
assign ALUModule_L26F37T72_Expr = ALUModule_L26F37T72_Expr_1 >> Inputs_SHAMT;
assign ALUModule_L15F28T69_Expr = ALUModule_L15F28T69_Expr_1 + ALUModule_L15F28T69_Expr_2;
assign ALUModule_L20F38T61_Expr_1 = Inputs_Op1/*cast*/;
assign ALUModule_L20F38T61_Expr_2 = Inputs_Op2/*cast*/;
assign ALUModule_L21F37T60_Expr_1 = Inputs_Op1/*cast*/;
assign ALUModule_L21F37T60_Expr_2 = Inputs_Op2/*cast*/;
assign ALUModule_L22F38T61_Expr_1 = Inputs_Op1/*cast*/;
assign ALUModule_L22F38T61_Expr_2 = Inputs_Op2/*cast*/;
assign ALUModule_L24F37T63_Expr_1 = Inputs_Op1/*cast*/;
assign ALUModule_L25F37T74_Expr_1 = ALUModule_L25F37T58_SignChange/*cast*/;
assign ALUModule_L26F37T72_Expr_1 = ALUModule_L26F37T56_SignChange/*cast*/;
assign ALUModule_L15F28T69_Expr_1 = { {1{ALUModule_L15F28T47_SignChange[32]}}, ALUModule_L15F28T47_SignChange }/*expand*/;
assign ALUModule_L15F28T69_Expr_2 = { {1{ALUModule_L15F50T69_SignChange[32]}}, ALUModule_L15F50T69_SignChange }/*expand*/;
assign Inputs_Op1 = Op1/*cast*/;
assign Inputs_Op2 = Op2/*cast*/;
assign Inputs_SHAMT = SHAMT/*cast*/;
assign ALUModule_L15F28T47_SignChange = Inputs_Op1/*cast*/;
assign ALUModule_L15F50T69_SignChange = Inputs_Op2/*cast*/;
assign Sum = ALUModule_L15F28T69_Expr/*cast*/;
assign ALUModule_L17F35T45_Index = Sum[32:1]/*cast*/;
assign ADD = ALUModule_L17F35T45_Index/*cast*/;
assign ALUModule_L18F36T43_Index = Sum[33];
assign ADDOverflow = ALUModule_L18F36T43_Index;
assign resAND = { {1{1'b0}}, ALUModule_L20F38T61_Expr }/*expand*/;
assign resOR = { {1{1'b0}}, ALUModule_L21F37T60_Expr }/*expand*/;
assign resXOR = { {1{1'b0}}, ALUModule_L22F38T61_Expr }/*expand*/;
assign ALUModule_L24F36T71_Index = ALUModule_L24F37T63_Expr/*cast*/;
assign SHLL = ALUModule_L24F36T71_Index/*cast*/;
assign ALUModule_L25F37T58_SignChange = Inputs_Op1/*cast*/;
assign ALUModule_L25F36T82_Index = ALUModule_L25F37T74_Expr/*cast*/;
assign SHRL = ALUModule_L25F36T82_Index/*cast*/;
assign ALUModule_L26F37T56_SignChange = Inputs_Op1/*cast*/;
assign ALUModule_L26F36T80_Index = ALUModule_L26F37T72_Expr/*cast*/;
assign SHRA = ALUModule_L26F36T80_Index/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
