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
// System configuration name is RISCVModule_TopLevel_RISCVModule_ID, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module RISCVModule_TopLevel_RISCVModule_ID (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [32: 1] Instruction,
	output [7: 1] OpCode,
	output [5: 1] RD,
	output [5: 1] RS1,
	output [5: 1] RS2,
	output [3: 1] Funct3,
	output [7: 1] Funct7,
	output signed [32: 1] RTypeImm,
	output signed [32: 1] ITypeImm,
	output signed [32: 1] STypeImm,
	output signed [32: 1] BTypeImm,
	output signed [32: 1] UTypeImm,
	output signed [32: 1] JTypeImm,
	output [5: 1] SHAMT,
	output SHARITH,
	output SUB,
	output [7: 1] OpTypeCode,
	output [3: 1] OPIMMCode,
	output [3: 1] OPCode,
	output [3: 1] BranchTypeCode,
	output [3: 1] LoadTypeCode,
	output ECode,
	output [3: 1] SystemCode
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  InstructionDecoders_L18F42T43_Expr = 1'b0;
wire  InstructionDecoders_L28F134T139_Expr = 1'b0;
wire  InstructionDecoders_L30F136T141_Expr = 1'b0;
wire  [32:1] Inputs_Instruction;
wire  [32:1] internalBits;
wire signed  [32:1] internalITypeImm;
wire  [7:1] internalOpCode;
wire  [3:1] internalFunct3;
wire signed  [32:1] ZeroU32;
wire  [12:1] InstructionDecoders_L14F51T88_Source;
wire  [12:1] InstructionDecoders_L14F67T87_Index;
wire signed  [12:1] InstructionDecoders_L14F51T97_SignChange;
wire signed  [32:1] InstructionDecoders_L14F51T109_Resize;
wire  [7:1] InstructionDecoders_L15F49T67_Index;
wire  [3:1] InstructionDecoders_L16F49T69_Index;
wire  [5:1] InstructionDecoders_L20F34T53_Index;
wire  [5:1] InstructionDecoders_L21F35T55_Index;
wire  [5:1] InstructionDecoders_L22F35T55_Index;
wire  [7:1] InstructionDecoders_L24F38T58_Index;
wire  [12:1] InstructionDecoders_L25F40T77_Source;
wire  [12:1] InstructionDecoders_L25F56T76_Index;
wire signed  [12:1] InstructionDecoders_L25F40T86_SignChange;
wire signed  [32:1] InstructionDecoders_L25F40T98_Resize;
wire  [12:1] InstructionDecoders_L26F40T77_Source;
wire  [12:1] InstructionDecoders_L26F56T76_Index;
wire signed  [12:1] InstructionDecoders_L26F40T86_SignChange;
wire signed  [32:1] InstructionDecoders_L26F40T98_Resize;
wire  [12:1] InstructionDecoders_L27F40T98_Source;
wire  [7:1] InstructionDecoders_L27F56T76_Index;
wire  [5:1] InstructionDecoders_L27F78T97_Index;
wire signed  [12:1] InstructionDecoders_L27F40T107_SignChange;
wire signed  [32:1] InstructionDecoders_L27F40T119_Resize;
wire  [13:1] InstructionDecoders_L28F40T140_Source;
wire  InstructionDecoders_L28F56T72_Index;
wire  InstructionDecoders_L28F74T89_Index;
wire  [6:1] InstructionDecoders_L28F91T111_Index;
wire  [4:1] InstructionDecoders_L28F113T132_Index;
wire signed  [13:1] InstructionDecoders_L28F40T149_SignChange;
wire signed  [32:1] InstructionDecoders_L28F40T161_Resize;
wire  [32:1] InstructionDecoders_L29F40T93_Source;
wire  [20:1] InstructionDecoders_L29F56T76_Index;
wire  [12:1] InstructionDecoders_L29F78T92_Index;
wire signed  [32:1] InstructionDecoders_L29F40T102_SignChange;
wire signed  [32:1] InstructionDecoders_L29F40T114_Resize;
wire  [21:1] InstructionDecoders_L30F40T142_Source;
wire  InstructionDecoders_L30F56T72_Index;
wire  [8:1] InstructionDecoders_L30F74T94_Index;
wire  InstructionDecoders_L30F96T112_Index;
wire  [10:1] InstructionDecoders_L30F114T134_Index;
wire signed  [21:1] InstructionDecoders_L30F40T151_SignChange;
wire signed  [32:1] InstructionDecoders_L30F40T163_Resize;
wire  [5:1] InstructionDecoders_L32F37T59_Index;
wire  InstructionDecoders_L33F32T52_Index;
wire  InstructionDecoders_L34F28T48_Index;
wire  [8:1] InstructionDecoders_L36F55T75_Cast;
wire  [7:1] InstructionDecoders_L36F42T75_Cast;
wire  [8:1] InstructionDecoders_L37F52T72_Cast;
wire  [3:1] InstructionDecoders_L37F40T72_Cast;
wire  [8:1] InstructionDecoders_L38F43T63_Cast;
wire  [3:1] InstructionDecoders_L38F34T63_Cast;
wire  [8:1] InstructionDecoders_L39F67T87_Cast;
wire  [3:1] InstructionDecoders_L39F50T87_Cast;
wire  [8:1] InstructionDecoders_L40F61T81_Cast;
wire  [3:1] InstructionDecoders_L40F46T81_Cast;
wire  [8:1] InstructionDecoders_L41F40T62_Cast;
wire  InstructionDecoders_L41F32T62_Cast;
wire  [8:1] InstructionDecoders_L42F55T75_Cast;
wire  [3:1] InstructionDecoders_L42F42T75_Cast;
assign Inputs_Instruction = Instruction/*cast*/;
assign internalBits = Inputs_Instruction/*cast*/;
assign InstructionDecoders_L14F67T87_Index = internalBits[32:21]/*cast*/;
assign InstructionDecoders_L14F51T88_Source = InstructionDecoders_L14F67T87_Index/*cast*/;
assign InstructionDecoders_L14F51T97_SignChange = InstructionDecoders_L14F51T88_Source/*cast*/;
assign InstructionDecoders_L14F51T109_Resize = { {20{InstructionDecoders_L14F51T97_SignChange[12]}}, InstructionDecoders_L14F51T97_SignChange }/*expand*/;
assign internalITypeImm = InstructionDecoders_L14F51T109_Resize/*cast*/;
assign InstructionDecoders_L15F49T67_Index = internalBits[7:1]/*cast*/;
assign internalOpCode = InstructionDecoders_L15F49T67_Index/*cast*/;
assign InstructionDecoders_L16F49T69_Index = internalBits[15:13]/*cast*/;
assign internalFunct3 = InstructionDecoders_L16F49T69_Index/*cast*/;
assign ZeroU32 = { {31{1'b0}}, InstructionDecoders_L18F42T43_Expr }/*expand*/;
assign OpCode = internalOpCode/*cast*/;
assign InstructionDecoders_L20F34T53_Index = internalBits[12:8]/*cast*/;
assign RD = InstructionDecoders_L20F34T53_Index/*cast*/;
assign InstructionDecoders_L21F35T55_Index = internalBits[20:16]/*cast*/;
assign RS1 = InstructionDecoders_L21F35T55_Index/*cast*/;
assign InstructionDecoders_L22F35T55_Index = internalBits[25:21]/*cast*/;
assign RS2 = InstructionDecoders_L22F35T55_Index/*cast*/;
assign Funct3 = internalFunct3/*cast*/;
assign InstructionDecoders_L24F38T58_Index = internalBits[32:26]/*cast*/;
assign Funct7 = InstructionDecoders_L24F38T58_Index/*cast*/;
assign InstructionDecoders_L25F56T76_Index = internalBits[32:21]/*cast*/;
assign InstructionDecoders_L25F40T77_Source = InstructionDecoders_L25F56T76_Index/*cast*/;
assign InstructionDecoders_L25F40T86_SignChange = InstructionDecoders_L25F40T77_Source/*cast*/;
assign InstructionDecoders_L25F40T98_Resize = { {20{InstructionDecoders_L25F40T86_SignChange[12]}}, InstructionDecoders_L25F40T86_SignChange }/*expand*/;
assign RTypeImm = InstructionDecoders_L25F40T98_Resize/*cast*/;
assign InstructionDecoders_L26F56T76_Index = internalBits[32:21]/*cast*/;
assign InstructionDecoders_L26F40T77_Source = InstructionDecoders_L26F56T76_Index/*cast*/;
assign InstructionDecoders_L26F40T86_SignChange = InstructionDecoders_L26F40T77_Source/*cast*/;
assign InstructionDecoders_L26F40T98_Resize = { {20{InstructionDecoders_L26F40T86_SignChange[12]}}, InstructionDecoders_L26F40T86_SignChange }/*expand*/;
assign ITypeImm = InstructionDecoders_L26F40T98_Resize/*cast*/;
assign InstructionDecoders_L27F56T76_Index = internalBits[32:26]/*cast*/;
assign InstructionDecoders_L27F78T97_Index = internalBits[12:8]/*cast*/;
assign InstructionDecoders_L27F40T98_Source[1] = InstructionDecoders_L27F78T97_Index[1];
assign InstructionDecoders_L27F40T98_Source[2] = InstructionDecoders_L27F78T97_Index[2];
assign InstructionDecoders_L27F40T98_Source[3] = InstructionDecoders_L27F78T97_Index[3];
assign InstructionDecoders_L27F40T98_Source[4] = InstructionDecoders_L27F78T97_Index[4];
assign InstructionDecoders_L27F40T98_Source[5] = InstructionDecoders_L27F78T97_Index[5];
assign InstructionDecoders_L27F40T98_Source[6] = InstructionDecoders_L27F56T76_Index[1];
assign InstructionDecoders_L27F40T98_Source[7] = InstructionDecoders_L27F56T76_Index[2];
assign InstructionDecoders_L27F40T98_Source[8] = InstructionDecoders_L27F56T76_Index[3];
assign InstructionDecoders_L27F40T98_Source[9] = InstructionDecoders_L27F56T76_Index[4];
assign InstructionDecoders_L27F40T98_Source[10] = InstructionDecoders_L27F56T76_Index[5];
assign InstructionDecoders_L27F40T98_Source[11] = InstructionDecoders_L27F56T76_Index[6];
assign InstructionDecoders_L27F40T98_Source[12] = InstructionDecoders_L27F56T76_Index[7];
assign InstructionDecoders_L27F40T107_SignChange = InstructionDecoders_L27F40T98_Source/*cast*/;
assign InstructionDecoders_L27F40T119_Resize = { {20{InstructionDecoders_L27F40T107_SignChange[12]}}, InstructionDecoders_L27F40T107_SignChange }/*expand*/;
assign STypeImm = InstructionDecoders_L27F40T119_Resize/*cast*/;
assign InstructionDecoders_L28F56T72_Index = internalBits[32];
assign InstructionDecoders_L28F74T89_Index = internalBits[8];
assign InstructionDecoders_L28F91T111_Index = internalBits[31:26]/*cast*/;
assign InstructionDecoders_L28F113T132_Index = internalBits[12:9]/*cast*/;
assign InstructionDecoders_L28F40T140_Source[1] = InstructionDecoders_L28F134T139_Expr;
assign InstructionDecoders_L28F40T140_Source[2] = InstructionDecoders_L28F113T132_Index[1];
assign InstructionDecoders_L28F40T140_Source[3] = InstructionDecoders_L28F113T132_Index[2];
assign InstructionDecoders_L28F40T140_Source[4] = InstructionDecoders_L28F113T132_Index[3];
assign InstructionDecoders_L28F40T140_Source[5] = InstructionDecoders_L28F113T132_Index[4];
assign InstructionDecoders_L28F40T140_Source[6] = InstructionDecoders_L28F91T111_Index[1];
assign InstructionDecoders_L28F40T140_Source[7] = InstructionDecoders_L28F91T111_Index[2];
assign InstructionDecoders_L28F40T140_Source[8] = InstructionDecoders_L28F91T111_Index[3];
assign InstructionDecoders_L28F40T140_Source[9] = InstructionDecoders_L28F91T111_Index[4];
assign InstructionDecoders_L28F40T140_Source[10] = InstructionDecoders_L28F91T111_Index[5];
assign InstructionDecoders_L28F40T140_Source[11] = InstructionDecoders_L28F91T111_Index[6];
assign InstructionDecoders_L28F40T140_Source[12] = InstructionDecoders_L28F74T89_Index;
assign InstructionDecoders_L28F40T140_Source[13] = InstructionDecoders_L28F56T72_Index;
assign InstructionDecoders_L28F40T149_SignChange = InstructionDecoders_L28F40T140_Source/*cast*/;
assign InstructionDecoders_L28F40T161_Resize = { {19{InstructionDecoders_L28F40T149_SignChange[13]}}, InstructionDecoders_L28F40T149_SignChange }/*expand*/;
assign BTypeImm = InstructionDecoders_L28F40T161_Resize/*cast*/;
assign InstructionDecoders_L29F56T76_Index = internalBits[32:13]/*cast*/;
assign InstructionDecoders_L29F78T92_Index = ZeroU32[12:1]/*cast*/;
assign InstructionDecoders_L29F40T93_Source[1] = InstructionDecoders_L29F78T92_Index[1];
assign InstructionDecoders_L29F40T93_Source[2] = InstructionDecoders_L29F78T92_Index[2];
assign InstructionDecoders_L29F40T93_Source[3] = InstructionDecoders_L29F78T92_Index[3];
assign InstructionDecoders_L29F40T93_Source[4] = InstructionDecoders_L29F78T92_Index[4];
assign InstructionDecoders_L29F40T93_Source[5] = InstructionDecoders_L29F78T92_Index[5];
assign InstructionDecoders_L29F40T93_Source[6] = InstructionDecoders_L29F78T92_Index[6];
assign InstructionDecoders_L29F40T93_Source[7] = InstructionDecoders_L29F78T92_Index[7];
assign InstructionDecoders_L29F40T93_Source[8] = InstructionDecoders_L29F78T92_Index[8];
assign InstructionDecoders_L29F40T93_Source[9] = InstructionDecoders_L29F78T92_Index[9];
assign InstructionDecoders_L29F40T93_Source[10] = InstructionDecoders_L29F78T92_Index[10];
assign InstructionDecoders_L29F40T93_Source[11] = InstructionDecoders_L29F78T92_Index[11];
assign InstructionDecoders_L29F40T93_Source[12] = InstructionDecoders_L29F78T92_Index[12];
assign InstructionDecoders_L29F40T93_Source[13] = InstructionDecoders_L29F56T76_Index[1];
assign InstructionDecoders_L29F40T93_Source[14] = InstructionDecoders_L29F56T76_Index[2];
assign InstructionDecoders_L29F40T93_Source[15] = InstructionDecoders_L29F56T76_Index[3];
assign InstructionDecoders_L29F40T93_Source[16] = InstructionDecoders_L29F56T76_Index[4];
assign InstructionDecoders_L29F40T93_Source[17] = InstructionDecoders_L29F56T76_Index[5];
assign InstructionDecoders_L29F40T93_Source[18] = InstructionDecoders_L29F56T76_Index[6];
assign InstructionDecoders_L29F40T93_Source[19] = InstructionDecoders_L29F56T76_Index[7];
assign InstructionDecoders_L29F40T93_Source[20] = InstructionDecoders_L29F56T76_Index[8];
assign InstructionDecoders_L29F40T93_Source[21] = InstructionDecoders_L29F56T76_Index[9];
assign InstructionDecoders_L29F40T93_Source[22] = InstructionDecoders_L29F56T76_Index[10];
assign InstructionDecoders_L29F40T93_Source[23] = InstructionDecoders_L29F56T76_Index[11];
assign InstructionDecoders_L29F40T93_Source[24] = InstructionDecoders_L29F56T76_Index[12];
assign InstructionDecoders_L29F40T93_Source[25] = InstructionDecoders_L29F56T76_Index[13];
assign InstructionDecoders_L29F40T93_Source[26] = InstructionDecoders_L29F56T76_Index[14];
assign InstructionDecoders_L29F40T93_Source[27] = InstructionDecoders_L29F56T76_Index[15];
assign InstructionDecoders_L29F40T93_Source[28] = InstructionDecoders_L29F56T76_Index[16];
assign InstructionDecoders_L29F40T93_Source[29] = InstructionDecoders_L29F56T76_Index[17];
assign InstructionDecoders_L29F40T93_Source[30] = InstructionDecoders_L29F56T76_Index[18];
assign InstructionDecoders_L29F40T93_Source[31] = InstructionDecoders_L29F56T76_Index[19];
assign InstructionDecoders_L29F40T93_Source[32] = InstructionDecoders_L29F56T76_Index[20];
assign InstructionDecoders_L29F40T102_SignChange = InstructionDecoders_L29F40T93_Source/*cast*/;
assign InstructionDecoders_L29F40T114_Resize = InstructionDecoders_L29F40T102_SignChange/*cast*/;
assign UTypeImm = InstructionDecoders_L29F40T114_Resize/*cast*/;
assign InstructionDecoders_L30F56T72_Index = internalBits[32];
assign InstructionDecoders_L30F74T94_Index = internalBits[20:13]/*cast*/;
assign InstructionDecoders_L30F96T112_Index = internalBits[21];
assign InstructionDecoders_L30F114T134_Index = internalBits[31:22]/*cast*/;
assign InstructionDecoders_L30F40T142_Source[1] = InstructionDecoders_L30F136T141_Expr;
assign InstructionDecoders_L30F40T142_Source[2] = InstructionDecoders_L30F114T134_Index[1];
assign InstructionDecoders_L30F40T142_Source[3] = InstructionDecoders_L30F114T134_Index[2];
assign InstructionDecoders_L30F40T142_Source[4] = InstructionDecoders_L30F114T134_Index[3];
assign InstructionDecoders_L30F40T142_Source[5] = InstructionDecoders_L30F114T134_Index[4];
assign InstructionDecoders_L30F40T142_Source[6] = InstructionDecoders_L30F114T134_Index[5];
assign InstructionDecoders_L30F40T142_Source[7] = InstructionDecoders_L30F114T134_Index[6];
assign InstructionDecoders_L30F40T142_Source[8] = InstructionDecoders_L30F114T134_Index[7];
assign InstructionDecoders_L30F40T142_Source[9] = InstructionDecoders_L30F114T134_Index[8];
assign InstructionDecoders_L30F40T142_Source[10] = InstructionDecoders_L30F114T134_Index[9];
assign InstructionDecoders_L30F40T142_Source[11] = InstructionDecoders_L30F114T134_Index[10];
assign InstructionDecoders_L30F40T142_Source[12] = InstructionDecoders_L30F96T112_Index;
assign InstructionDecoders_L30F40T142_Source[13] = InstructionDecoders_L30F74T94_Index[1];
assign InstructionDecoders_L30F40T142_Source[14] = InstructionDecoders_L30F74T94_Index[2];
assign InstructionDecoders_L30F40T142_Source[15] = InstructionDecoders_L30F74T94_Index[3];
assign InstructionDecoders_L30F40T142_Source[16] = InstructionDecoders_L30F74T94_Index[4];
assign InstructionDecoders_L30F40T142_Source[17] = InstructionDecoders_L30F74T94_Index[5];
assign InstructionDecoders_L30F40T142_Source[18] = InstructionDecoders_L30F74T94_Index[6];
assign InstructionDecoders_L30F40T142_Source[19] = InstructionDecoders_L30F74T94_Index[7];
assign InstructionDecoders_L30F40T142_Source[20] = InstructionDecoders_L30F74T94_Index[8];
assign InstructionDecoders_L30F40T142_Source[21] = InstructionDecoders_L30F56T72_Index;
assign InstructionDecoders_L30F40T151_SignChange = InstructionDecoders_L30F40T142_Source/*cast*/;
assign InstructionDecoders_L30F40T163_Resize = { {11{InstructionDecoders_L30F40T151_SignChange[21]}}, InstructionDecoders_L30F40T151_SignChange }/*expand*/;
assign JTypeImm = InstructionDecoders_L30F40T163_Resize/*cast*/;
assign InstructionDecoders_L32F37T59_Index = internalITypeImm[5:1]/*cast*/;
assign SHAMT = InstructionDecoders_L32F37T59_Index/*cast*/;
assign InstructionDecoders_L33F32T52_Index = internalITypeImm[11];
assign SHARITH = InstructionDecoders_L33F32T52_Index;
assign InstructionDecoders_L34F28T48_Index = internalITypeImm[11];
assign SUB = InstructionDecoders_L34F28T48_Index;
assign InstructionDecoders_L36F55T75_Cast = { {1{1'b0}}, internalOpCode }/*expand*/;
assign InstructionDecoders_L36F42T75_Cast = InstructionDecoders_L36F55T75_Cast[7:1]/*truncate*/;
assign OpTypeCode = InstructionDecoders_L36F42T75_Cast/*cast*/;
assign InstructionDecoders_L37F52T72_Cast = { {5{1'b0}}, internalFunct3 }/*expand*/;
assign InstructionDecoders_L37F40T72_Cast = InstructionDecoders_L37F52T72_Cast[3:1]/*truncate*/;
assign OPIMMCode = InstructionDecoders_L37F40T72_Cast/*cast*/;
assign InstructionDecoders_L38F43T63_Cast = { {5{1'b0}}, internalFunct3 }/*expand*/;
assign InstructionDecoders_L38F34T63_Cast = InstructionDecoders_L38F43T63_Cast[3:1]/*truncate*/;
assign OPCode = InstructionDecoders_L38F34T63_Cast/*cast*/;
assign InstructionDecoders_L39F67T87_Cast = { {5{1'b0}}, internalFunct3 }/*expand*/;
assign InstructionDecoders_L39F50T87_Cast = InstructionDecoders_L39F67T87_Cast[3:1]/*truncate*/;
assign BranchTypeCode = InstructionDecoders_L39F50T87_Cast/*cast*/;
assign InstructionDecoders_L40F61T81_Cast = { {5{1'b0}}, internalFunct3 }/*expand*/;
assign InstructionDecoders_L40F46T81_Cast = InstructionDecoders_L40F61T81_Cast[3:1]/*truncate*/;
assign LoadTypeCode = InstructionDecoders_L40F46T81_Cast/*cast*/;
assign InstructionDecoders_L41F40T62_Cast = internalITypeImm[8:1]/*truncate*/;
assign InstructionDecoders_L41F32T62_Cast = InstructionDecoders_L41F40T62_Cast[1];
assign ECode = InstructionDecoders_L41F32T62_Cast;
assign InstructionDecoders_L42F55T75_Cast = { {5{1'b0}}, internalFunct3 }/*expand*/;
assign InstructionDecoders_L42F42T75_Cast = InstructionDecoders_L42F55T75_Cast[3:1]/*truncate*/;
assign SystemCode = InstructionDecoders_L42F42T75_Cast/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
