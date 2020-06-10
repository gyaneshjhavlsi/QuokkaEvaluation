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
-- System configuration name is StateMembersModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity StateMembersModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
Toggle : in  std_logic;
BoolValue : out  std_logic
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of StateMembersModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
constant Zero : std_logic := '0';
constant One : std_logic := '1';
constant true : std_logic := '1';
constant false : std_logic := '0';
signal Inputs_Toggle : std_logic := '0';
signal NextState_BoolValue : std_logic := '0';
signal State_BoolValue : std_logic := '0';
constant State_BoolValueDefault : std_logic := '0';
signal StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr : std_logic := '0';
signal StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr_1 : std_logic := '0';
begin
process (Clock, NextState_BoolValue, Reset)
begin
if rising_edge(Clock) then
if ( Reset = '1' ) then
State_BoolValue <= State_BoolValueDefault;
else
State_BoolValue <= NextState_BoolValue;
end if;
end if;
end process;

process(StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr_1)
begin
StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr <= NOT StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr_1;

    end process;
process(Inputs_Toggle, State_BoolValue, StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr)
begin
NextState_BoolValue <= State_BoolValue;
if ( Inputs_Toggle = '1' ) then
NextState_BoolValue <= StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr;
end if;
end process;
process(State_BoolValue, Toggle)
begin
StateMembersModule_L21F9L26T10_StateMembersModule_L23F13L25T14_StateMembersModule_L24F39T55_Expr_1 <= State_BoolValue;
Inputs_Toggle <= Toggle;
BoolValue <= State_BoolValue;
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
