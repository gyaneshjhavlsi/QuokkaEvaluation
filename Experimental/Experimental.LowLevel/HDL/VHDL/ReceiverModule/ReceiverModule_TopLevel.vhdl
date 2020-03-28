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
-- System configuration name is ReceiverModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity ReceiverModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
ReceiverModuleIsValid : in  std_logic;
ReceiverModuleAck : in  std_logic;
ReceiverModuleBit : in  std_logic;
ReceiverModuleHasData : out  std_logic;
ReceiverModuleData : out  unsigned(8 downto 1);
ReceiverModulePartialData : out  unsigned(8 downto 1)
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of ReceiverModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
signal ReceiverModule_TopLevel_Clock : std_logic := '0';
signal ReceiverModule_TopLevel_Reset : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModuleIsValid : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModuleAck : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModuleBit : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModuleHasData : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModuleData : unsigned(8 downto 1) := (others => '0');
signal ReceiverModule_TopLevel_ReceiverModulePartialData : unsigned(8 downto 1) := (others => '0');
signal ReceiverModule_TopLevel_ReceiverModule_Clock : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Reset : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_IsValid : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Ack : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Bit : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_HasData : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Data : unsigned(8 downto 1) := (others => '0');
signal ReceiverModule_TopLevel_ReceiverModule_PartialData : unsigned(8 downto 1) := (others => '0');
constant ReceiverModule_TopLevel_ReceiverModule_Zero : std_logic := '0';
constant ReceiverModule_TopLevel_ReceiverModule_One : std_logic := '1';
constant ReceiverModule_TopLevel_ReceiverModule_true : std_logic := '1';
constant ReceiverModule_TopLevel_ReceiverModule_false : std_logic := '0';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr : std_logic := '0';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr : std_logic := '1';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr : std_logic := '1';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F64T65_Expr : std_logic := '1';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr : unsigned(2 downto 1)  := "10";
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr : unsigned(2 downto 1)  := "10";
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr : std_logic := '0';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr : std_logic := '0';
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr : unsigned(2 downto 1)  := "10";
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr : unsigned(8 downto 1)  := "10000000";
constant ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_NextState_FSM : signed(32 downto 1)  := "00000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_NextState_Data : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_FSM : signed(32 downto 1)  := "00000000000000000000000000000000";
constant ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault : signed(32 downto 1)  := "00000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_State_Data : unsigned(8 downto 1)  := "00000000";
constant ReceiverModule_TopLevel_ReceiverModule_State_DataDefault : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2 : unsigned(8 downto 1)  := "00000000";
signal BoardSignals : BoardSignalsType;
signal InternalReset : std_logic := '0';
signal ReceiverModule_TopLevel_ReceiverModule_State_FSMQ : signed(32 downto 1)  := "00000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_FSMD : signed(32 downto 1)  := "00000000000000000000000000000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_DataQ : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_TopLevel_ReceiverModule_State_DataD : unsigned(8 downto 1)  := "00000000";
begin
work.Quokka.BoardSignalsProc(BoardSignals,ReceiverModule_TopLevel_ReceiverModule_Clock,ReceiverModule_TopLevel_ReceiverModule_Reset,InternalReset);
process (BoardSignals, ReceiverModule_TopLevel_ReceiverModule_State_FSMD, ReceiverModule_TopLevel_ReceiverModule_State_FSMQ, ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable)
begin
if rising_edge(BoardSignals.Clock) then
if ( BoardSignals.Reset = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault;
elsif ( ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMD;
else
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
end if;
end if;
end process;
process (BoardSignals, ReceiverModule_TopLevel_ReceiverModule_State_DataD, ReceiverModule_TopLevel_ReceiverModule_State_DataQ, ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable)
begin
if rising_edge(BoardSignals.Clock) then
if ( BoardSignals.Reset = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataDefault;
elsif ( ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataD;
else
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
end if;
end if;
end process;
    ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case <= '1' when (signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case <= '1' when (signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case <= '1' when (signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr <= '1' when (signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs'length + 1)) = signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs'length + 1))) else '0';

process(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2)
begin

    for i in 8 downto 1 loop
        ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr(i) <= ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1(i)  OR ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2(i)    ;
    end loop;

    end process;
process(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1)
alias output is ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr;
alias source0 is ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1;
begin
-- Output: ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, Width: 8, ShiftBy: 1, Sources: 1
output(1) <= source0(2);
output(2) <= source0(3);
output(3) <= source0(4);
output(4) <= source0(5);
output(5) <= source0(6);
output(6) <= source0(7);
output(7) <= source0(8);
output(8) <= '0';
end process;
process(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress)
begin
case ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress is
  when '0' => 
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup <= ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
  when '1' => 
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup <= ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
  when others => 
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup <= "00000000";
end case;

end process;
process(ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack, ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid, ReceiverModule_TopLevel_ReceiverModule_PartialData, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case, ReceiverModule_TopLevel_ReceiverModule_State_Data, ReceiverModule_TopLevel_ReceiverModule_State_FSM)
begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM <= signed(ReceiverModule_TopLevel_ReceiverModule_State_FSM);
ReceiverModule_TopLevel_ReceiverModule_NextState_Data <= unsigned(ReceiverModule_TopLevel_ReceiverModule_State_Data);
if ( ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case = '1' ) then
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_NextState_Data <= unsigned(ReceiverModule_TopLevel_ReceiverModule_PartialData);
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr, others => '0');
end if;
elsif ( ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case = '1' ) then
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_NextState_Data <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr);
else
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr, ReceiverModule_TopLevel_ReceiverModule_NextState_FSM'length));
end if;
else
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack = '1' ) then
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr, others => '0');
ReceiverModule_TopLevel_ReceiverModule_NextState_Data <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr, others => '0');
end if;
end if;
end process;
-- Top-level entity connections
process(Clock, ReceiverModule_TopLevel_ReceiverModuleData, ReceiverModule_TopLevel_ReceiverModuleHasData, ReceiverModule_TopLevel_ReceiverModulePartialData, ReceiverModuleAck, ReceiverModuleBit, ReceiverModuleIsValid, Reset)
begin
	ReceiverModule_TopLevel_ReceiverModuleIsValid <= ReceiverModuleIsValid;
	ReceiverModule_TopLevel_ReceiverModuleAck <= ReceiverModuleAck;
	ReceiverModule_TopLevel_ReceiverModuleBit <= ReceiverModuleBit;
ReceiverModule_TopLevel_Clock <= Clock;
ReceiverModule_TopLevel_Reset <= NOT Reset;
ReceiverModuleHasData <= ReceiverModule_TopLevel_ReceiverModuleHasData;
ReceiverModuleData <= ReceiverModule_TopLevel_ReceiverModuleData;
ReceiverModulePartialData <= ReceiverModule_TopLevel_ReceiverModulePartialData;
end process;
process(ReceiverModule_TopLevel_Clock, ReceiverModule_TopLevel_ReceiverModule_Ack, ReceiverModule_TopLevel_ReceiverModule_Bit, ReceiverModule_TopLevel_ReceiverModule_Data, ReceiverModule_TopLevel_ReceiverModule_HasData, ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit, ReceiverModule_TopLevel_ReceiverModule_IsValid, ReceiverModule_TopLevel_ReceiverModule_NextState_Data, ReceiverModule_TopLevel_ReceiverModule_NextState_FSM, ReceiverModule_TopLevel_ReceiverModule_PartialData, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr, ReceiverModule_TopLevel_ReceiverModule_State_Data, ReceiverModule_TopLevel_ReceiverModule_State_DataQ, ReceiverModule_TopLevel_ReceiverModule_State_FSM, ReceiverModule_TopLevel_ReceiverModule_State_FSMQ, ReceiverModule_TopLevel_ReceiverModuleAck, ReceiverModule_TopLevel_ReceiverModuleBit, ReceiverModule_TopLevel_ReceiverModuleIsValid, ReceiverModule_TopLevel_Reset)
begin
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress <= ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit;
ReceiverModule_TopLevel_ReceiverModule_State_FSM <= ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
ReceiverModule_TopLevel_ReceiverModule_State_FSMD <= ReceiverModule_TopLevel_ReceiverModule_NextState_FSM;
ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable <= HiSignal;
ReceiverModule_TopLevel_ReceiverModule_State_Data <= ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
ReceiverModule_TopLevel_ReceiverModule_State_DataD <= ReceiverModule_TopLevel_ReceiverModule_NextState_Data;
ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable <= HiSignal;
ReceiverModule_TopLevel_ReceiverModule_Clock <= ReceiverModule_TopLevel_Clock;
ReceiverModule_TopLevel_ReceiverModule_Reset <= ReceiverModule_TopLevel_Reset;
ReceiverModule_TopLevel_ReceiverModule_IsValid <= ReceiverModule_TopLevel_ReceiverModuleIsValid;
ReceiverModule_TopLevel_ReceiverModule_Ack <= ReceiverModule_TopLevel_ReceiverModuleAck;
ReceiverModule_TopLevel_ReceiverModule_Bit <= ReceiverModule_TopLevel_ReceiverModuleBit;
ReceiverModule_TopLevel_ReceiverModuleHasData <= ReceiverModule_TopLevel_ReceiverModule_HasData;
ReceiverModule_TopLevel_ReceiverModuleData <= ReceiverModule_TopLevel_ReceiverModule_Data;
ReceiverModule_TopLevel_ReceiverModulePartialData <= ReceiverModule_TopLevel_ReceiverModule_PartialData;
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_State_FSM, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr, others => '0');
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_State_FSM, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr, others => '0');
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_State_FSM, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_State_FSM, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs <= signed(resize(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs'length));
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr);
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 <= unsigned(ReceiverModule_TopLevel_ReceiverModule_PartialData);
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 <= unsigned(ReceiverModule_TopLevel_ReceiverModule_State_Data);
ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid <= ReceiverModule_TopLevel_ReceiverModule_IsValid;
ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack <= ReceiverModule_TopLevel_ReceiverModule_Ack;
ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit <= ReceiverModule_TopLevel_ReceiverModule_Bit;
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr);
ReceiverModule_TopLevel_ReceiverModule_HasData <= ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr;
ReceiverModule_TopLevel_ReceiverModule_Data <= unsigned(ReceiverModule_TopLevel_ReceiverModule_State_Data);
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup);
ReceiverModule_TopLevel_ReceiverModule_PartialData <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr);
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1 <= (1 => ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr, others => '0');
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2 <= unsigned(ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr);
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
