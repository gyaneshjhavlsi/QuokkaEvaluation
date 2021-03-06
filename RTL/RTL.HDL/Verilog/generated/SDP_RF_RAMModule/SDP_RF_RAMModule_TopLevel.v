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
// System configuration name is SDP_RF_RAMModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module SDP_RF_RAMModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	input  [7: 0] ReadAddress,
	input  [7: 0] WriteAddress,
	input  [7: 0] WriteData,
	input  WE,
	output [7: 0] Data
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [8:1] Inputs_ReadAddress;
wire  [8:1] Inputs_WriteAddress;
wire  [8:1] Inputs_WriteData;
wire  Inputs_WE;
reg  [8:1] State_ReadData = 8'b00000000;
reg [8:1] State_Buff [0 : 255];
initial
begin
	integer i;
	for (i = 0; i < 256; i = i + 1)
		State_Buff[i] = 0;
end
// inferred simple dual port RAM with read-first behaviour
always @ (posedge Clock)
begin
	if (Inputs_WE)
		State_Buff[Inputs_WriteAddress] <= Inputs_WriteData;

	State_ReadData <= State_Buff[Inputs_ReadAddress];
end

assign Inputs_ReadAddress = ReadAddress;
assign Inputs_WriteAddress = WriteAddress;
assign Inputs_WriteData = WriteData;
assign Inputs_WE = WE;
assign Data = State_ReadData;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
