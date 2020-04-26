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
-- System configuration name is CompositionModule_TopLevel_CompositionModule_Receiver, clock frequency is 1Hz, Embedded
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity CompositionModule_TopLevel_CompositionModule_Receiver is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

BoardSignals : in  BoardSignalsType;
IsValid : in  std_logic;
Ack : in  std_logic;
Bit : in  std_logic;
HasData : out  std_logic;
Data : out  unsigned(8 downto 1)
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of CompositionModule_TopLevel_CompositionModule_Receiver is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
constant Zero : std_logic := '0';
constant One : std_logic := '1';
constant true : std_logic := '1';
constant false : std_logic := '0';
constant ReceiverModule_L10F49T53_Expr : unsigned(8 downto 1)  := "10000000";
constant ReceiverModule_L10F56T57_Expr : std_logic := '0';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr : std_logic := '0';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr : std_logic := '1';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr : std_logic := '1';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F64T65_Expr : std_logic := '1';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr : unsigned(2 downto 1)  := "10";
constant ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr : unsigned(2 downto 1)  := "10";
constant ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr : std_logic := '0';
constant ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr : std_logic := '0';
constant ReceiverModule_L8F46T71_Expr : unsigned(2 downto 1)  := "10";
signal Inputs_IsValid : std_logic := '0';
signal Inputs_Ack : std_logic := '0';
signal Inputs_Bit : std_logic := '0';
signal NextState_FSM : unsigned(2 downto 1)  := "00";
signal NextState_Data : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L10F29T58_Expr : unsigned(8 downto 1)  := "00000000";
signal PartialData : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr : unsigned(8 downto 1)  := "00000000";
signal State_FSM : unsigned(2 downto 1)  := "00";
constant State_FSMDefault : unsigned(2 downto 1)  := "00";
signal State_Data : unsigned(8 downto 1)  := "00000000";
constant State_DataDefault : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case : std_logic := '0';
signal ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case : std_logic := '0';
signal ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case : std_logic := '0';
signal ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L8F32T71_Expr : std_logic := '0';
signal ReceiverModule_L8F32T71_ExprLhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L8F32T71_ExprRhs : signed(3 downto 1)  := "000";
signal ReceiverModule_L10F36T57_Lookup : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L10F36T57_LookupMultiplexerAddress : std_logic := '0';
signal ReceiverModule_L10F36T57_Lookup1 : unsigned(8 downto 1)  := "00000000";
signal ReceiverModule_L10F36T57_Lookup2 : unsigned(8 downto 1)  := "00000000";
begin
process (BoardSignals, NextState_Data, NextState_FSM)
begin
if rising_edge(BoardSignals.Clock) then
if ( BoardSignals.Reset = '1' ) then
State_FSM <= State_FSMDefault;
State_Data <= State_DataDefault;
else
State_FSM <= NextState_FSM;
State_Data <= NextState_Data;
end if;
end if;
end process;
    ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case <= '1' when (signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs, ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs, ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case <= '1' when (signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs, ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs, ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case <= '1' when (signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs, ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs'length + 1)) = signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs, ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs'length + 1))) else '0';
    ReceiverModule_L8F32T71_Expr <= '1' when (signed(resize(ReceiverModule_L8F32T71_ExprLhs, ReceiverModule_L8F32T71_ExprLhs'length + 1)) = signed(resize(ReceiverModule_L8F32T71_ExprRhs, ReceiverModule_L8F32T71_ExprRhs'length + 1))) else '0';

process(ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1, ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2)
begin

    for i in 8 downto 1 loop
        ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr(i) <= ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1(i)  OR ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2(i)    ;
    end loop;

    end process;
process(ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1)
alias output is ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr;
alias source0 is ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1;
begin
-- Output: ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, Width: 8, ShiftBy: 1, Sources: 1
output(1) <= source0(2);
output(2) <= source0(3);
output(3) <= source0(4);
output(4) <= source0(5);
output(5) <= source0(6);
output(6) <= source0(7);
output(7) <= source0(8);
output(8) <= '0';
end process;
process(ReceiverModule_L10F36T57_Lookup1, ReceiverModule_L10F36T57_Lookup2, ReceiverModule_L10F36T57_LookupMultiplexerAddress)
begin
case ReceiverModule_L10F36T57_LookupMultiplexerAddress is
  when '0' => 
ReceiverModule_L10F36T57_Lookup <= ReceiverModule_L10F36T57_Lookup1;
  when '1' => 
ReceiverModule_L10F36T57_Lookup <= ReceiverModule_L10F36T57_Lookup2;
  when others => 
ReceiverModule_L10F36T57_Lookup <= "00000000";
end case;

end process;
process(Inputs_Ack, Inputs_IsValid, PartialData, ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case, ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case, ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr, ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case, State_Data, State_FSM)
begin
NextState_FSM <= unsigned(State_FSM);
NextState_Data <= unsigned(State_Data);
if ( ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case = '1' ) then
if ( Inputs_IsValid = '1' ) then
NextState_Data <= unsigned(PartialData);
NextState_FSM <= (1 => ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr, others => '0');
end if;
elsif ( ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case = '1' ) then
if ( Inputs_IsValid = '1' ) then
NextState_Data <= unsigned(ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr);
else
NextState_FSM <= unsigned(ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr);
end if;
elsif ( ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case = '1' ) then
if ( Inputs_Ack = '1' ) then
NextState_FSM <= (1 => ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr, others => '0');
NextState_Data <= (1 => ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr, others => '0');
end if;
end if;
end process;
process(Ack, Bit, Inputs_Bit, IsValid, PartialData, ReceiverModule_L10F29T58_Expr, ReceiverModule_L10F36T57_Lookup, ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr, ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, ReceiverModule_L8F32T71_Expr, State_Data, State_FSM)
begin
ReceiverModule_L10F36T57_LookupMultiplexerAddress <= Inputs_Bit;
ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs <= signed(resize(State_FSM, ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs'length));
ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs <= (1 => ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr, others => '0');
ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs <= signed(resize(State_FSM, ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs'length));
ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs <= (1 => ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr, others => '0');
ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs <= signed(resize(State_FSM, ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs'length));
ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs <= signed(resize(ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr, ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs'length));
ReceiverModule_L8F32T71_ExprLhs <= signed(resize(State_FSM, ReceiverModule_L8F32T71_ExprLhs'length));
ReceiverModule_L8F32T71_ExprRhs <= signed(resize(ReceiverModule_L8F46T71_Expr, ReceiverModule_L8F32T71_ExprRhs'length));
ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 <= unsigned(ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr);
ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 <= unsigned(PartialData);
ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 <= unsigned(State_Data);
Inputs_IsValid <= IsValid;
Inputs_Ack <= Ack;
Inputs_Bit <= Bit;
ReceiverModule_L10F29T58_Expr <= unsigned(ReceiverModule_L10F36T57_Lookup);
PartialData <= unsigned(ReceiverModule_L10F29T58_Expr);
ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr <= unsigned(ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr);
HasData <= ReceiverModule_L8F32T71_Expr;
Data <= unsigned(State_Data);
ReceiverModule_L10F36T57_Lookup1 <= (1 => ReceiverModule_L10F56T57_Expr, others => '0');
ReceiverModule_L10F36T57_Lookup2 <= unsigned(ReceiverModule_L10F49T53_Expr);
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
