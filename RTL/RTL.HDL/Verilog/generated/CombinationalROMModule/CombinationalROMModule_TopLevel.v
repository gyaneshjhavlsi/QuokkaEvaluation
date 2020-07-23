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
// System configuration name is CombinationalROMModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module CombinationalROMModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [7: 0] ReadAddress1,
	input  [7: 0] ReadAddress2,
	output [7: 0] Value1,
	output [7: 0] Value2
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [8:1] Inputs_ReadAddress1;
wire  [8:1] Inputs_ReadAddress2;
wire  [8:1] CombinationalROMModule_L22F31T56_Index;
wire  [8:1] CombinationalROMModule_L23F31T56_Index;
reg [8:1] buff [0 : 255];
initial
begin
	$readmemh("CombinationalROMModule_TopLevel_buff.hex", buff);
end
assign Inputs_ReadAddress1 = ReadAddress1;
assign Inputs_ReadAddress2 = ReadAddress2;
assign Value1 = CombinationalROMModule_L22F31T56_Index;
assign Value2 = CombinationalROMModule_L23F31T56_Index;
assign CombinationalROMModule_L22F31T56_Index = buff[Inputs_ReadAddress1];
assign CombinationalROMModule_L23F31T56_Index = buff[Inputs_ReadAddress2];
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
