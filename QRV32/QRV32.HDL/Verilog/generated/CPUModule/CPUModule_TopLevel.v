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
// System configuration name is CPUModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module CPUModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	input  [31: 0] BaseAddress,
	input  [31: 0] MemReadValue,
	input  MemReady,
	output MemRead,
	output [31: 0] MemAddress
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  CPUModule_L45F37T51_Expr = 1'b0;
wire  [3:1] CPUModule_L45F70T81_Expr = 3'b101;
wire  CPUModule_L46F41T55_Expr = 1'b0;
wire  [3:1] CPUModule_L46F79T80_Expr = 3'b100;
wire  CPUModule_L47F44T58_Expr = 1'b0;
wire  [2:1] CPUModule_L52F41T52_Expr = 2'b10;
wire  [3:1] CPUModule_L53F39T50_Expr = 3'b101;
wire  CPUModule_L149F9L190T10_CPUModule_L152F22T36_Expr = 1'b0;
wire  CPUModule_L149F9L190T10_CPUModule_L153F39T50_Expr = 1'b1;
wire  CPUModule_L149F9L190T10_CPUModule_L155F22T33_Expr = 1'b1;
wire  [2:1] CPUModule_L149F9L190T10_CPUModule_L157F21L160T22_CPUModule_L158F43T54_Expr = 2'b10;
wire  [2:1] CPUModule_L149F9L190T10_CPUModule_L162F22T33_Expr = 2'b10;
wire  [2:1] CPUModule_L149F9L190T10_CPUModule_L164F21L166T22_CPUModule_L165F43T54_Expr = 2'b11;
wire  [2:1] CPUModule_L149F9L190T10_CPUModule_L168F22T33_Expr = 2'b11;
wire  [3:1] CPUModule_L149F9L190T10_CPUModule_L169F39T51_Expr = 3'b100;
wire  CPUModule_L149F9L190T10_CPUModule_L170F45T50_Expr = 1'b0;
wire  [5:1] CPUModule_L149F9L190T10_CPUModule_L174F30T43_Expr = 5'b10011;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L108F37T41_Expr = 1'b1;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F22T37_Expr = 1'b0;
wire  [2:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F22T37_Expr = 2'b10;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F50T52_Expr = 1'b1;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F55T57_Expr = 1'b0;
wire  [2:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F22T38_Expr = 2'b11;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F50T52_Expr = 1'b1;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F55T57_Expr = 1'b0;
wire  [3:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F22T37_Expr = 3'b111;
wire  [3:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F22T36_Expr = 3'b110;
wire  [3:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F22T37_Expr = 3'b100;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F22T37_Expr = 1'b1;
wire  [3:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F22T42_Expr = 3'b101;
wire  [3:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_Halt_CPUModule_L102F9L104T10_CPUModule_L103F31T44_Expr = 3'b110;
wire  [3:1] CPUModule_L149F9L190T10_Halt_CPUModule_L102F9L104T10_CPUModule_L103F31T44_Expr = 3'b110;
wire  [3:1] CPUModule_L149F9L190T10_CPUModule_L183F22T34_Expr = 3'b100;
wire  [3:1] CPUModule_L149F9L190T10_CPUModule_L184F39T50_Expr = 3'b101;
wire  [3:1] CPUModule_L149F9L190T10_CPUModule_L186F22T33_Expr = 3'b101;
wire  CPUModule_L149F9L190T10_CPUModule_L187F39T50_Expr = 1'b1;
wire  CPUModule_L42F47T58_Expr = 1'b1;
wire  [32:1] Inputs_BaseAddress;
wire  [32:1] Inputs_MemReadValue;
wire  Inputs_MemReady;
reg  [3:1] NextState_State = 3'b000;
reg  [32:1] NextState_Instruction = 32'b00000000000000000000000000000000;
reg  NextState_WBDataReady = 1'b1;
reg  [32:1] NextState_WBData = 32'b00000000000000000000000000000000;
wire  PCWE;
wire  [32:1] PCOffset;
wire  PCOverwrite;
wire  [32:1] ALUOp1;
wire signed  [32:1] ALUOp2;
wire  RegsRead;
wire  RegsWE;
wire  [32:1] CMPLhs;
wire signed  [32:1] CMPRhs;
wire  [6:1] OpCode;
wire  [3:1] OPIMMCode;
wire  [32:1] ID_Instruction;
wire  [7:1] ID_OpCode;
wire  [5:1] ID_RD;
wire  [5:1] ID_RS1;
wire  [5:1] ID_RS2;
wire  [3:1] ID_Funct3;
wire  [7:1] ID_Funct7;
wire signed  [32:1] ID_RTypeImm;
wire signed  [32:1] ID_ITypeImm;
wire signed  [32:1] ID_STypeImm;
wire signed  [32:1] ID_BTypeImm;
wire signed  [32:1] ID_UTypeImm;
wire signed  [32:1] ID_JTypeImm;
wire  [5:1] ID_SHAMT;
wire  ID_SHARITH;
wire  PC_WE;
wire  PC_Overwrite;
wire  [32:1] PC_Offset;
wire  [32:1] PC_PC;
wire  Regs_Read;
wire  [5:1] Regs_RS1Addr;
wire  [5:1] Regs_RS2Addr;
wire  [5:1] Regs_RD;
wire  Regs_WE;
wire  [32:1] Regs_WriteData;
wire  [32:1] Regs_RS1;
wire  [32:1] Regs_RS2;
wire  Regs_Ready;
wire  [32:1] ALU_Op1;
wire  [32:1] ALU_Op2;
wire  [5:1] ALU_SHAMT;
wire  [32:1] ALU_ADD;
wire  ALU_ADDOverflow;
wire  [33:1] ALU_resAND;
wire  [33:1] ALU_resOR;
wire  [33:1] ALU_resXOR;
wire  [32:1] ALU_SHLL;
wire  [32:1] ALU_SHRL;
wire  [32:1] ALU_SHRA;
wire  [32:1] CMP_Lhs;
wire  [32:1] CMP_Rhs;
wire  CMP_EQ;
wire  CMP_NEQ;
wire  CMP_UGT;
wire  CMP_ULT;
wire  CMP_SGT;
wire  CMP_SLT;
wire  [8:1] CPUModule_L58F36T51_Cast;
reg  [6:1] CPUModule_L58F27T51_Cast = 6'b000000;
wire  [8:1] CPUModule_L59F45T60_Cast;
reg  [3:1] CPUModule_L59F33T60_Cast = 3'b000;
wire  [32:1] IDInstructionID_InstructionHardLink;
wire  [7:1] IDOpCodeID_OpCodeHardLink;
wire  [5:1] IDRDID_RDHardLink;
wire  [5:1] IDRS1ID_RS1HardLink;
wire  [5:1] IDRS2ID_RS2HardLink;
wire  [3:1] IDFunct3ID_Funct3HardLink;
wire  [7:1] IDFunct7ID_Funct7HardLink;
wire  [32:1] IDRTypeImmID_RTypeImmHardLink;
wire  [32:1] IDITypeImmID_ITypeImmHardLink;
wire  [32:1] IDSTypeImmID_STypeImmHardLink;
wire  [32:1] IDBTypeImmID_BTypeImmHardLink;
wire  [32:1] IDUTypeImmID_UTypeImmHardLink;
wire  [32:1] IDJTypeImmID_JTypeImmHardLink;
wire  [5:1] IDSHAMTID_SHAMTHardLink;
wire  IDSHARITHID_SHARITHHardLink;
wire  PCWEPC_WEHardLink;
wire  PCOverwritePC_OverwriteHardLink;
wire  [32:1] PCOffsetPC_OffsetHardLink;
wire  [32:1] PCPCPC_PCHardLink;
wire  RegsReadRegs_ReadHardLink;
wire  [5:1] RegsRS1AddrRegs_RS1AddrHardLink;
wire  [5:1] RegsRS2AddrRegs_RS2AddrHardLink;
wire  [5:1] RegsRDRegs_RDHardLink;
wire  RegsWERegs_WEHardLink;
wire  [32:1] RegsWriteDataRegs_WriteDataHardLink;
wire  [32:1] RegsRS1Regs_RS1HardLink;
wire  [32:1] RegsRS2Regs_RS2HardLink;
wire  RegsReadyRegs_ReadyHardLink;
wire  [32:1] ALUOp1ALU_Op1HardLink;
wire  [32:1] ALUOp2ALU_Op2HardLink;
wire  [5:1] ALUSHAMTALU_SHAMTHardLink;
wire  [32:1] ALUADDALU_ADDHardLink;
wire  ALUADDOverflowALU_ADDOverflowHardLink;
wire  [33:1] ALUresANDALU_resANDHardLink;
wire  [33:1] ALUresORALU_resORHardLink;
wire  [33:1] ALUresXORALU_resXORHardLink;
wire  [32:1] ALUSHLLALU_SHLLHardLink;
wire  [32:1] ALUSHRLALU_SHRLHardLink;
wire  [32:1] ALUSHRAALU_SHRAHardLink;
wire  [32:1] CMPLhsCMP_LhsHardLink;
wire  [32:1] CMPRhsCMP_RhsHardLink;
wire  CMPEQCMP_EQHardLink;
wire  CMPNEQCMP_NEQHardLink;
wire  CMPUGTCMP_UGTHardLink;
wire  CMPULTCMP_ULTHardLink;
wire  CMPSGTCMP_SGTHardLink;
wire  CMPSLTCMP_SLTHardLink;
reg  [3:1] State_State = 3'b000;
wire  [3:1] State_StateDefault = 3'b000;
reg  [32:1] State_Instruction = 32'b00000000000000000000000000000000;
wire  [32:1] State_InstructionDefault = 32'b00000000000000000000000000000000;
reg  State_WBDataReady = 1'b0;
wire  State_WBDataReadyDefault = 1'b1;
reg  [32:1] State_WBData = 32'b00000000000000000000000000000000;
wire  [32:1] State_WBDataDefault = 32'b00000000000000000000000000000000;
wire  CPUModule_L45F22T81_Expr;
wire  CPUModule_L45F22T81_Expr_1;
wire  CPUModule_L45F22T81_Expr_2;
wire  CPUModule_L53F24T71_Expr;
wire  CPUModule_L53F24T71_Expr_1;
wire  CPUModule_L53F24T71_Expr_2;
wire  CPUModule_L45F22T51_Expr;
wire signed  [4:1] CPUModule_L45F22T51_ExprLhs;
wire signed  [4:1] CPUModule_L45F22T51_ExprRhs;
wire  CPUModule_L45F55T81_Expr;
wire signed  [4:1] CPUModule_L45F55T81_ExprLhs;
wire signed  [4:1] CPUModule_L45F55T81_ExprRhs;
wire  CPUModule_L46F26T55_Expr;
wire signed  [4:1] CPUModule_L46F26T55_ExprLhs;
wire signed  [4:1] CPUModule_L46F26T55_ExprRhs;
wire  CPUModule_L47F29T58_Expr;
wire signed  [4:1] CPUModule_L47F29T58_ExprLhs;
wire signed  [4:1] CPUModule_L47F29T58_ExprRhs;
wire  CPUModule_L52F26T52_Expr;
wire signed  [4:1] CPUModule_L52F26T52_ExprLhs;
wire signed  [4:1] CPUModule_L52F26T52_ExprRhs;
wire  CPUModule_L53F24T50_Expr;
wire signed  [4:1] CPUModule_L53F24T50_ExprLhs;
wire signed  [4:1] CPUModule_L53F24T50_ExprRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_Case;
wire signed  [7:1] CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseLhs;
wire signed  [7:1] CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseRhs;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseRhs;
wire  CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_Case;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseLhs;
wire signed  [4:1] CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseRhs;
wire  CPUModule_L42F32T58_Expr;
wire signed  [4:1] CPUModule_L42F32T58_ExprLhs;
wire signed  [4:1] CPUModule_L42F32T58_ExprRhs;
reg  [32:1] CPUModule_L46F26T80_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup = 32'b00000000000000000000000000000000;
reg  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup = 32'b00000000000000000000000000000000;
wire  CPUModule_L46F26T80_LookupMultiplexerAddress;
wire  [32:1] CPUModule_L46F26T80_Lookup1;
wire  [32:1] CPUModule_L46F26T80_Lookup2;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_LookupMultiplexerAddress;
wire  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup1;
wire  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup2;
wire  CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_LookupMultiplexerAddress;
wire  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup1;
wire  [32:1] CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup2;
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
State_State <= State_StateDefault;
State_Instruction <= State_InstructionDefault;
State_WBDataReady <= State_WBDataReadyDefault;
State_WBData <= State_WBDataDefault;
end
else begin
State_State <= NextState_State;
State_Instruction <= NextState_Instruction;
State_WBDataReady <= NextState_WBDataReady;
State_WBData <= NextState_WBData;
end
end
assign CPUModule_L45F22T51_Expr = CPUModule_L45F22T51_ExprLhs == CPUModule_L45F22T51_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L45F55T81_Expr = CPUModule_L45F55T81_ExprLhs == CPUModule_L45F55T81_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L46F26T55_Expr = CPUModule_L46F26T55_ExprLhs == CPUModule_L46F26T55_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L47F29T58_Expr = CPUModule_L47F29T58_ExprLhs == CPUModule_L47F29T58_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L52F26T52_Expr = CPUModule_L52F26T52_ExprLhs == CPUModule_L52F26T52_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L53F24T50_Expr = CPUModule_L53F24T50_ExprLhs == CPUModule_L53F24T50_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_Case = CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_Case = CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_Case = CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_Case = CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_Case = CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_Case = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseLhs == CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_Case = CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_Case = CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseLhs == CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseRhs ? 1'b1 : 1'b0;
assign CPUModule_L42F32T58_Expr = CPUModule_L42F32T58_ExprLhs == CPUModule_L42F32T58_ExprRhs ? 1'b1 : 1'b0;
assign CPUModule_L45F22T81_Expr = CPUModule_L45F22T81_Expr_1 | CPUModule_L45F22T81_Expr_2;
assign CPUModule_L53F24T71_Expr = CPUModule_L53F24T71_Expr_1 & CPUModule_L53F24T71_Expr_2;
CPUModule_TopLevel_CPUModule_ID CPUModule_TopLevel_CPUModule_ID
(
// [BEGIN USER MAP FOR ID]
// [END USER MAP FOR ID]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.Instruction (IDInstructionID_InstructionHardLink),
	.OpCode (IDOpCodeID_OpCodeHardLink),
	.RD (IDRDID_RDHardLink),
	.RS1 (IDRS1ID_RS1HardLink),
	.RS2 (IDRS2ID_RS2HardLink),
	.Funct3 (IDFunct3ID_Funct3HardLink),
	.Funct7 (IDFunct7ID_Funct7HardLink),
	.RTypeImm (IDRTypeImmID_RTypeImmHardLink),
	.ITypeImm (IDITypeImmID_ITypeImmHardLink),
	.STypeImm (IDSTypeImmID_STypeImmHardLink),
	.BTypeImm (IDBTypeImmID_BTypeImmHardLink),
	.UTypeImm (IDUTypeImmID_UTypeImmHardLink),
	.JTypeImm (IDJTypeImmID_JTypeImmHardLink),
	.SHAMT (IDSHAMTID_SHAMTHardLink),
	.SHARITH (IDSHARITHID_SHARITHHardLink)

);
CPUModule_TopLevel_CPUModule_PC CPUModule_TopLevel_CPUModule_PC
(
// [BEGIN USER MAP FOR PC]
// [END USER MAP FOR PC]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.WE (PCWEPC_WEHardLink),
	.Overwrite (PCOverwritePC_OverwriteHardLink),
	.Offset (PCOffsetPC_OffsetHardLink),
	.PC (PCPCPC_PCHardLink)

);
CPUModule_TopLevel_CPUModule_Regs CPUModule_TopLevel_CPUModule_Regs
(
// [BEGIN USER MAP FOR Regs]
// [END USER MAP FOR Regs]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.Read (RegsReadRegs_ReadHardLink),
	.RS1Addr (RegsRS1AddrRegs_RS1AddrHardLink),
	.RS2Addr (RegsRS2AddrRegs_RS2AddrHardLink),
	.RD (RegsRDRegs_RDHardLink),
	.WE (RegsWERegs_WEHardLink),
	.WriteData (RegsWriteDataRegs_WriteDataHardLink),
	.RS1 (RegsRS1Regs_RS1HardLink),
	.RS2 (RegsRS2Regs_RS2HardLink),
	.Ready (RegsReadyRegs_ReadyHardLink)

);
CPUModule_TopLevel_CPUModule_ALU CPUModule_TopLevel_CPUModule_ALU
(
// [BEGIN USER MAP FOR ALU]
// [END USER MAP FOR ALU]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.Op1 (ALUOp1ALU_Op1HardLink),
	.Op2 (ALUOp2ALU_Op2HardLink),
	.SHAMT (ALUSHAMTALU_SHAMTHardLink),
	.ADD (ALUADDALU_ADDHardLink),
	.ADDOverflow (ALUADDOverflowALU_ADDOverflowHardLink),
	.resAND (ALUresANDALU_resANDHardLink),
	.resOR (ALUresORALU_resORHardLink),
	.resXOR (ALUresXORALU_resXORHardLink),
	.SHLL (ALUSHLLALU_SHLLHardLink),
	.SHRL (ALUSHRLALU_SHRLHardLink),
	.SHRA (ALUSHRAALU_SHRAHardLink)

);
CPUModule_TopLevel_CPUModule_CMP CPUModule_TopLevel_CPUModule_CMP
(
// [BEGIN USER MAP FOR CMP]
// [END USER MAP FOR CMP]
	.BoardSignals_Clock (BoardSignals_Clock),
	.BoardSignals_Reset (BoardSignals_Reset),
	.BoardSignals_Running (BoardSignals_Running),
	.BoardSignals_Starting (BoardSignals_Starting),
	.BoardSignals_Started (BoardSignals_Started),
	.Lhs (CMPLhsCMP_LhsHardLink),
	.Rhs (CMPRhsCMP_RhsHardLink),
	.EQ (CMPEQCMP_EQHardLink),
	.NEQ (CMPNEQCMP_NEQHardLink),
	.UGT (CMPUGTCMP_UGTHardLink),
	.ULT (CMPULTCMP_ULTHardLink),
	.SGT (CMPSGTCMP_SGTHardLink),
	.SLT (CMPSLTCMP_SLTHardLink)

);
always @*
begin
case (CPUModule_L46F26T80_LookupMultiplexerAddress)
    'b0:
CPUModule_L46F26T80_Lookup = CPUModule_L46F26T80_Lookup1;
    'b1:
CPUModule_L46F26T80_Lookup = CPUModule_L46F26T80_Lookup2;
  default:
CPUModule_L46F26T80_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_LookupMultiplexerAddress)
    'b0:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup1;
    'b1:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup2;
  default:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
case (CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_LookupMultiplexerAddress)
    'b0:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup1;
    'b1:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup2;
  default:
CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup = 'b00000000000000000000000000000000;
endcase

end
always @*
begin
NextState_State = State_State/*cast*/;
NextState_Instruction = State_Instruction/*cast*/;
NextState_WBDataReady = State_WBDataReady;
NextState_WBData = State_WBData/*cast*/;
if ( CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_Case == 1 ) begin
NextState_State = { {2{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L153F39T50_Expr }/*expand*/;
end
else if ( CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_Case == 1 ) begin
if ( Inputs_MemReady == 1 ) begin
NextState_State = { {1{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L157F21L160T22_CPUModule_L158F43T54_Expr }/*expand*/;
NextState_Instruction = Inputs_MemReadValue/*cast*/;
end
end
else if ( CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_Case == 1 ) begin
if ( Regs_Ready == 1 ) begin
NextState_State = { {1{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L164F21L166T22_CPUModule_L165F43T54_Expr }/*expand*/;
end
end
else if ( CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_Case == 1 ) begin
NextState_State = CPUModule_L149F9L190T10_CPUModule_L169F39T51_Expr/*cast*/;
NextState_WBDataReady = CPUModule_L149F9L190T10_CPUModule_L170F45T50_Expr;
if ( CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_Case == 1 ) begin
NextState_WBDataReady = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L108F37T41_Expr;
if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_Case == 1 ) begin
NextState_WBData = ALU_ADD/*cast*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_Case == 1 ) begin
NextState_WBData = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup/*cast*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_Case == 1 ) begin
NextState_WBData = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup/*cast*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_Case == 1 ) begin
NextState_WBData = ALU_resAND[32:1]/*truncate*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_Case == 1 ) begin
NextState_WBData = ALU_resOR[32:1]/*truncate*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_Case == 1 ) begin
NextState_WBData = ALU_resXOR[32:1]/*truncate*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_Case == 1 ) begin
NextState_WBData = ALU_SHLL/*cast*/;
end
else if ( CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_Case == 1 ) begin
if ( ID_SHARITH == 1 ) begin
NextState_WBData = ALU_SHRA/*cast*/;
end
else begin
NextState_WBData = ALU_SHRL/*cast*/;
end
end
else begin
NextState_State = CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_Halt_CPUModule_L102F9L104T10_CPUModule_L103F31T44_Expr/*cast*/;
end
end
else begin
NextState_State = CPUModule_L149F9L190T10_Halt_CPUModule_L102F9L104T10_CPUModule_L103F31T44_Expr/*cast*/;
end
end
else if ( CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_Case == 1 ) begin
NextState_State = CPUModule_L149F9L190T10_CPUModule_L184F39T50_Expr/*cast*/;
end
else if ( CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_Case == 1 ) begin
NextState_State = { {2{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L187F39T50_Expr }/*expand*/;
end

end
assign CPUModule_L46F26T80_LookupMultiplexerAddress = CPUModule_L46F26T55_Expr;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_LookupMultiplexerAddress = CMP_SLT;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_LookupMultiplexerAddress = CMP_ULT;
assign CPUModule_L45F22T51_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L45F22T51_ExprRhs = { {3{1'b0}}, CPUModule_L45F37T51_Expr }/*expand*/;
assign CPUModule_L45F55T81_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L45F55T81_ExprRhs = { {1{1'b0}}, CPUModule_L45F70T81_Expr }/*expand*/;
assign CPUModule_L46F26T55_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L46F26T55_ExprRhs = { {3{1'b0}}, CPUModule_L46F41T55_Expr }/*expand*/;
assign CPUModule_L47F29T58_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L47F29T58_ExprRhs = { {3{1'b0}}, CPUModule_L47F44T58_Expr }/*expand*/;
assign CPUModule_L52F26T52_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L52F26T52_ExprRhs = { {2{1'b0}}, CPUModule_L52F41T52_Expr }/*expand*/;
assign CPUModule_L53F24T50_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L53F24T50_ExprRhs = { {1{1'b0}}, CPUModule_L53F39T50_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L152F17L154T27_CaseRhs = { {3{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L152F22T36_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L155F17L161T27_CaseRhs = { {3{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L155F22T33_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L162F17L167T27_CaseRhs = { {2{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L162F22T33_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L168F17L182T27_CaseRhs = { {2{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L168F22T33_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseLhs = { {1{1'b0}}, OpCode }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L174F25L176T35_CaseRhs = { {2{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L174F30T43_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F17L113T27_CaseRhs = { {3{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L111F22T37_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F17L116T27_CaseRhs = { {2{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L114F22T37_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F17L119T27_CaseRhs = { {2{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L117F22T38_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F17L122T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L120F22T37_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F17L125T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L123F22T36_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F17L128T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L126F22T37_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F17L131T27_CaseRhs = { {3{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L129F22T37_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseLhs = { {1{1'b0}}, OPIMMCode }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F17L141T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L132F22T42_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L183F17L185T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L183F22T34_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L149F9L190T10_CPUModule_L186F17L188T27_CaseRhs = { {1{1'b0}}, CPUModule_L149F9L190T10_CPUModule_L186F22T33_Expr }/*expand*/;
assign CPUModule_L42F32T58_ExprLhs = { {1{1'b0}}, State_State }/*expand*/;
assign CPUModule_L42F32T58_ExprRhs = { {3{1'b0}}, CPUModule_L42F47T58_Expr }/*expand*/;
assign CPUModule_L45F22T81_Expr_1 = CPUModule_L45F22T51_Expr;
assign CPUModule_L45F22T81_Expr_2 = CPUModule_L45F55T81_Expr;
assign CPUModule_L53F24T71_Expr_1 = CPUModule_L53F24T50_Expr;
assign CPUModule_L53F24T71_Expr_2 = State_WBDataReady;
assign Inputs_BaseAddress = BaseAddress/*cast*/;
assign Inputs_MemReadValue = MemReadValue/*cast*/;
assign Inputs_MemReady = MemReady;
assign PCWE = CPUModule_L45F22T81_Expr;
assign PCOffset = CPUModule_L46F26T80_Lookup/*cast*/;
assign PCOverwrite = CPUModule_L47F29T58_Expr;
assign ALUOp1 = Regs_RS1/*cast*/;
assign ALUOp2 = ID_ITypeImm/*cast*/;
assign RegsRead = CPUModule_L52F26T52_Expr;
assign RegsWE = CPUModule_L53F24T71_Expr;
assign CMPLhs = Regs_RS1/*cast*/;
assign CMPRhs = ID_ITypeImm/*cast*/;
assign CPUModule_L58F36T51_Cast = { {1{1'b0}}, ID_OpCode }/*expand*/;
assign OpCode = CPUModule_L58F27T51_Cast/*cast*/;
assign CPUModule_L59F45T60_Cast = { {5{1'b0}}, ID_Funct3 }/*expand*/;
assign OPIMMCode = CPUModule_L59F33T60_Cast/*cast*/;
assign ID_Instruction = State_Instruction/*cast*/;
assign PC_WE = PCWE;
assign PC_Offset = PCOffset/*cast*/;
assign PC_Overwrite = PCOverwrite;
assign Regs_RS1Addr = ID_RS1/*cast*/;
assign Regs_RS2Addr = ID_RS2/*cast*/;
assign Regs_RD = ID_RD/*cast*/;
assign Regs_Read = RegsRead;
assign Regs_WriteData = State_WBData/*cast*/;
assign Regs_WE = RegsWE;
assign ALU_Op1 = ALUOp1/*cast*/;
assign ALU_Op2 = ALUOp2/*cast*/;
assign ALU_SHAMT = ID_SHAMT/*cast*/;
assign CMP_Lhs = CMPLhs/*cast*/;
assign CMP_Rhs = CMPRhs/*cast*/;
assign MemRead = CPUModule_L42F32T58_Expr;
assign MemAddress = PC_PC/*cast*/;
assign IDInstructionID_InstructionHardLink = ID_Instruction/*cast*/;
assign ID_OpCode = IDOpCodeID_OpCodeHardLink/*cast*/;
assign ID_RD = IDRDID_RDHardLink/*cast*/;
assign ID_RS1 = IDRS1ID_RS1HardLink/*cast*/;
assign ID_RS2 = IDRS2ID_RS2HardLink/*cast*/;
assign ID_Funct3 = IDFunct3ID_Funct3HardLink/*cast*/;
assign ID_Funct7 = IDFunct7ID_Funct7HardLink/*cast*/;
assign ID_RTypeImm = IDRTypeImmID_RTypeImmHardLink/*cast*/;
assign ID_ITypeImm = IDITypeImmID_ITypeImmHardLink/*cast*/;
assign ID_STypeImm = IDSTypeImmID_STypeImmHardLink/*cast*/;
assign ID_BTypeImm = IDBTypeImmID_BTypeImmHardLink/*cast*/;
assign ID_UTypeImm = IDUTypeImmID_UTypeImmHardLink/*cast*/;
assign ID_JTypeImm = IDJTypeImmID_JTypeImmHardLink/*cast*/;
assign ID_SHAMT = IDSHAMTID_SHAMTHardLink/*cast*/;
assign ID_SHARITH = IDSHARITHID_SHARITHHardLink;
assign PCWEPC_WEHardLink = PC_WE;
assign PCOverwritePC_OverwriteHardLink = PC_Overwrite;
assign PCOffsetPC_OffsetHardLink = PC_Offset/*cast*/;
assign PC_PC = PCPCPC_PCHardLink/*cast*/;
assign RegsReadRegs_ReadHardLink = Regs_Read;
assign RegsRS1AddrRegs_RS1AddrHardLink = Regs_RS1Addr/*cast*/;
assign RegsRS2AddrRegs_RS2AddrHardLink = Regs_RS2Addr/*cast*/;
assign RegsRDRegs_RDHardLink = Regs_RD/*cast*/;
assign RegsWERegs_WEHardLink = Regs_WE;
assign RegsWriteDataRegs_WriteDataHardLink = Regs_WriteData/*cast*/;
assign Regs_RS1 = RegsRS1Regs_RS1HardLink/*cast*/;
assign Regs_RS2 = RegsRS2Regs_RS2HardLink/*cast*/;
assign Regs_Ready = RegsReadyRegs_ReadyHardLink;
assign ALUOp1ALU_Op1HardLink = ALU_Op1/*cast*/;
assign ALUOp2ALU_Op2HardLink = ALU_Op2/*cast*/;
assign ALUSHAMTALU_SHAMTHardLink = ALU_SHAMT/*cast*/;
assign ALU_ADD = ALUADDALU_ADDHardLink/*cast*/;
assign ALU_ADDOverflow = ALUADDOverflowALU_ADDOverflowHardLink;
assign ALU_resAND = ALUresANDALU_resANDHardLink/*cast*/;
assign ALU_resOR = ALUresORALU_resORHardLink/*cast*/;
assign ALU_resXOR = ALUresXORALU_resXORHardLink/*cast*/;
assign ALU_SHLL = ALUSHLLALU_SHLLHardLink/*cast*/;
assign ALU_SHRL = ALUSHRLALU_SHRLHardLink/*cast*/;
assign ALU_SHRA = ALUSHRAALU_SHRAHardLink/*cast*/;
assign CMPLhsCMP_LhsHardLink = CMP_Lhs/*cast*/;
assign CMPRhsCMP_RhsHardLink = CMP_Rhs/*cast*/;
assign CMP_EQ = CMPEQCMP_EQHardLink;
assign CMP_NEQ = CMPNEQCMP_NEQHardLink;
assign CMP_UGT = CMPUGTCMP_UGTHardLink;
assign CMP_ULT = CMPULTCMP_ULTHardLink;
assign CMP_SGT = CMPSGTCMP_SGTHardLink;
assign CMP_SLT = CMPSLTCMP_SLTHardLink;
assign CPUModule_L46F26T80_Lookup1 = { {29{1'b0}}, CPUModule_L46F79T80_Expr }/*expand*/;
assign CPUModule_L46F26T80_Lookup2 = Inputs_BaseAddress/*cast*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup1 = { {31{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F55T57_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F40T57_Lookup2 = { {31{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L115F50T52_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup1 = { {31{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F55T57_Expr }/*expand*/;
assign CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F40T57_Lookup2 = { {31{1'b0}}, CPUModule_L149F9L190T10_OnOPIMM_CPUModule_L107F9L146T10_CPUModule_L118F50T52_Expr }/*expand*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
