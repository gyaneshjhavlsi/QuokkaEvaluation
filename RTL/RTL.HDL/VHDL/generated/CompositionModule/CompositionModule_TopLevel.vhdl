-- PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
-- * This file was generated by Quokka FPGA Toolkit.
-- * Generated code is your property, do whatever you want with it
-- * Place custom code between [BEGIN USER ***] and [END USER ***].
-- * CAUTION: All code outside of [USER] scope is subject to regeneration.
-- * Bad things happen sometimes in developer's life,
--   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
-- * Internal structure of code is subject to change.
--   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
-- * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
-- * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
-- 
-- DISCLAIMER:
--   Code comes AS-IS, it is your responsibility to make sure it is working as expected
--   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
-- 
-- System configuration name is CompositionModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity CompositionModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
IsEnabled : in  std_logic;
HasData : out  std_logic;
Data : out  unsigned(7 downto 0)
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of CompositionModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
constant Zero : std_logic := '0';
constant One : std_logic := '1';
constant true : std_logic := '1';
constant false : std_logic := '0';
constant CompositionModule_L41F27T31_Expr : std_logic := '1';
signal Inputs_IsEnabled : std_logic := '0';
signal Emitter_IsEnabled : std_logic := '0';
signal Emitter_Ack : std_logic := '0';
signal Emitter_Data : unsigned(8 downto 1)  := "00000000";
signal Emitter_HasData : std_logic := '0';
signal Transmitter_Trigger : std_logic := '0';
signal Transmitter_Ack : std_logic := '0';
signal Transmitter_Data : unsigned(8 downto 1)  := "00000000";
signal Transmitter_Bit : std_logic := '0';
signal Transmitter_IsReady : std_logic := '0';
signal Transmitter_IsTransmitting : std_logic := '0';
signal Transmitter_IsTransmissionStarted : std_logic := '0';
signal Receiver_IsValid : std_logic := '0';
signal Receiver_Ack : std_logic := '0';
signal Receiver_Bit : std_logic := '0';
signal Receiver_HasData : std_logic := '0';
signal Receiver_Data : unsigned(8 downto 1)  := "00000000";
signal EmitterIsEnabledEmitter_IsEnabledHardLink : std_logic := '0';
signal EmitterAckEmitter_AckHardLink : std_logic := '0';
signal EmitterDataEmitter_DataHardLink : unsigned(8 downto 1)  := "00000000";
signal EmitterHasDataEmitter_HasDataHardLink : std_logic := '0';
signal TransmitterTriggerTransmitter_TriggerHardLink : std_logic := '0';
signal TransmitterAckTransmitter_AckHardLink : std_logic := '0';
signal TransmitterDataTransmitter_DataHardLink : unsigned(8 downto 1)  := "00000000";
signal TransmitterBitTransmitter_BitHardLink : std_logic := '0';
signal TransmitterIsReadyTransmitter_IsReadyHardLink : std_logic := '0';
signal TransmitterIsTransmittingTransmitter_IsTransmittingHardLink : std_logic := '0';
signal TransmitterIsTransmissionStartedTransmitter_IsTransmissionStartedHardLink : std_logic := '0';
signal ReceiverIsValidReceiver_IsValidHardLink : std_logic := '0';
signal ReceiverAckReceiver_AckHardLink : std_logic := '0';
signal ReceiverBitReceiver_BitHardLink : std_logic := '0';
signal ReceiverHasDataReceiver_HasDataHardLink : std_logic := '0';
signal ReceiverDataReceiver_DataHardLink : unsigned(8 downto 1)  := "00000000";
signal BoardSignals : BoardSignalsType;
signal InternalReset : std_logic := '0';
begin
work.Quokka.BoardSignalsProc(BoardSignals,Clock,Reset,InternalReset);
CompositionModule_TopLevel_CompositionModule_Emitter : entity work.CompositionModule_TopLevel_CompositionModule_Emitter port map
(
--[BEGIN USER MAP FOR Emitter]
--[END USER MAP FOR Emitter]
BoardSignals => BoardSignals,
IsEnabled => EmitterIsEnabledEmitter_IsEnabledHardLink,
Ack => EmitterAckEmitter_AckHardLink,
Data => EmitterDataEmitter_DataHardLink,
HasData => EmitterHasDataEmitter_HasDataHardLink

);
CompositionModule_TopLevel_CompositionModule_Transmitter : entity work.CompositionModule_TopLevel_CompositionModule_Transmitter port map
(
--[BEGIN USER MAP FOR Transmitter]
--[END USER MAP FOR Transmitter]
BoardSignals => BoardSignals,
Trigger => TransmitterTriggerTransmitter_TriggerHardLink,
Ack => TransmitterAckTransmitter_AckHardLink,
Data => TransmitterDataTransmitter_DataHardLink,
Bit => TransmitterBitTransmitter_BitHardLink,
IsReady => TransmitterIsReadyTransmitter_IsReadyHardLink,
IsTransmitting => TransmitterIsTransmittingTransmitter_IsTransmittingHardLink,
IsTransmissionStarted => TransmitterIsTransmissionStartedTransmitter_IsTransmissionStartedHardLink

);
CompositionModule_TopLevel_CompositionModule_Receiver : entity work.CompositionModule_TopLevel_CompositionModule_Receiver port map
(
--[BEGIN USER MAP FOR Receiver]
--[END USER MAP FOR Receiver]
BoardSignals => BoardSignals,
IsValid => ReceiverIsValidReceiver_IsValidHardLink,
Ack => ReceiverAckReceiver_AckHardLink,
Bit => ReceiverBitReceiver_BitHardLink,
HasData => ReceiverHasDataReceiver_HasDataHardLink,
Data => ReceiverDataReceiver_DataHardLink

);
process(Emitter_Ack, Emitter_Data, Emitter_HasData, Emitter_IsEnabled, EmitterDataEmitter_DataHardLink, EmitterHasDataEmitter_HasDataHardLink, Inputs_IsEnabled, IsEnabled, Receiver_Ack, Receiver_Bit, Receiver_Data, Receiver_HasData, Receiver_IsValid, ReceiverDataReceiver_DataHardLink, ReceiverHasDataReceiver_HasDataHardLink, Transmitter_Ack, Transmitter_Bit, Transmitter_Data, Transmitter_IsReady, Transmitter_IsTransmitting, Transmitter_Trigger, TransmitterBitTransmitter_BitHardLink, TransmitterIsReadyTransmitter_IsReadyHardLink, TransmitterIsTransmissionStartedTransmitter_IsTransmissionStartedHardLink, TransmitterIsTransmittingTransmitter_IsTransmittingHardLink)
begin
Inputs_IsEnabled <= IsEnabled;
Emitter_IsEnabled <= Inputs_IsEnabled;
Emitter_Ack <= Transmitter_IsReady;
Transmitter_Trigger <= Emitter_HasData;
Transmitter_Data <= Emitter_Data;
Transmitter_Ack <= Receiver_HasData;
Receiver_IsValid <= Transmitter_IsTransmitting;
Receiver_Bit <= Transmitter_Bit;
Receiver_Ack <= CompositionModule_L41F27T31_Expr;
HasData <= Receiver_HasData;
Data <= Receiver_Data;
EmitterIsEnabledEmitter_IsEnabledHardLink <= Emitter_IsEnabled;
EmitterAckEmitter_AckHardLink <= Emitter_Ack;
Emitter_Data <= EmitterDataEmitter_DataHardLink;
Emitter_HasData <= EmitterHasDataEmitter_HasDataHardLink;
TransmitterTriggerTransmitter_TriggerHardLink <= Transmitter_Trigger;
TransmitterAckTransmitter_AckHardLink <= Transmitter_Ack;
TransmitterDataTransmitter_DataHardLink <= Transmitter_Data;
Transmitter_Bit <= TransmitterBitTransmitter_BitHardLink;
Transmitter_IsReady <= TransmitterIsReadyTransmitter_IsReadyHardLink;
Transmitter_IsTransmitting <= TransmitterIsTransmittingTransmitter_IsTransmittingHardLink;
Transmitter_IsTransmissionStarted <= TransmitterIsTransmissionStartedTransmitter_IsTransmissionStartedHardLink;
ReceiverIsValidReceiver_IsValidHardLink <= Receiver_IsValid;
ReceiverAckReceiver_AckHardLink <= Receiver_Ack;
ReceiverBitReceiver_BitHardLink <= Receiver_Bit;
Receiver_HasData <= ReceiverHasDataReceiver_HasDataHardLink;
Receiver_Data <= ReceiverDataReceiver_DataHardLink;
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
