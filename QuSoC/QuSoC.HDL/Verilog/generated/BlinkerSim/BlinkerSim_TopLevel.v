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
// System configuration name is BlinkerSim_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module BlinkerSim_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	output [7: 0] Counter,
	output [31: 0] CPUAddress,
	output CPUMemRead,
	output CPUMemWrite,
	output [31: 0] CPUMemReadData,
	output SOCMemReady,
	output CPUHalted,
	output BlockRAMWE,
	output [7: 0] DbgState,
	output signed [31: 0] DbgWBData,
	output DbgWDDataReady,
	output [7: 0] UARTWriteData
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [2:1] QuSoCModule_L71F58T59_Expr = 2'b10;
wire  [2:1] QuSoCModule_L72F81T82_Expr = 2'b11;
wire  [2:1] QuSoCModule_L77F27T28_Expr = 2'b10;
wire  QuSoCModule_L80F27T28_Expr = 1'b1;
wire  QuSoCModule_L87F33T34_Expr = 1'b0;
wire  [8:1] QuSoCModule_L88F32T45_Expr = 8'b11111111;
wire  QuSoCModule_L89F35T36_Expr = 1'b1;
wire  [16:1] QuSoCModule_L90F36T51_Expr = 16'b1111111111111111;
wire  [32:1] QuSoCModule_L91F35T48_Expr = 32'b11111111111111111111111111111111;
wire  QuSoCModule_L64F31T33_Expr = 1'b0;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L116F36T41_Expr = 1'b0;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L117F33T38_Expr = 1'b0;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F26T27_Expr = 1'b0;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L125F25L129T26_QuSoCModule_L127F52T56_Expr = 1'b1;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L125F25L129T26_QuSoCModule_L128F50T54_Expr = 1'b1;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F26T27_Expr = 1'b1;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L133F46T50_Expr = 1'b1;
wire  [2:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F26T27_Expr = 2'b10;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L138F45T49_Expr = 1'b1;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L139F46T50_Expr = 1'b1;
wire  QuSoCModule_L101F49T50_Expr = 1'b0;
reg  NextState_BlockRAMWE = 1'b0;
reg  NextState_MemReady = 1'b0;
reg  [8:1] NextState_Counter = 8'b00000000;
reg  NextState_UART_TX = 1'b0;
wire  [32:1] internalMemAddress;
wire  [32:1] wordAddress;
wire  [5:1] byteAddress;
wire  [32:1] uartReadData;
wire  [32:1] internalMemReadData;
wire  internalMemReady;
wire  [32:1] mask;
wire  [32:1] blockRAMWriteData;
wire  [22:1] memSegment;
wire  [10:1] blockRamAddress;
wire  [2:1] uartAddress;
wire  [32:1] CPU_BaseAddress;
wire  [32:1] CPU_MemReadData;
wire  CPU_MemReady;
wire  [8:1] CPU_DbgState;
wire signed  [32:1] CPU_DbgWBData;
wire  CPU_DbgWDDataReady;
wire  CPU_MemRead;
wire  [32:1] CPU_MemAddress;
wire  CPU_IsHalted;
wire  CPU_MemWrite;
wire  [32:1] CPU_MemWriteData;
wire  [3:1] CPU_MemWriteMode;
wire  [32:1] QuSoCModule_L70F43T74_Source;
wire  [2:1] QuSoCModule_L72F36T77_Source;
wire  [2:1] QuSoCModule_L72F52T76_Index;
wire  [8:1] QuSoCModule_L74F37T77_Source;
wire  [8:1] QuSoCModule_L74F53T76_Index;
wire  [32:1] QuSoCModule_L74F37T89_Resize;
wire  [32:1] QuSoCModule_L81F15T40_Resize;
wire  [8:1] QuSoCModule_L88F16T46_Source;
wire  [32:1] QuSoCModule_L88F15T74_Resize;
wire  [16:1] QuSoCModule_L90F20T52_Source;
wire  [32:1] QuSoCModule_L90F19T80_Resize;
wire  [32:1] QuSoCModule_L91F19T49_Source;
wire  [22:1] QuSoCModule_L96F35T54_Index;
wire  [10:1] QuSoCModule_L97F40T57_Index;
wire  [2:1] QuSoCModule_L99F36T60_Index;
wire  [8:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L121F25T41_Cast;
wire  [8:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L132F45T67_Index;
wire  [8:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L137F55T77_Cast;
reg  [8:1] State_UARTDefault = 8'b00000000;
wire  [8:1] QuSoCModule_L41F32T51_Cast;
wire  [8:1] QuSoCModule_L101F38T51_Index;
wire  [32:1] CPUBaseAddressCPU_BaseAddressHardLink;
wire  [32:1] CPUMemReadDataCPU_MemReadDataHardLink;
wire  CPUMemReadyCPU_MemReadyHardLink;
wire  [8:1] CPUDbgStateCPU_DbgStateHardLink;
wire  [32:1] CPUDbgWBDataCPU_DbgWBDataHardLink;
wire  CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink;
wire  CPUMemReadCPU_MemReadHardLink;
wire  [32:1] CPUMemAddressCPU_MemAddressHardLink;
wire  CPUIsHaltedCPU_IsHaltedHardLink;
wire  CPUMemWriteCPU_MemWriteHardLink;
wire  [32:1] CPUMemWriteDataCPU_MemWriteDataHardLink;
wire  [3:1] CPUMemWriteModeCPU_MemWriteModeHardLink;
reg  State_BlockRAMWE = 1'b0;
wire  State_BlockRAMWEDefault = 1'b0;
reg  [32:1] State_MemReadData = 32'b00000000000000000000000000000000;
reg  State_MemReady = 1'b0;
wire  State_MemReadyDefault = 1'b0;
reg  [8:1] State_Counter = 8'b00000000;
wire  [8:1] State_CounterDefault = 8'b00000000;
reg  State_UART_TX = 1'b0;
wire  State_UART_TXDefault = 1'b0;
wire  [32:1] QuSoCModule_L71F36T59_Expr;
wire  [32:1] QuSoCModule_L71F36T59_Expr_1;
wire  [8:1] QuSoCModule_L72F36T82_Expr;
wire  [8:1] QuSoCModule_L72F36T82_Expr_1;
wire  [32:1] QuSoCModule_L82F15T47_Expr;
wire  [32:1] QuSoCModule_L82F15T47_Expr_1;
wire  [32:1] QuSoCModule_L88F16T61_Expr;
wire  [32:1] QuSoCModule_L88F16T61_Expr_1;
wire  [32:1] QuSoCModule_L90F20T67_Expr;
wire  [32:1] QuSoCModule_L90F20T67_Expr_1;
wire  [32:1] QuSoCModule_L94F13T68_Expr;
wire  [32:1] QuSoCModule_L94F13T68_Expr_1;
wire  [32:1] QuSoCModule_L94F13T68_Expr_2;
wire  [32:1] QuSoCModule_L94F14T39_Expr;
wire  [32:1] QuSoCModule_L94F14T39_Expr_1;
wire  [32:1] QuSoCModule_L94F14T39_Expr_2;
wire  [32:1] QuSoCModule_L94F34T39_Expr;
wire  [32:1] QuSoCModule_L94F34T39_Expr_1;
wire  [32:1] QuSoCModule_L94F44T67_Expr;
wire  [32:1] QuSoCModule_L94F44T67_Expr_1;
wire  [32:1] QuSoCModule_L94F44T67_Expr_2;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr_1;
wire  QuSoCModule_L77F13T28_Expr;
wire signed  [23:1] QuSoCModule_L77F13T28_ExprLhs;
wire signed  [23:1] QuSoCModule_L77F13T28_ExprRhs;
wire  QuSoCModule_L80F13T28_Expr;
wire signed  [23:1] QuSoCModule_L80F13T28_ExprLhs;
wire signed  [23:1] QuSoCModule_L80F13T28_ExprRhs;
wire  QuSoCModule_L87F13T34_Expr;
wire signed  [4:1] QuSoCModule_L87F13T34_ExprLhs;
wire signed  [4:1] QuSoCModule_L87F13T34_ExprRhs;
wire  QuSoCModule_L89F15T36_Expr;
wire signed  [4:1] QuSoCModule_L89F15T36_ExprLhs;
wire signed  [4:1] QuSoCModule_L89F15T36_ExprRhs;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_Case;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseLhs;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseRhs;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_Case;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseLhs;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseRhs;
wire  QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_Case;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseLhs;
wire signed  [9:1] QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseRhs;
reg  [32:1] QuSoCModule_L80F13L82T47_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] QuSoCModule_L77F13L82T47_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] QuSoCModule_L89F15L91T49_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] QuSoCModule_L87F13L91T49_Lookup = 32'b00000000000000000000000000000000;
wire  QuSoCModule_L80F13L82T47_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L80F13L82T47_Lookup1;
wire  [32:1] QuSoCModule_L80F13L82T47_Lookup2;
wire  QuSoCModule_L77F13L82T47_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L77F13L82T47_Lookup1;
wire  [32:1] QuSoCModule_L77F13L82T47_Lookup2;
wire  QuSoCModule_L89F15L91T49_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L89F15L91T49_Lookup1;
wire  [32:1] QuSoCModule_L89F15L91T49_Lookup2;
wire  QuSoCModule_L87F13L91T49_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L87F13L91T49_Lookup1;
wire  [32:1] QuSoCModule_L87F13L91T49_Lookup2;
reg [32:1] State_BlockRAM [0 : 1023];
initial
begin
	$readmemh("BlinkerSim_TopLevel_State_BlockRAM.hex", State_BlockRAM);
end
integer State_UART_Iterator;
reg [8:1] State_UART [0 : 3];
initial
begin
	for (State_UART_Iterator = 0; State_UART_Iterator < 4; State_UART_Iterator = State_UART_Iterator + 1)
		State_UART[State_UART_Iterator] = 0;
end
integer NextState_UART_Iterator;
reg [8:1] NextState_UART [0 : 3];
initial
begin
	for (NextState_UART_Iterator = 0; NextState_UART_Iterator < 4; NextState_UART_Iterator = NextState_UART_Iterator + 1)
		NextState_UART[NextState_UART_Iterator] = 0;
end
wire  BoardSignals_Clock;
wire  BoardSignals_Reset;
wire  BoardSignals_Running;
wire  BoardSignals_Starting;
wire  BoardSignals_Started;
reg  InternalReset = 1'b0;
work_Quokka_BoardSignalsProc BoardSignalsConnection(BoardSignals_Clock,BoardSignals_Reset,BoardSignals_Running,BoardSignals_Starting,BoardSignals_Started,Clock,Reset,InternalReset);
always @(posedge Clock)
begin
if ( Reset == 1 ) begin
State_BlockRAMWE <= State_BlockRAMWEDefault;
State_MemReady <= State_MemReadyDefault;
State_Counter <= State_CounterDefault;
State_UART_TX <= State_UART_TXDefault;
end
else begin
State_BlockRAMWE <= NextState_BlockRAMWE;
State_MemReady <= NextState_MemReady;
State_Counter <= NextState_Counter;
State_UART_TX <= NextState_UART_TX;
end
end
always @(posedge Clock)
begin
if ( Reset == 1 ) begin
for (State_UART_Iterator = 0; State_UART_Iterator < 4; State_UART_Iterator = State_UART_Iterator + 1)
begin
State_UART[State_UART_Iterator] <= State_UARTDefault;
end
end
else begin
for (State_UART_Iterator = 0; State_UART_Iterator < 4; State_UART_Iterator = State_UART_Iterator + 1)
begin
State_UART[State_UART_Iterator] <= NextState_UART[State_UART_Iterator];
end
end
end
assign QuSoCModule_L77F13T28_Expr = QuSoCModule_L77F13T28_ExprLhs == QuSoCModule_L77F13T28_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L80F13T28_Expr = QuSoCModule_L80F13T28_ExprLhs == QuSoCModule_L80F13T28_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L87F13T34_Expr = QuSoCModule_L87F13T34_ExprLhs == QuSoCModule_L87F13T34_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L89F15T36_Expr = QuSoCModule_L89F15T36_ExprLhs == QuSoCModule_L89F15T36_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_Case = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseLhs == QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_Case = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseLhs == QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_Case = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseLhs == QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseRhs ? 1'b1 : 1'b0;
// Output: QuSoCModule_L71F36T59_Expr, Width: 32, ShiftBy: 2, Sources: 1
assign QuSoCModule_L71F36T59_Expr[1] = QuSoCModule_L71F36T59_Expr_1[3];
assign QuSoCModule_L71F36T59_Expr[2] = QuSoCModule_L71F36T59_Expr_1[4];
assign QuSoCModule_L71F36T59_Expr[3] = QuSoCModule_L71F36T59_Expr_1[5];
assign QuSoCModule_L71F36T59_Expr[4] = QuSoCModule_L71F36T59_Expr_1[6];
assign QuSoCModule_L71F36T59_Expr[5] = QuSoCModule_L71F36T59_Expr_1[7];
assign QuSoCModule_L71F36T59_Expr[6] = QuSoCModule_L71F36T59_Expr_1[8];
assign QuSoCModule_L71F36T59_Expr[7] = QuSoCModule_L71F36T59_Expr_1[9];
assign QuSoCModule_L71F36T59_Expr[8] = QuSoCModule_L71F36T59_Expr_1[10];
assign QuSoCModule_L71F36T59_Expr[9] = QuSoCModule_L71F36T59_Expr_1[11];
assign QuSoCModule_L71F36T59_Expr[10] = QuSoCModule_L71F36T59_Expr_1[12];
assign QuSoCModule_L71F36T59_Expr[11] = QuSoCModule_L71F36T59_Expr_1[13];
assign QuSoCModule_L71F36T59_Expr[12] = QuSoCModule_L71F36T59_Expr_1[14];
assign QuSoCModule_L71F36T59_Expr[13] = QuSoCModule_L71F36T59_Expr_1[15];
assign QuSoCModule_L71F36T59_Expr[14] = QuSoCModule_L71F36T59_Expr_1[16];
assign QuSoCModule_L71F36T59_Expr[15] = QuSoCModule_L71F36T59_Expr_1[17];
assign QuSoCModule_L71F36T59_Expr[16] = QuSoCModule_L71F36T59_Expr_1[18];
assign QuSoCModule_L71F36T59_Expr[17] = QuSoCModule_L71F36T59_Expr_1[19];
assign QuSoCModule_L71F36T59_Expr[18] = QuSoCModule_L71F36T59_Expr_1[20];
assign QuSoCModule_L71F36T59_Expr[19] = QuSoCModule_L71F36T59_Expr_1[21];
assign QuSoCModule_L71F36T59_Expr[20] = QuSoCModule_L71F36T59_Expr_1[22];
assign QuSoCModule_L71F36T59_Expr[21] = QuSoCModule_L71F36T59_Expr_1[23];
assign QuSoCModule_L71F36T59_Expr[22] = QuSoCModule_L71F36T59_Expr_1[24];
assign QuSoCModule_L71F36T59_Expr[23] = QuSoCModule_L71F36T59_Expr_1[25];
assign QuSoCModule_L71F36T59_Expr[24] = QuSoCModule_L71F36T59_Expr_1[26];
assign QuSoCModule_L71F36T59_Expr[25] = QuSoCModule_L71F36T59_Expr_1[27];
assign QuSoCModule_L71F36T59_Expr[26] = QuSoCModule_L71F36T59_Expr_1[28];
assign QuSoCModule_L71F36T59_Expr[27] = QuSoCModule_L71F36T59_Expr_1[29];
assign QuSoCModule_L71F36T59_Expr[28] = QuSoCModule_L71F36T59_Expr_1[30];
assign QuSoCModule_L71F36T59_Expr[29] = QuSoCModule_L71F36T59_Expr_1[31];
assign QuSoCModule_L71F36T59_Expr[30] = QuSoCModule_L71F36T59_Expr_1[32];
assign QuSoCModule_L71F36T59_Expr[31] = 0;
assign QuSoCModule_L71F36T59_Expr[32] = 0;
assign QuSoCModule_L72F36T82_Expr[1] = 0;
assign QuSoCModule_L72F36T82_Expr[2] = 0;
assign QuSoCModule_L72F36T82_Expr[3] = 0;
assign QuSoCModule_L72F36T82_Expr[4] = QuSoCModule_L72F36T82_Expr_1[1];
assign QuSoCModule_L72F36T82_Expr[5] = QuSoCModule_L72F36T82_Expr_1[2];
assign QuSoCModule_L72F36T82_Expr[6] = 0;
assign QuSoCModule_L72F36T82_Expr[7] = 0;
assign QuSoCModule_L72F36T82_Expr[8] = 0;
assign QuSoCModule_L82F15T47_Expr = QuSoCModule_L82F15T47_Expr_1 >> byteAddress;
assign QuSoCModule_L88F16T61_Expr = QuSoCModule_L88F16T61_Expr_1 << byteAddress;
assign QuSoCModule_L90F20T67_Expr = QuSoCModule_L90F20T67_Expr_1 << byteAddress;
assign QuSoCModule_L94F13T68_Expr = QuSoCModule_L94F13T68_Expr_1 | QuSoCModule_L94F13T68_Expr_2;
assign QuSoCModule_L94F14T39_Expr = QuSoCModule_L94F14T39_Expr_1 & QuSoCModule_L94F14T39_Expr_2;
assign QuSoCModule_L94F34T39_Expr = ~QuSoCModule_L94F34T39_Expr_1;
assign QuSoCModule_L94F44T67_Expr = QuSoCModule_L94F44T67_Expr_1 & QuSoCModule_L94F44T67_Expr_2;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr = ~QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr_1;
BlinkerSim_TopLevel_QuSoCModule_CPU BlinkerSim_TopLevel_QuSoCModule_CPU
(
// [BEGIN USER MAP FOR CPU]
// [END USER MAP FOR CPU]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.BaseAddress (CPUBaseAddressCPU_BaseAddressHardLink),
	.MemReadData (CPUMemReadDataCPU_MemReadDataHardLink),
	.MemReady (CPUMemReadyCPU_MemReadyHardLink),
	.DbgState (CPUDbgStateCPU_DbgStateHardLink),
	.DbgWBData (CPUDbgWBDataCPU_DbgWBDataHardLink),
	.DbgWDDataReady (CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink),
	.MemRead (CPUMemReadCPU_MemReadHardLink),
	.MemAddress (CPUMemAddressCPU_MemAddressHardLink),
	.IsHalted (CPUIsHaltedCPU_IsHaltedHardLink),
	.MemWrite (CPUMemWriteCPU_MemWriteHardLink),
	.MemWriteData (CPUMemWriteDataCPU_MemWriteDataHardLink),
	.MemWriteMode (CPUMemWriteModeCPU_MemWriteModeHardLink)

);
always @*
begin
case (QuSoCModule_L80F13L82T47_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L80F13L82T47_Lookup = QuSoCModule_L80F13L82T47_Lookup1;
    'b1:
QuSoCModule_L80F13L82T47_Lookup = QuSoCModule_L80F13L82T47_Lookup2;
  default:
QuSoCModule_L80F13L82T47_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (QuSoCModule_L77F13L82T47_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L77F13L82T47_Lookup = QuSoCModule_L77F13L82T47_Lookup1;
    'b1:
QuSoCModule_L77F13L82T47_Lookup = QuSoCModule_L77F13L82T47_Lookup2;
  default:
QuSoCModule_L77F13L82T47_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (QuSoCModule_L89F15L91T49_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L89F15L91T49_Lookup = QuSoCModule_L89F15L91T49_Lookup1;
    'b1:
QuSoCModule_L89F15L91T49_Lookup = QuSoCModule_L89F15L91T49_Lookup2;
  default:
QuSoCModule_L89F15L91T49_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (QuSoCModule_L87F13L91T49_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L87F13L91T49_Lookup = QuSoCModule_L87F13L91T49_Lookup1;
    'b1:
QuSoCModule_L87F13L91T49_Lookup = QuSoCModule_L87F13L91T49_Lookup2;
  default:
QuSoCModule_L87F13L91T49_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
NextState_BlockRAMWE = State_BlockRAMWE;
NextState_MemReady = State_MemReady;
NextState_Counter = State_Counter/*cast*/;
NextState_UART_TX = State_UART_TX;
for (NextState_UART_Iterator = 0; NextState_UART_Iterator < 4; NextState_UART_Iterator = NextState_UART_Iterator + 1)
begin
NextState_UART[NextState_UART_Iterator] = State_UART[NextState_UART_Iterator]/*cast*/;
end
if ( State_BlockRAMWE == 1 ) begin
end
NextState_MemReady = CPU_MemRead;
NextState_BlockRAMWE = QuSoCModule_L104F9L143T10_QuSoCModule_L116F36T41_Expr;
NextState_UART_TX = QuSoCModule_L104F9L143T10_QuSoCModule_L117F33T38_Expr;
if ( CPU_MemWrite == 1 ) begin
if ( QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_Case == 1 ) begin
if ( QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr == 1 ) begin
NextState_BlockRAMWE = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L125F25L129T26_QuSoCModule_L127F52T56_Expr;
NextState_MemReady = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L125F25L129T26_QuSoCModule_L128F50T54_Expr;
end
end
else if ( QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_Case == 1 ) begin
NextState_Counter = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L132F45T67_Index/*cast*/;
NextState_MemReady = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L133F46T50_Expr;
end
else if ( QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_Case == 1 ) begin
NextState_UART[uartAddress] = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L137F55T77_Cast/*cast*/;
NextState_UART_TX = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L138F45T49_Expr;
NextState_MemReady = QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L139F46T50_Expr;
end
end

end
// inferred simple dual port RAM with read-first behaviour
always @ (posedge Clock)
begin
	if (State_BlockRAMWE)
		State_BlockRAM[blockRamAddress] <= blockRAMWriteData;

	State_MemReadData <= State_BlockRAM[blockRamAddress];
end

assign QuSoCModule_L80F13L82T47_LookupMultiplexerAddress = QuSoCModule_L80F13T28_Expr;
assign QuSoCModule_L77F13L82T47_LookupMultiplexerAddress = QuSoCModule_L77F13T28_Expr;
assign QuSoCModule_L89F15L91T49_LookupMultiplexerAddress = QuSoCModule_L89F15T36_Expr;
assign QuSoCModule_L87F13L91T49_LookupMultiplexerAddress = QuSoCModule_L87F13T34_Expr;
assign QuSoCModule_L74F53T76_Index = State_UART[uartAddress];
assign QuSoCModule_L101F38T51_Index = State_UART[QuSoCModule_L101F49T50_Expr];
assign QuSoCModule_L77F13T28_ExprLhs = { {1{1'b0}}, memSegment }/*expand*/;
assign QuSoCModule_L77F13T28_ExprRhs = { {21{1'b0}}, QuSoCModule_L77F27T28_Expr }/*expand*/;
assign QuSoCModule_L80F13T28_ExprLhs = { {1{1'b0}}, memSegment }/*expand*/;
assign QuSoCModule_L80F13T28_ExprRhs = { {22{1'b0}}, QuSoCModule_L80F27T28_Expr }/*expand*/;
assign QuSoCModule_L87F13T34_ExprLhs = { {1{1'b0}}, CPU_MemWriteMode }/*expand*/;
assign QuSoCModule_L87F13T34_ExprRhs = { {3{1'b0}}, QuSoCModule_L87F33T34_Expr }/*expand*/;
assign QuSoCModule_L89F15T36_ExprLhs = { {1{1'b0}}, CPU_MemWriteMode }/*expand*/;
assign QuSoCModule_L89F15T36_ExprRhs = { {3{1'b0}}, QuSoCModule_L89F35T36_Expr }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L121F25T41_Cast }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F21L130T31_CaseRhs = { {8{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L123F26T27_Expr }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L121F25T41_Cast }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F21L134T31_CaseRhs = { {8{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L131F26T27_Expr }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L121F25T41_Cast }/*expand*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F21L140T31_CaseRhs = { {7{1'b0}}, QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L135F26T27_Expr }/*expand*/;
assign QuSoCModule_L71F36T59_Expr_1 = internalMemAddress/*cast*/;
assign QuSoCModule_L72F36T82_Expr_1 = { {6{1'b0}}, QuSoCModule_L72F36T77_Source }/*expand*/;
assign QuSoCModule_L82F15T47_Expr_1 = State_MemReadData/*cast*/;
assign QuSoCModule_L88F16T61_Expr_1 = { {24{1'b0}}, QuSoCModule_L88F16T46_Source }/*expand*/;
assign QuSoCModule_L90F20T67_Expr_1 = { {16{1'b0}}, QuSoCModule_L90F20T52_Source }/*expand*/;
assign QuSoCModule_L94F13T68_Expr_1 = QuSoCModule_L94F14T39_Expr/*cast*/;
assign QuSoCModule_L94F13T68_Expr_2 = QuSoCModule_L94F44T67_Expr/*cast*/;
assign QuSoCModule_L94F14T39_Expr_1 = State_MemReadData/*cast*/;
assign QuSoCModule_L94F14T39_Expr_2 = QuSoCModule_L94F34T39_Expr/*cast*/;
assign QuSoCModule_L94F34T39_Expr_1 = mask/*cast*/;
assign QuSoCModule_L94F44T67_Expr_1 = CPU_MemWriteData/*cast*/;
assign QuSoCModule_L94F44T67_Expr_2 = mask/*cast*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L124F29T46_Expr_1 = State_BlockRAMWE;
assign QuSoCModule_L70F43T74_Source = CPU_MemAddress/*cast*/;
assign internalMemAddress = QuSoCModule_L70F43T74_Source/*cast*/;
assign wordAddress = QuSoCModule_L71F36T59_Expr/*cast*/;
assign QuSoCModule_L72F52T76_Index = internalMemAddress[2:1]/*cast*/;
assign QuSoCModule_L72F36T77_Source = QuSoCModule_L72F52T76_Index/*cast*/;
assign byteAddress = QuSoCModule_L72F36T82_Expr[5:1]/*truncate*/;
assign QuSoCModule_L74F37T77_Source = QuSoCModule_L74F53T76_Index/*cast*/;
assign QuSoCModule_L74F37T89_Resize = { {24{1'b0}}, QuSoCModule_L74F37T77_Source }/*expand*/;
assign uartReadData = QuSoCModule_L74F37T89_Resize/*cast*/;
assign QuSoCModule_L81F15T40_Resize = { {24{1'b0}}, State_Counter }/*expand*/;
assign internalMemReadData = QuSoCModule_L77F13L82T47_Lookup/*cast*/;
assign internalMemReady = State_MemReady;
assign QuSoCModule_L88F16T46_Source = QuSoCModule_L88F32T45_Expr/*cast*/;
assign QuSoCModule_L88F15T74_Resize = QuSoCModule_L88F16T61_Expr/*cast*/;
assign QuSoCModule_L90F20T52_Source = QuSoCModule_L90F36T51_Expr/*cast*/;
assign QuSoCModule_L90F19T80_Resize = QuSoCModule_L90F20T67_Expr/*cast*/;
assign QuSoCModule_L91F19T49_Source = QuSoCModule_L91F35T48_Expr/*cast*/;
assign mask = QuSoCModule_L87F13L91T49_Lookup/*cast*/;
assign blockRAMWriteData = QuSoCModule_L94F13T68_Expr/*cast*/;
assign QuSoCModule_L96F35T54_Index = wordAddress[32:11]/*cast*/;
assign memSegment = QuSoCModule_L96F35T54_Index/*cast*/;
assign QuSoCModule_L97F40T57_Index = wordAddress[10:1]/*cast*/;
assign blockRamAddress = QuSoCModule_L97F40T57_Index/*cast*/;
assign QuSoCModule_L99F36T60_Index = internalMemAddress[2:1]/*cast*/;
assign uartAddress = QuSoCModule_L99F36T60_Index/*cast*/;
assign CPU_BaseAddress = { {31{1'b0}}, QuSoCModule_L64F31T33_Expr }/*expand*/;
assign CPU_MemReadData = internalMemReadData/*cast*/;
assign CPU_MemReady = internalMemReady;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L121F25T41_Cast = memSegment[8:1]/*truncate*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L132F45T67_Index = CPU_MemWriteData[8:1]/*cast*/;
assign QuSoCModule_L104F9L143T10_QuSoCModule_L120F13L142T14_QuSoCModule_L137F55T77_Cast = CPU_MemWriteData[8:1]/*truncate*/;
assign QuSoCModule_L41F32T51_Cast = State_Counter/*cast*/;
assign Counter = QuSoCModule_L41F32T51_Cast/*cast*/;
assign CPUAddress = CPU_MemAddress/*cast*/;
assign CPUMemRead = CPU_MemRead;
assign CPUMemWrite = CPU_MemWrite;
assign CPUMemReadData = internalMemReadData/*cast*/;
assign SOCMemReady = State_MemReady;
assign CPUHalted = CPU_IsHalted;
assign BlockRAMWE = State_BlockRAMWE;
assign DbgState = CPU_DbgState/*cast*/;
assign DbgWBData = CPU_DbgWBData/*cast*/;
assign DbgWDDataReady = CPU_DbgWDDataReady;
assign UARTWriteData = QuSoCModule_L101F38T51_Index/*cast*/;
assign CPUBaseAddressCPU_BaseAddressHardLink = CPU_BaseAddress/*cast*/;
assign CPUMemReadDataCPU_MemReadDataHardLink = CPU_MemReadData/*cast*/;
assign CPUMemReadyCPU_MemReadyHardLink = CPU_MemReady;
assign CPU_DbgState = CPUDbgStateCPU_DbgStateHardLink/*cast*/;
assign CPU_DbgWBData = CPUDbgWBDataCPU_DbgWBDataHardLink/*cast*/;
assign CPU_DbgWDDataReady = CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink;
assign CPU_MemRead = CPUMemReadCPU_MemReadHardLink;
assign CPU_MemAddress = CPUMemAddressCPU_MemAddressHardLink/*cast*/;
assign CPU_IsHalted = CPUIsHaltedCPU_IsHaltedHardLink;
assign CPU_MemWrite = CPUMemWriteCPU_MemWriteHardLink;
assign CPU_MemWriteData = CPUMemWriteDataCPU_MemWriteDataHardLink/*cast*/;
assign CPU_MemWriteMode = CPUMemWriteModeCPU_MemWriteModeHardLink/*cast*/;
assign QuSoCModule_L80F13L82T47_Lookup1 = QuSoCModule_L82F15T47_Expr/*cast*/;
assign QuSoCModule_L80F13L82T47_Lookup2 = QuSoCModule_L81F15T40_Resize/*cast*/;
assign QuSoCModule_L77F13L82T47_Lookup1 = QuSoCModule_L80F13L82T47_Lookup/*cast*/;
assign QuSoCModule_L77F13L82T47_Lookup2 = uartReadData/*cast*/;
assign QuSoCModule_L89F15L91T49_Lookup1 = QuSoCModule_L91F19T49_Source/*cast*/;
assign QuSoCModule_L89F15L91T49_Lookup2 = QuSoCModule_L90F19T80_Resize/*cast*/;
assign QuSoCModule_L87F13L91T49_Lookup1 = QuSoCModule_L89F15L91T49_Lookup/*cast*/;
assign QuSoCModule_L87F13L91T49_Lookup2 = QuSoCModule_L88F15T74_Resize/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
