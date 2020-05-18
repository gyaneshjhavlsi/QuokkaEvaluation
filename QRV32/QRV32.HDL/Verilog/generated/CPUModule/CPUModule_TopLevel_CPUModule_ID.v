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
// System configuration name is CPUModule_TopLevel_CPUModule_ID, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module CPUModule_TopLevel_CPUModule_ID (
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
	output signed [32: 1] JTypeImm
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  InstructionDecoders_L14F42T43_Expr = 1'b0;
wire  InstructionDecoders_L24F102T107_Expr = 1'b0;
wire  InstructionDecoders_L26F104T109_Expr = 1'b0;
wire  [32:1] Inputs_Instruction;
wire  [32:1] Bits;
wire signed  [32:1] ZeroU32;
wire  [7:1] InstructionDecoders_L15F38T48_Index;
wire  [5:1] InstructionDecoders_L16F34T45_Index;
wire  [5:1] InstructionDecoders_L17F35T47_Index;
wire  [5:1] InstructionDecoders_L18F35T47_Index;
wire  [3:1] InstructionDecoders_L19F38T50_Index;
wire  [7:1] InstructionDecoders_L20F38T50_Index;
wire  [12:1] InstructionDecoders_L21F40T69_Source;
wire  [12:1] InstructionDecoders_L21F56T68_Index;
wire signed  [12:1] InstructionDecoders_L21F40T78_SignChange;
wire signed  [32:1] InstructionDecoders_L21F40T90_Resize;
wire  [12:1] InstructionDecoders_L22F40T69_Source;
wire  [12:1] InstructionDecoders_L22F56T68_Index;
wire signed  [12:1] InstructionDecoders_L22F40T78_SignChange;
wire signed  [32:1] InstructionDecoders_L22F40T90_Resize;
wire  [12:1] InstructionDecoders_L23F40T82_Source;
wire  [7:1] InstructionDecoders_L23F56T68_Index;
wire  [5:1] InstructionDecoders_L23F70T81_Index;
wire signed  [12:1] InstructionDecoders_L23F40T91_SignChange;
wire signed  [32:1] InstructionDecoders_L23F40T103_Resize;
wire  [13:1] InstructionDecoders_L24F40T108_Source;
wire  InstructionDecoders_L24F56T64_Index;
wire  InstructionDecoders_L24F66T73_Index;
wire  [6:1] InstructionDecoders_L24F75T87_Index;
wire  [4:1] InstructionDecoders_L24F89T100_Index;
wire signed  [13:1] InstructionDecoders_L24F40T117_SignChange;
wire signed  [32:1] InstructionDecoders_L24F40T129_Resize;
wire  [32:1] InstructionDecoders_L25F40T85_Source;
wire  [20:1] InstructionDecoders_L25F56T68_Index;
wire  [12:1] InstructionDecoders_L25F70T84_Index;
wire signed  [32:1] InstructionDecoders_L25F40T94_SignChange;
wire signed  [32:1] InstructionDecoders_L25F40T106_Resize;
wire  [21:1] InstructionDecoders_L26F40T110_Source;
wire  InstructionDecoders_L26F56T64_Index;
wire  [8:1] InstructionDecoders_L26F66T78_Index;
wire  InstructionDecoders_L26F80T88_Index;
wire  [10:1] InstructionDecoders_L26F90T102_Index;
wire signed  [21:1] InstructionDecoders_L26F40T119_SignChange;
wire signed  [32:1] InstructionDecoders_L26F40T131_Resize;
assign Inputs_Instruction = Instruction/*cast*/;
assign Bits = Inputs_Instruction/*cast*/;
assign ZeroU32 = { {31{1'b0}}, InstructionDecoders_L14F42T43_Expr }/*expand*/;
assign InstructionDecoders_L15F38T48_Index = Bits[7:1]/*cast*/;
assign OpCode = InstructionDecoders_L15F38T48_Index/*cast*/;
assign InstructionDecoders_L16F34T45_Index = Bits[12:8]/*cast*/;
assign RD = InstructionDecoders_L16F34T45_Index/*cast*/;
assign InstructionDecoders_L17F35T47_Index = Bits[20:16]/*cast*/;
assign RS1 = InstructionDecoders_L17F35T47_Index/*cast*/;
assign InstructionDecoders_L18F35T47_Index = Bits[25:21]/*cast*/;
assign RS2 = InstructionDecoders_L18F35T47_Index/*cast*/;
assign InstructionDecoders_L19F38T50_Index = Bits[15:13]/*cast*/;
assign Funct3 = InstructionDecoders_L19F38T50_Index/*cast*/;
assign InstructionDecoders_L20F38T50_Index = Bits[32:26]/*cast*/;
assign Funct7 = InstructionDecoders_L20F38T50_Index/*cast*/;
assign InstructionDecoders_L21F56T68_Index = Bits[32:21]/*cast*/;
assign InstructionDecoders_L21F40T69_Source = InstructionDecoders_L21F56T68_Index/*cast*/;
assign InstructionDecoders_L21F40T78_SignChange = InstructionDecoders_L21F40T69_Source/*cast*/;
assign InstructionDecoders_L21F40T90_Resize = { {20{InstructionDecoders_L21F40T78_SignChange[12]}}, InstructionDecoders_L21F40T78_SignChange }/*expand*/;
assign RTypeImm = InstructionDecoders_L21F40T90_Resize/*cast*/;
assign InstructionDecoders_L22F56T68_Index = Bits[32:21]/*cast*/;
assign InstructionDecoders_L22F40T69_Source = InstructionDecoders_L22F56T68_Index/*cast*/;
assign InstructionDecoders_L22F40T78_SignChange = InstructionDecoders_L22F40T69_Source/*cast*/;
assign InstructionDecoders_L22F40T90_Resize = { {20{InstructionDecoders_L22F40T78_SignChange[12]}}, InstructionDecoders_L22F40T78_SignChange }/*expand*/;
assign ITypeImm = InstructionDecoders_L22F40T90_Resize/*cast*/;
assign InstructionDecoders_L23F56T68_Index = Bits[32:26]/*cast*/;
assign InstructionDecoders_L23F70T81_Index = Bits[12:8]/*cast*/;
assign InstructionDecoders_L23F40T82_Source[1] = InstructionDecoders_L23F56T68_Index[1];
assign InstructionDecoders_L23F40T82_Source[2] = InstructionDecoders_L23F56T68_Index[2];
assign InstructionDecoders_L23F40T82_Source[3] = InstructionDecoders_L23F56T68_Index[3];
assign InstructionDecoders_L23F40T82_Source[4] = InstructionDecoders_L23F56T68_Index[4];
assign InstructionDecoders_L23F40T82_Source[5] = InstructionDecoders_L23F56T68_Index[5];
assign InstructionDecoders_L23F40T82_Source[6] = InstructionDecoders_L23F56T68_Index[6];
assign InstructionDecoders_L23F40T82_Source[7] = InstructionDecoders_L23F56T68_Index[7];
assign InstructionDecoders_L23F40T82_Source[8] = InstructionDecoders_L23F70T81_Index[1];
assign InstructionDecoders_L23F40T82_Source[9] = InstructionDecoders_L23F70T81_Index[2];
assign InstructionDecoders_L23F40T82_Source[10] = InstructionDecoders_L23F70T81_Index[3];
assign InstructionDecoders_L23F40T82_Source[11] = InstructionDecoders_L23F70T81_Index[4];
assign InstructionDecoders_L23F40T82_Source[12] = InstructionDecoders_L23F70T81_Index[5];
assign InstructionDecoders_L23F40T91_SignChange = InstructionDecoders_L23F40T82_Source/*cast*/;
assign InstructionDecoders_L23F40T103_Resize = { {20{InstructionDecoders_L23F40T91_SignChange[12]}}, InstructionDecoders_L23F40T91_SignChange }/*expand*/;
assign STypeImm = InstructionDecoders_L23F40T103_Resize/*cast*/;
assign InstructionDecoders_L24F56T64_Index = Bits[32];
assign InstructionDecoders_L24F66T73_Index = Bits[8];
assign InstructionDecoders_L24F75T87_Index = Bits[31:26]/*cast*/;
assign InstructionDecoders_L24F89T100_Index = Bits[12:9]/*cast*/;
assign InstructionDecoders_L24F40T108_Source[1] = InstructionDecoders_L24F56T64_Index;
assign InstructionDecoders_L24F40T108_Source[2] = InstructionDecoders_L24F66T73_Index;
assign InstructionDecoders_L24F40T108_Source[3] = InstructionDecoders_L24F75T87_Index[1];
assign InstructionDecoders_L24F40T108_Source[4] = InstructionDecoders_L24F75T87_Index[2];
assign InstructionDecoders_L24F40T108_Source[5] = InstructionDecoders_L24F75T87_Index[3];
assign InstructionDecoders_L24F40T108_Source[6] = InstructionDecoders_L24F75T87_Index[4];
assign InstructionDecoders_L24F40T108_Source[7] = InstructionDecoders_L24F75T87_Index[5];
assign InstructionDecoders_L24F40T108_Source[8] = InstructionDecoders_L24F75T87_Index[6];
assign InstructionDecoders_L24F40T108_Source[9] = InstructionDecoders_L24F89T100_Index[1];
assign InstructionDecoders_L24F40T108_Source[10] = InstructionDecoders_L24F89T100_Index[2];
assign InstructionDecoders_L24F40T108_Source[11] = InstructionDecoders_L24F89T100_Index[3];
assign InstructionDecoders_L24F40T108_Source[12] = InstructionDecoders_L24F89T100_Index[4];
assign InstructionDecoders_L24F40T108_Source[13] = InstructionDecoders_L24F102T107_Expr;
assign InstructionDecoders_L24F40T117_SignChange = InstructionDecoders_L24F40T108_Source/*cast*/;
assign InstructionDecoders_L24F40T129_Resize = { {19{InstructionDecoders_L24F40T117_SignChange[13]}}, InstructionDecoders_L24F40T117_SignChange }/*expand*/;
assign BTypeImm = InstructionDecoders_L24F40T129_Resize/*cast*/;
assign InstructionDecoders_L25F56T68_Index = Bits[32:13]/*cast*/;
assign InstructionDecoders_L25F70T84_Index = ZeroU32[12:1]/*cast*/;
assign InstructionDecoders_L25F40T85_Source[1] = InstructionDecoders_L25F56T68_Index[1];
assign InstructionDecoders_L25F40T85_Source[2] = InstructionDecoders_L25F56T68_Index[2];
assign InstructionDecoders_L25F40T85_Source[3] = InstructionDecoders_L25F56T68_Index[3];
assign InstructionDecoders_L25F40T85_Source[4] = InstructionDecoders_L25F56T68_Index[4];
assign InstructionDecoders_L25F40T85_Source[5] = InstructionDecoders_L25F56T68_Index[5];
assign InstructionDecoders_L25F40T85_Source[6] = InstructionDecoders_L25F56T68_Index[6];
assign InstructionDecoders_L25F40T85_Source[7] = InstructionDecoders_L25F56T68_Index[7];
assign InstructionDecoders_L25F40T85_Source[8] = InstructionDecoders_L25F56T68_Index[8];
assign InstructionDecoders_L25F40T85_Source[9] = InstructionDecoders_L25F56T68_Index[9];
assign InstructionDecoders_L25F40T85_Source[10] = InstructionDecoders_L25F56T68_Index[10];
assign InstructionDecoders_L25F40T85_Source[11] = InstructionDecoders_L25F56T68_Index[11];
assign InstructionDecoders_L25F40T85_Source[12] = InstructionDecoders_L25F56T68_Index[12];
assign InstructionDecoders_L25F40T85_Source[13] = InstructionDecoders_L25F56T68_Index[13];
assign InstructionDecoders_L25F40T85_Source[14] = InstructionDecoders_L25F56T68_Index[14];
assign InstructionDecoders_L25F40T85_Source[15] = InstructionDecoders_L25F56T68_Index[15];
assign InstructionDecoders_L25F40T85_Source[16] = InstructionDecoders_L25F56T68_Index[16];
assign InstructionDecoders_L25F40T85_Source[17] = InstructionDecoders_L25F56T68_Index[17];
assign InstructionDecoders_L25F40T85_Source[18] = InstructionDecoders_L25F56T68_Index[18];
assign InstructionDecoders_L25F40T85_Source[19] = InstructionDecoders_L25F56T68_Index[19];
assign InstructionDecoders_L25F40T85_Source[20] = InstructionDecoders_L25F56T68_Index[20];
assign InstructionDecoders_L25F40T85_Source[21] = InstructionDecoders_L25F70T84_Index[1];
assign InstructionDecoders_L25F40T85_Source[22] = InstructionDecoders_L25F70T84_Index[2];
assign InstructionDecoders_L25F40T85_Source[23] = InstructionDecoders_L25F70T84_Index[3];
assign InstructionDecoders_L25F40T85_Source[24] = InstructionDecoders_L25F70T84_Index[4];
assign InstructionDecoders_L25F40T85_Source[25] = InstructionDecoders_L25F70T84_Index[5];
assign InstructionDecoders_L25F40T85_Source[26] = InstructionDecoders_L25F70T84_Index[6];
assign InstructionDecoders_L25F40T85_Source[27] = InstructionDecoders_L25F70T84_Index[7];
assign InstructionDecoders_L25F40T85_Source[28] = InstructionDecoders_L25F70T84_Index[8];
assign InstructionDecoders_L25F40T85_Source[29] = InstructionDecoders_L25F70T84_Index[9];
assign InstructionDecoders_L25F40T85_Source[30] = InstructionDecoders_L25F70T84_Index[10];
assign InstructionDecoders_L25F40T85_Source[31] = InstructionDecoders_L25F70T84_Index[11];
assign InstructionDecoders_L25F40T85_Source[32] = InstructionDecoders_L25F70T84_Index[12];
assign InstructionDecoders_L25F40T94_SignChange = InstructionDecoders_L25F40T85_Source/*cast*/;
assign InstructionDecoders_L25F40T106_Resize = InstructionDecoders_L25F40T94_SignChange/*cast*/;
assign UTypeImm = InstructionDecoders_L25F40T106_Resize/*cast*/;
assign InstructionDecoders_L26F56T64_Index = Bits[32];
assign InstructionDecoders_L26F66T78_Index = Bits[20:13]/*cast*/;
assign InstructionDecoders_L26F80T88_Index = Bits[21];
assign InstructionDecoders_L26F90T102_Index = Bits[31:22]/*cast*/;
assign InstructionDecoders_L26F40T110_Source[1] = InstructionDecoders_L26F56T64_Index;
assign InstructionDecoders_L26F40T110_Source[2] = InstructionDecoders_L26F66T78_Index[1];
assign InstructionDecoders_L26F40T110_Source[3] = InstructionDecoders_L26F66T78_Index[2];
assign InstructionDecoders_L26F40T110_Source[4] = InstructionDecoders_L26F66T78_Index[3];
assign InstructionDecoders_L26F40T110_Source[5] = InstructionDecoders_L26F66T78_Index[4];
assign InstructionDecoders_L26F40T110_Source[6] = InstructionDecoders_L26F66T78_Index[5];
assign InstructionDecoders_L26F40T110_Source[7] = InstructionDecoders_L26F66T78_Index[6];
assign InstructionDecoders_L26F40T110_Source[8] = InstructionDecoders_L26F66T78_Index[7];
assign InstructionDecoders_L26F40T110_Source[9] = InstructionDecoders_L26F66T78_Index[8];
assign InstructionDecoders_L26F40T110_Source[10] = InstructionDecoders_L26F80T88_Index;
assign InstructionDecoders_L26F40T110_Source[11] = InstructionDecoders_L26F90T102_Index[1];
assign InstructionDecoders_L26F40T110_Source[12] = InstructionDecoders_L26F90T102_Index[2];
assign InstructionDecoders_L26F40T110_Source[13] = InstructionDecoders_L26F90T102_Index[3];
assign InstructionDecoders_L26F40T110_Source[14] = InstructionDecoders_L26F90T102_Index[4];
assign InstructionDecoders_L26F40T110_Source[15] = InstructionDecoders_L26F90T102_Index[5];
assign InstructionDecoders_L26F40T110_Source[16] = InstructionDecoders_L26F90T102_Index[6];
assign InstructionDecoders_L26F40T110_Source[17] = InstructionDecoders_L26F90T102_Index[7];
assign InstructionDecoders_L26F40T110_Source[18] = InstructionDecoders_L26F90T102_Index[8];
assign InstructionDecoders_L26F40T110_Source[19] = InstructionDecoders_L26F90T102_Index[9];
assign InstructionDecoders_L26F40T110_Source[20] = InstructionDecoders_L26F90T102_Index[10];
assign InstructionDecoders_L26F40T110_Source[21] = InstructionDecoders_L26F104T109_Expr;
assign InstructionDecoders_L26F40T119_SignChange = InstructionDecoders_L26F40T110_Source/*cast*/;
assign InstructionDecoders_L26F40T131_Resize = { {11{InstructionDecoders_L26F40T119_SignChange[21]}}, InstructionDecoders_L26F40T119_SignChange }/*expand*/;
assign JTypeImm = InstructionDecoders_L26F40T131_Resize/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
