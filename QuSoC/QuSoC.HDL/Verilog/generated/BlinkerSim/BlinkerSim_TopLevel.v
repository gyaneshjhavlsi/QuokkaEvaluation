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
	output [31: 0] CSCounter,
	output [31: 0] CPUAddress,
	output CPUMemRead,
	output CPUMemWrite,
	output [31: 0] CPUMemReadData,
	output SOCMemReady,
	output CPUHalted,
	output BlockRAMWE,
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
wire  [2:1] QuSoCModule_L73F58T59_Expr = 2'b10;
wire  [2:1] QuSoCModule_L74F81T82_Expr = 2'b11;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L83F31T32_Expr = 1'b0;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F26T27_Expr = 1'b0;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F26T27_Expr = 1'b1;
wire  [2:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F26T27_Expr = 2'b10;
wire  [20:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F26T33_Expr = 20'b10000000000000000000;
wire  QuSoCModule_L107F33T34_Expr = 1'b0;
wire  [8:1] QuSoCModule_L108F32T45_Expr = 8'b11111111;
wire  QuSoCModule_L109F35T36_Expr = 1'b1;
wire  [16:1] QuSoCModule_L110F36T51_Expr = 16'b1111111111111111;
wire  [32:1] QuSoCModule_L111F35T48_Expr = 32'b11111111111111111111111111111111;
wire  [2:1] QuSoCModule_L123F38T39_Expr = 2'b10;
wire  QuSoCModule_L123F44T45_Expr = 1'b0;
wire  QuSoCModule_L66F31T33_Expr = 1'b0;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L138F36T41_Expr = 1'b0;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L139F33T38_Expr = 1'b0;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F26T27_Expr = 1'b0;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L147F25L151T26_QuSoCModule_L149F52T56_Expr = 1'b1;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L147F25L151T26_QuSoCModule_L150F50T54_Expr = 1'b1;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F26T27_Expr = 1'b1;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L155F46T50_Expr = 1'b1;
wire  [2:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F26T27_Expr = 2'b10;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L162F44T45_Expr = 1'b0;
wire  [2:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L163F44T45_Expr = 2'b10;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L163F49T50_Expr = 1'b0;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L164F49T53_Expr = 1'b1;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L165F50T54_Expr = 1'b1;
wire  [20:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F26T33_Expr = 20'b10000000000000000000;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L170F46T50_Expr = 1'b1;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L174F46T50_Expr = 1'b1;
wire  QuSoCModule_L121F49T50_Expr = 1'b0;
reg  NextState_BlockRAMWE = 1'b0;
reg  NextState_MemReady = 1'b0;
reg  [8:1] NextState_Counter = 8'b00000000;
reg  NextState_UART_TX = 1'b0;
reg  [32:1] NextState_CSCounter = 32'b00000000000000000000000000000000;
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
wire  UARTReady;
wire  [32:1] CPU_BaseAddress;
wire  [32:1] CPU_MemReadData;
wire  CPU_MemReady;
reg  CPU_ExtIRQ = 1'b0;
wire  [8:1] CPU_DbgState;
wire signed  [32:1] CPU_DbgWBData;
wire  CPU_DbgWDDataReady;
wire  CPU_MemRead;
wire  CPU_MemWrite;
wire  [32:1] CPU_MemAddress;
wire  CPU_IsHalted;
wire  [32:1] CPU_MemWriteData;
wire  [3:1] CPU_MemWriteMode;
wire  CPU_PCMisaligned;
wire  [32:1] QuSoCModule_L72F43T74_Source;
wire  [2:1] QuSoCModule_L74F36T77_Source;
wire  [2:1] QuSoCModule_L74F52T76_Index;
wire  [8:1] QuSoCModule_L76F37T77_Source;
wire  [8:1] QuSoCModule_L76F53T76_Index;
wire  [32:1] QuSoCModule_L76F37T89_Resize;
reg  [32:1] QuSoCModule_L82F13L101T14_result = 32'b00000000000000000000000000000000;
wire  [32:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast;
wire  [8:1] QuSoCModule_L108F16T46_Source;
wire  [32:1] QuSoCModule_L108F15T74_Resize;
wire  [16:1] QuSoCModule_L110F20T52_Source;
wire  [32:1] QuSoCModule_L110F19T80_Resize;
wire  [32:1] QuSoCModule_L111F19T49_Source;
wire  [22:1] QuSoCModule_L116F35T54_Index;
wire  [10:1] QuSoCModule_L117F40T57_Index;
wire  [2:1] QuSoCModule_L119F36T60_Index;
wire  [8:1] QuSoCModule_L123F27T40_Index;
wire  [32:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast;
wire  [8:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L154F45T67_Index;
wire  [8:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L162F49T71_Cast;
reg  [8:1] State_UARTDefault = 8'b00000000;
wire  [8:1] QuSoCModule_L121F38T51_Index;
wire  [32:1] CPUBaseAddressCPU_BaseAddressHardLink;
wire  [32:1] CPUMemReadDataCPU_MemReadDataHardLink;
wire  CPUMemReadyCPU_MemReadyHardLink;
wire  CPUExtIRQCPU_ExtIRQHardLink;
wire  [8:1] CPUDbgStateCPU_DbgStateHardLink;
wire  [32:1] CPUDbgWBDataCPU_DbgWBDataHardLink;
wire  CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink;
wire  CPUMemReadCPU_MemReadHardLink;
wire  CPUMemWriteCPU_MemWriteHardLink;
wire  [32:1] CPUMemAddressCPU_MemAddressHardLink;
wire  CPUIsHaltedCPU_IsHaltedHardLink;
wire  [32:1] CPUMemWriteDataCPU_MemWriteDataHardLink;
wire  [3:1] CPUMemWriteModeCPU_MemWriteModeHardLink;
wire  CPUPCMisalignedCPU_PCMisalignedHardLink;
reg  State_BlockRAMWE = 1'b0;
wire  State_BlockRAMWEDefault = 1'b0;
reg  [32:1] State_MemReadData = 32'b00000000000000000000000000000000;
reg  State_MemReady = 1'b0;
wire  State_MemReadyDefault = 1'b0;
reg  [8:1] State_Counter = 8'b00000000;
wire  [8:1] State_CounterDefault = 8'b00000000;
reg  State_UART_TX = 1'b0;
wire  State_UART_TXDefault = 1'b0;
reg  [32:1] State_CSCounter = 32'b00000000000000000000000000000000;
wire  [32:1] State_CSCounterDefault = 32'b00000000000000000000000000000000;
wire  [32:1] QuSoCModule_L73F36T59_Expr;
wire  [32:1] QuSoCModule_L73F36T59_Expr_1;
wire  [8:1] QuSoCModule_L74F36T82_Expr;
wire  [8:1] QuSoCModule_L74F36T82_Expr_1;
wire  [32:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr;
wire  [32:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr_1;
wire  [32:1] QuSoCModule_L108F16T61_Expr;
wire  [32:1] QuSoCModule_L108F16T61_Expr_1;
wire  [32:1] QuSoCModule_L110F20T67_Expr;
wire  [32:1] QuSoCModule_L110F20T67_Expr_1;
wire  [32:1] QuSoCModule_L114F13T68_Expr;
wire  [32:1] QuSoCModule_L114F13T68_Expr_1;
wire  [32:1] QuSoCModule_L114F13T68_Expr_2;
wire  [32:1] QuSoCModule_L114F14T39_Expr;
wire  [32:1] QuSoCModule_L114F14T39_Expr_1;
wire  [32:1] QuSoCModule_L114F14T39_Expr_2;
wire  [32:1] QuSoCModule_L114F34T39_Expr;
wire  [32:1] QuSoCModule_L114F34T39_Expr_1;
wire  [32:1] QuSoCModule_L114F44T67_Expr;
wire  [32:1] QuSoCModule_L114F44T67_Expr_1;
wire  [32:1] QuSoCModule_L114F44T67_Expr_2;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr_1;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_Case;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseRhs;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_Case;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseRhs;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_Case;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseRhs;
wire  QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_Case;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseRhs;
wire  QuSoCModule_L107F13T34_Expr;
wire signed  [4:1] QuSoCModule_L107F13T34_ExprLhs;
wire signed  [4:1] QuSoCModule_L107F13T34_ExprRhs;
wire  QuSoCModule_L109F15T36_Expr;
wire signed  [4:1] QuSoCModule_L109F15T36_ExprLhs;
wire signed  [4:1] QuSoCModule_L109F15T36_ExprRhs;
wire  QuSoCModule_L123F27T45_Expr;
wire signed  [9:1] QuSoCModule_L123F27T45_ExprLhs;
wire signed  [9:1] QuSoCModule_L123F27T45_ExprRhs;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_Case;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseRhs;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_Case;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseRhs;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_Case;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseRhs;
wire  QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_Case;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseLhs;
wire signed  [33:1] QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseRhs;
reg  [32:1] QuSoCModule_L109F15L111T49_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] QuSoCModule_L107F13L111T49_Lookup = 32'b00000000000000000000000000000000;
wire  QuSoCModule_L109F15L111T49_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L109F15L111T49_Lookup1;
wire  [32:1] QuSoCModule_L109F15L111T49_Lookup2;
wire  QuSoCModule_L107F13L111T49_LookupMultiplexerAddress;
wire  [32:1] QuSoCModule_L107F13L111T49_Lookup1;
wire  [32:1] QuSoCModule_L107F13L111T49_Lookup2;
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
State_CSCounter <= State_CSCounterDefault;
end
else begin
State_BlockRAMWE <= NextState_BlockRAMWE;
State_MemReady <= NextState_MemReady;
State_Counter <= NextState_Counter;
State_UART_TX <= NextState_UART_TX;
State_CSCounter <= NextState_CSCounter;
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
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_Case = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseLhs == QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_Case = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseLhs == QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_Case = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseLhs == QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_Case = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseLhs == QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L107F13T34_Expr = QuSoCModule_L107F13T34_ExprLhs == QuSoCModule_L107F13T34_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L109F15T36_Expr = QuSoCModule_L109F15T36_ExprLhs == QuSoCModule_L109F15T36_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L123F27T45_Expr = QuSoCModule_L123F27T45_ExprLhs != QuSoCModule_L123F27T45_ExprRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_Case = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseLhs == QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_Case = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseLhs == QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_Case = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseLhs == QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseRhs ? 1'b1 : 1'b0;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_Case = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseLhs == QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseRhs ? 1'b1 : 1'b0;
// Output: QuSoCModule_L73F36T59_Expr, Width: 32, ShiftBy: 2, Sources: 1
assign QuSoCModule_L73F36T59_Expr[1] = QuSoCModule_L73F36T59_Expr_1[3];
assign QuSoCModule_L73F36T59_Expr[2] = QuSoCModule_L73F36T59_Expr_1[4];
assign QuSoCModule_L73F36T59_Expr[3] = QuSoCModule_L73F36T59_Expr_1[5];
assign QuSoCModule_L73F36T59_Expr[4] = QuSoCModule_L73F36T59_Expr_1[6];
assign QuSoCModule_L73F36T59_Expr[5] = QuSoCModule_L73F36T59_Expr_1[7];
assign QuSoCModule_L73F36T59_Expr[6] = QuSoCModule_L73F36T59_Expr_1[8];
assign QuSoCModule_L73F36T59_Expr[7] = QuSoCModule_L73F36T59_Expr_1[9];
assign QuSoCModule_L73F36T59_Expr[8] = QuSoCModule_L73F36T59_Expr_1[10];
assign QuSoCModule_L73F36T59_Expr[9] = QuSoCModule_L73F36T59_Expr_1[11];
assign QuSoCModule_L73F36T59_Expr[10] = QuSoCModule_L73F36T59_Expr_1[12];
assign QuSoCModule_L73F36T59_Expr[11] = QuSoCModule_L73F36T59_Expr_1[13];
assign QuSoCModule_L73F36T59_Expr[12] = QuSoCModule_L73F36T59_Expr_1[14];
assign QuSoCModule_L73F36T59_Expr[13] = QuSoCModule_L73F36T59_Expr_1[15];
assign QuSoCModule_L73F36T59_Expr[14] = QuSoCModule_L73F36T59_Expr_1[16];
assign QuSoCModule_L73F36T59_Expr[15] = QuSoCModule_L73F36T59_Expr_1[17];
assign QuSoCModule_L73F36T59_Expr[16] = QuSoCModule_L73F36T59_Expr_1[18];
assign QuSoCModule_L73F36T59_Expr[17] = QuSoCModule_L73F36T59_Expr_1[19];
assign QuSoCModule_L73F36T59_Expr[18] = QuSoCModule_L73F36T59_Expr_1[20];
assign QuSoCModule_L73F36T59_Expr[19] = QuSoCModule_L73F36T59_Expr_1[21];
assign QuSoCModule_L73F36T59_Expr[20] = QuSoCModule_L73F36T59_Expr_1[22];
assign QuSoCModule_L73F36T59_Expr[21] = QuSoCModule_L73F36T59_Expr_1[23];
assign QuSoCModule_L73F36T59_Expr[22] = QuSoCModule_L73F36T59_Expr_1[24];
assign QuSoCModule_L73F36T59_Expr[23] = QuSoCModule_L73F36T59_Expr_1[25];
assign QuSoCModule_L73F36T59_Expr[24] = QuSoCModule_L73F36T59_Expr_1[26];
assign QuSoCModule_L73F36T59_Expr[25] = QuSoCModule_L73F36T59_Expr_1[27];
assign QuSoCModule_L73F36T59_Expr[26] = QuSoCModule_L73F36T59_Expr_1[28];
assign QuSoCModule_L73F36T59_Expr[27] = QuSoCModule_L73F36T59_Expr_1[29];
assign QuSoCModule_L73F36T59_Expr[28] = QuSoCModule_L73F36T59_Expr_1[30];
assign QuSoCModule_L73F36T59_Expr[29] = QuSoCModule_L73F36T59_Expr_1[31];
assign QuSoCModule_L73F36T59_Expr[30] = QuSoCModule_L73F36T59_Expr_1[32];
assign QuSoCModule_L73F36T59_Expr[31] = 0;
assign QuSoCModule_L73F36T59_Expr[32] = 0;
assign QuSoCModule_L74F36T82_Expr[1] = 0;
assign QuSoCModule_L74F36T82_Expr[2] = 0;
assign QuSoCModule_L74F36T82_Expr[3] = 0;
assign QuSoCModule_L74F36T82_Expr[4] = QuSoCModule_L74F36T82_Expr_1[1];
assign QuSoCModule_L74F36T82_Expr[5] = QuSoCModule_L74F36T82_Expr_1[2];
assign QuSoCModule_L74F36T82_Expr[6] = 0;
assign QuSoCModule_L74F36T82_Expr[7] = 0;
assign QuSoCModule_L74F36T82_Expr[8] = 0;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr_1 >> byteAddress;
assign QuSoCModule_L108F16T61_Expr = QuSoCModule_L108F16T61_Expr_1 << byteAddress;
assign QuSoCModule_L110F20T67_Expr = QuSoCModule_L110F20T67_Expr_1 << byteAddress;
assign QuSoCModule_L114F13T68_Expr = QuSoCModule_L114F13T68_Expr_1 | QuSoCModule_L114F13T68_Expr_2;
assign QuSoCModule_L114F14T39_Expr = QuSoCModule_L114F14T39_Expr_1 & QuSoCModule_L114F14T39_Expr_2;
assign QuSoCModule_L114F34T39_Expr = ~QuSoCModule_L114F34T39_Expr_1;
assign QuSoCModule_L114F44T67_Expr = QuSoCModule_L114F44T67_Expr_1 & QuSoCModule_L114F44T67_Expr_2;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr = ~QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr_1;
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
	.ExtIRQ (CPUExtIRQCPU_ExtIRQHardLink),
	.DbgState (CPUDbgStateCPU_DbgStateHardLink),
	.DbgWBData (CPUDbgWBDataCPU_DbgWBDataHardLink),
	.DbgWDDataReady (CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink),
	.MemRead (CPUMemReadCPU_MemReadHardLink),
	.MemWrite (CPUMemWriteCPU_MemWriteHardLink),
	.MemAddress (CPUMemAddressCPU_MemAddressHardLink),
	.IsHalted (CPUIsHaltedCPU_IsHaltedHardLink),
	.MemWriteData (CPUMemWriteDataCPU_MemWriteDataHardLink),
	.MemWriteMode (CPUMemWriteModeCPU_MemWriteModeHardLink),
	.PCMisaligned (CPUPCMisalignedCPU_PCMisalignedHardLink)

);
always @*
begin
case (QuSoCModule_L109F15L111T49_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L109F15L111T49_Lookup = QuSoCModule_L109F15L111T49_Lookup1;
    'b1:
QuSoCModule_L109F15L111T49_Lookup = QuSoCModule_L109F15L111T49_Lookup2;
  default:
QuSoCModule_L109F15L111T49_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (QuSoCModule_L107F13L111T49_LookupMultiplexerAddress)
    'b0:
QuSoCModule_L107F13L111T49_Lookup = QuSoCModule_L107F13L111T49_Lookup1;
    'b1:
QuSoCModule_L107F13L111T49_Lookup = QuSoCModule_L107F13L111T49_Lookup2;
  default:
QuSoCModule_L107F13L111T49_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
QuSoCModule_L82F13L101T14_result = { {31{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L83F31T32_Expr }/*expand*/;
if ( QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_Case == 1 ) begin
QuSoCModule_L82F13L101T14_result = QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr;
end
else if ( QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_Case == 1 ) begin
QuSoCModule_L82F13L101T14_result = { {24{1'b0}}, State_Counter }/*expand*/;
end
else if ( QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_Case == 1 ) begin
QuSoCModule_L82F13L101T14_result = uartReadData;
end
else if ( QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_Case == 1 ) begin
QuSoCModule_L82F13L101T14_result = State_CSCounter;
end

end
always @*
begin
for (NextState_UART_Iterator = 0; NextState_UART_Iterator < 4; NextState_UART_Iterator = NextState_UART_Iterator + 1)
begin
NextState_UART[NextState_UART_Iterator] = State_UART[NextState_UART_Iterator];
end
NextState_BlockRAMWE = State_BlockRAMWE;
NextState_MemReady = State_MemReady;
NextState_Counter = State_Counter;
NextState_UART_TX = State_UART_TX;
NextState_CSCounter = State_CSCounter;
if ( State_BlockRAMWE == 1 ) begin
end
NextState_MemReady = CPU_MemRead;
NextState_BlockRAMWE = QuSoCModule_L126F9L178T10_QuSoCModule_L138F36T41_Expr;
NextState_UART_TX = QuSoCModule_L126F9L178T10_QuSoCModule_L139F33T38_Expr;
if ( CPU_MemWrite == 1 ) begin
if ( QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_Case == 1 ) begin
if ( QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr == 1 ) begin
NextState_BlockRAMWE = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L147F25L151T26_QuSoCModule_L149F52T56_Expr;
NextState_MemReady = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L147F25L151T26_QuSoCModule_L150F50T54_Expr;
end
end
else if ( QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_Case == 1 ) begin
NextState_Counter = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L154F45T67_Index;
NextState_MemReady = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L155F46T50_Expr;
end
else if ( QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_Case == 1 ) begin
if ( UARTReady == 1 ) begin
NextState_UART[QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L162F44T45_Expr] = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L162F49T71_Cast;
NextState_UART[QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L163F44T45_Expr] = { {7{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L163F49T50_Expr }/*expand*/;
NextState_UART_TX = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L164F49T53_Expr;
NextState_MemReady = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L165F50T54_Expr;
end
end
else if ( QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_Case == 1 ) begin
NextState_CSCounter = CPU_MemWriteData;
NextState_MemReady = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L170F46T50_Expr;
end
else begin
NextState_MemReady = QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L174F46T50_Expr;
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

assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F21L88T31_CaseRhs = { {32{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L86F26T27_Expr }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F21L91T31_CaseRhs = { {32{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L89F26T27_Expr }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F21L94T31_CaseRhs = { {31{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L92F26T27_Expr }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F21L97T31_CaseRhs = { {13{1'b0}}, QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L95F26T33_Expr }/*expand*/;
assign QuSoCModule_L107F13T34_ExprLhs = { {1{1'b0}}, CPU_MemWriteMode }/*expand*/;
assign QuSoCModule_L107F13T34_ExprRhs = { {3{1'b0}}, QuSoCModule_L107F33T34_Expr }/*expand*/;
assign QuSoCModule_L109F15T36_ExprLhs = { {1{1'b0}}, CPU_MemWriteMode }/*expand*/;
assign QuSoCModule_L109F15T36_ExprRhs = { {3{1'b0}}, QuSoCModule_L109F35T36_Expr }/*expand*/;
assign QuSoCModule_L123F27T45_ExprLhs = { {1{1'b0}}, QuSoCModule_L123F27T40_Index }/*expand*/;
assign QuSoCModule_L123F27T45_ExprRhs = { {8{1'b0}}, QuSoCModule_L123F44T45_Expr }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F21L152T31_CaseRhs = { {32{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L145F26T27_Expr }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F21L156T31_CaseRhs = { {32{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L153F26T27_Expr }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F21L167T31_CaseRhs = { {31{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L157F26T27_Expr }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseLhs = { {1{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F21L171T31_CaseRhs = { {13{1'b0}}, QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L168F26T33_Expr }/*expand*/;
assign QuSoCModule_L73F36T59_Expr_1 = internalMemAddress;
assign QuSoCModule_L74F36T82_Expr_1 = { {6{1'b0}}, QuSoCModule_L74F36T77_Source }/*expand*/;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F17L98T18_QuSoCModule_L87F34T66_Expr_1 = State_MemReadData;
assign QuSoCModule_L108F16T61_Expr_1 = { {24{1'b0}}, QuSoCModule_L108F16T46_Source }/*expand*/;
assign QuSoCModule_L110F20T67_Expr_1 = { {16{1'b0}}, QuSoCModule_L110F20T52_Source }/*expand*/;
assign QuSoCModule_L114F13T68_Expr_1 = QuSoCModule_L114F14T39_Expr;
assign QuSoCModule_L114F13T68_Expr_2 = QuSoCModule_L114F44T67_Expr;
assign QuSoCModule_L114F14T39_Expr_1 = State_MemReadData;
assign QuSoCModule_L114F14T39_Expr_2 = QuSoCModule_L114F34T39_Expr;
assign QuSoCModule_L114F34T39_Expr_1 = mask;
assign QuSoCModule_L114F44T67_Expr_1 = CPU_MemWriteData;
assign QuSoCModule_L114F44T67_Expr_2 = mask;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L146F29T46_Expr_1 = State_BlockRAMWE;
assign QuSoCModule_L72F43T74_Source = CPU_MemAddress;
assign internalMemAddress = QuSoCModule_L72F43T74_Source;
assign wordAddress = QuSoCModule_L73F36T59_Expr;
assign QuSoCModule_L74F52T76_Index = internalMemAddress[2:1];
assign QuSoCModule_L74F36T77_Source = QuSoCModule_L74F52T76_Index;
assign byteAddress = QuSoCModule_L74F36T82_Expr[5:1]/*truncate*/;
assign QuSoCModule_L76F37T77_Source = QuSoCModule_L76F53T76_Index;
assign QuSoCModule_L76F37T89_Resize = { {24{1'b0}}, QuSoCModule_L76F37T77_Source }/*expand*/;
assign uartReadData = QuSoCModule_L76F37T89_Resize;
assign QuSoCModule_L82F13L101T14_QuSoCModule_L84F25T41_Cast = { {10{1'b0}}, memSegment }/*expand*/;
assign internalMemReadData = QuSoCModule_L82F13L101T14_result;
assign internalMemReady = State_MemReady;
assign QuSoCModule_L108F16T46_Source = QuSoCModule_L108F32T45_Expr;
assign QuSoCModule_L108F15T74_Resize = QuSoCModule_L108F16T61_Expr;
assign QuSoCModule_L110F20T52_Source = QuSoCModule_L110F36T51_Expr;
assign QuSoCModule_L110F19T80_Resize = QuSoCModule_L110F20T67_Expr;
assign QuSoCModule_L111F19T49_Source = QuSoCModule_L111F35T48_Expr;
assign mask = QuSoCModule_L107F13L111T49_Lookup;
assign blockRAMWriteData = QuSoCModule_L114F13T68_Expr;
assign QuSoCModule_L116F35T54_Index = wordAddress[32:11];
assign memSegment = QuSoCModule_L116F35T54_Index;
assign QuSoCModule_L117F40T57_Index = wordAddress[10:1];
assign blockRamAddress = QuSoCModule_L117F40T57_Index;
assign QuSoCModule_L119F36T60_Index = internalMemAddress[2:1];
assign uartAddress = QuSoCModule_L119F36T60_Index;
assign UARTReady = QuSoCModule_L123F27T45_Expr;
assign CPU_BaseAddress = { {31{1'b0}}, QuSoCModule_L66F31T33_Expr }/*expand*/;
assign CPU_MemReadData = internalMemReadData;
assign CPU_MemReady = internalMemReady;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F25T41_Cast = { {10{1'b0}}, memSegment }/*expand*/;
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L154F45T67_Index = CPU_MemWriteData[8:1];
assign QuSoCModule_L126F9L178T10_QuSoCModule_L142F13L177T14_QuSoCModule_L143F17L176T18_QuSoCModule_L160F25L166T26_QuSoCModule_L162F49T71_Cast = CPU_MemWriteData[8:1]/*truncate*/;
assign Counter = State_Counter;
assign CSCounter = State_CSCounter;
assign CPUAddress = CPU_MemAddress;
assign CPUMemRead = CPU_MemRead;
assign CPUMemWrite = CPU_MemWrite;
assign CPUMemReadData = internalMemReadData;
assign SOCMemReady = State_MemReady;
assign CPUHalted = CPU_IsHalted;
assign BlockRAMWE = State_BlockRAMWE;
assign UARTWriteData = QuSoCModule_L121F38T51_Index;
assign CPUBaseAddressCPU_BaseAddressHardLink = CPU_BaseAddress;
assign CPUMemReadDataCPU_MemReadDataHardLink = CPU_MemReadData;
assign CPUMemReadyCPU_MemReadyHardLink = CPU_MemReady;
assign CPUExtIRQCPU_ExtIRQHardLink = CPU_ExtIRQ;
assign CPU_DbgState = CPUDbgStateCPU_DbgStateHardLink;
assign CPU_DbgWBData = CPUDbgWBDataCPU_DbgWBDataHardLink/*cast*/;
assign CPU_DbgWDDataReady = CPUDbgWDDataReadyCPU_DbgWDDataReadyHardLink;
assign CPU_MemRead = CPUMemReadCPU_MemReadHardLink;
assign CPU_MemWrite = CPUMemWriteCPU_MemWriteHardLink;
assign CPU_MemAddress = CPUMemAddressCPU_MemAddressHardLink;
assign CPU_IsHalted = CPUIsHaltedCPU_IsHaltedHardLink;
assign CPU_MemWriteData = CPUMemWriteDataCPU_MemWriteDataHardLink;
assign CPU_MemWriteMode = CPUMemWriteModeCPU_MemWriteModeHardLink;
assign CPU_PCMisaligned = CPUPCMisalignedCPU_PCMisalignedHardLink;
assign QuSoCModule_L109F15L111T49_Lookup1 = QuSoCModule_L111F19T49_Source;
assign QuSoCModule_L109F15L111T49_Lookup2 = QuSoCModule_L110F19T80_Resize;
assign QuSoCModule_L109F15L111T49_LookupMultiplexerAddress = QuSoCModule_L109F15T36_Expr;
assign QuSoCModule_L107F13L111T49_Lookup1 = QuSoCModule_L109F15L111T49_Lookup;
assign QuSoCModule_L107F13L111T49_Lookup2 = QuSoCModule_L108F15T74_Resize;
assign QuSoCModule_L107F13L111T49_LookupMultiplexerAddress = QuSoCModule_L107F13T34_Expr;
assign QuSoCModule_L76F53T76_Index = State_UART[uartAddress];
assign QuSoCModule_L123F27T40_Index = State_UART[QuSoCModule_L123F38T39_Expr];
assign QuSoCModule_L121F38T51_Index = State_UART[QuSoCModule_L121F49T50_Expr];
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
