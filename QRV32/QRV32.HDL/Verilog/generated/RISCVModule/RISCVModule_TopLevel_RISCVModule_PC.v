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
// System configuration name is RISCVModule_TopLevel_RISCVModule_PC, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module RISCVModule_TopLevel_RISCVModule_PC (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  BoardSignals_Clock,
	input  BoardSignals_Reset,
	input  BoardSignals_Running,
	input  BoardSignals_Starting,
	input  BoardSignals_Started,
	input  WE,
	input  Overwrite,
	input  [32: 1] Offset,
	output PCMisaligned,
	output [32: 1] PC
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  PCModule_L23F78T79_Expr = 1'b0;
wire  Inputs_WE;
wire  Inputs_Overwrite;
wire  [32:1] Inputs_Offset;
reg  [32:1] NextState_PC = 32'b00000000000000000000000000000000;
wire  [33:1] internalNextPC;
wire  [2:1] PCModule_L23F37T74_Source;
wire  [2:1] PCModule_L23F53T73_Index;
reg  [32:1] State_PC = 32'b00000000000000000000000000000000;
wire  [32:1] State_PCDefault = 32'b00000000000000000000000000000000;
wire  [34:1] PCModule_L22F74T98_Expr;
wire signed  [34:1] PCModule_L22F74T98_Expr_1;
wire signed  [34:1] PCModule_L22F74T98_Expr_2;
wire  PCModule_L23F37T79_Expr;
wire signed  [3:1] PCModule_L23F37T79_ExprLhs;
wire signed  [3:1] PCModule_L23F37T79_ExprRhs;
reg  [33:1] PCModule_L22F39T98_Lookup = 33'b000000000000000000000000000000000;
wire  PCModule_L22F39T98_LookupMultiplexerAddress;
wire  [33:1] PCModule_L22F39T98_Lookup1;
wire  [33:1] PCModule_L22F39T98_Lookup2;
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
State_PC <= State_PCDefault;
end
else begin
State_PC <= NextState_PC;
end
end
assign PCModule_L23F37T79_Expr = PCModule_L23F37T79_ExprLhs != PCModule_L23F37T79_ExprRhs ? 1'b1 : 1'b0;
assign PCModule_L22F74T98_Expr = PCModule_L22F74T98_Expr_1 + PCModule_L22F74T98_Expr_2;
always @*
begin
case (PCModule_L22F39T98_LookupMultiplexerAddress)
    'b0:
PCModule_L22F39T98_Lookup = PCModule_L22F39T98_Lookup1;
    'b1:
PCModule_L22F39T98_Lookup = PCModule_L22F39T98_Lookup2;
  default:
PCModule_L22F39T98_Lookup = 'b000000000000000000000000000000000;
endcase

end
always @*
begin
NextState_PC = State_PC/*cast*/;
if ( Inputs_WE == 1 ) begin
NextState_PC = internalNextPC[32:1]/*truncate*/;
end

end
assign PCModule_L22F39T98_LookupMultiplexerAddress = Inputs_Overwrite;
assign PCModule_L23F37T79_ExprLhs = { {1{1'b0}}, PCModule_L23F37T74_Source }/*expand*/;
assign PCModule_L23F37T79_ExprRhs = { {2{1'b0}}, PCModule_L23F78T79_Expr }/*expand*/;
assign PCModule_L22F74T98_Expr_1 = { {2{1'b0}}, State_PC }/*expand*/;
assign PCModule_L22F74T98_Expr_2 = { {2{1'b0}}, Inputs_Offset }/*expand*/;
assign Inputs_WE = WE;
assign Inputs_Overwrite = Overwrite;
assign Inputs_Offset = Offset/*cast*/;
assign internalNextPC = PCModule_L22F39T98_Lookup/*cast*/;
assign PCModule_L23F53T73_Index = internalNextPC[2:1]/*cast*/;
assign PCModule_L23F37T74_Source = PCModule_L23F53T73_Index/*cast*/;
assign PCMisaligned = PCModule_L23F37T79_Expr;
assign PC = State_PC/*cast*/;
assign PCModule_L22F39T98_Lookup1 = PCModule_L22F74T98_Expr[33:1]/*truncate*/;
assign PCModule_L22F39T98_Lookup2 = { {1{1'b0}}, Inputs_Offset }/*expand*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
