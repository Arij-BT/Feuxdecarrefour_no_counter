--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:53:27 01/17/2021
-- Design Name:   
-- Module Name:   C:/Users/Erij/Desktop/xilinx_workspace/Feux_2/intersection_tb.vhd
-- Project Name:  Feux_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: intersection
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY intersection_tb IS
END intersection_tb;
 
ARCHITECTURE behavior OF intersection_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT intersection
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         R1 : OUT  std_logic;
         O1 : OUT  std_logic;
         V1 : OUT  std_logic;
         RT1 : OUT  std_logic;
         OT1 : OUT  std_logic;
         VT1 : OUT  std_logic;
         RP1 : OUT  std_logic;
         VP1 : OUT  std_logic;
         R2 : OUT  std_logic;
         O2 : OUT  std_logic;
         V2 : OUT  std_logic;
         RP2 : OUT  std_logic;
         VP2 : OUT  std_logic;
         RT2 : OUT  std_logic;
         VT2 : OUT  std_logic;
         OT2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal R1 : std_logic;
   signal O1 : std_logic;
   signal V1 : std_logic;
   signal RT1 : std_logic;
   signal OT1 : std_logic;
   signal VT1 : std_logic;
   signal RP1 : std_logic;
   signal VP1 : std_logic;
   signal R2 : std_logic;
   signal O2 : std_logic;
   signal V2 : std_logic;
   signal RP2 : std_logic;
   signal VP2 : std_logic;
   signal RT2 : std_logic;
   signal VT2 : std_logic;
   signal OT2 : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: intersection PORT MAP (
          clk => clk,
          rst => rst,
          R1 => R1,
          O1 => O1,
          V1 => V1,
          RT1 => RT1,
          OT1 => OT1,
          VT1 => VT1,
          RP1 => RP1,
          VP1 => VP1,
          R2 => R2,
          O2 => O2,
          V2 => V2,
          RP2 => RP2,
          VP2 => VP2,
          RT2 => RT2,
          VT2 => VT2,
          OT2 => OT2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 1000000000 ns;
		clk <= '1';
		wait for 1000000000 ns;
   end process;
 

   -- Stimulus process
   reset: process
   begin		
      -- hold reset state for 100 ns.
      rst<='1';
			wait for 1000 ms;
		rst<='0';

      -- insert stimulus here 
		wait for 1000 ms;
      wait;
   end process;

END;
