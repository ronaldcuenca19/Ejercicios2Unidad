--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:50:44 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_FlipFlop_JK.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FlipFlop_JK
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
 
ENTITY TB_FlipFlop_JK IS
END TB_FlipFlop_JK;
 
ARCHITECTURE behavior OF TB_FlipFlop_JK IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FlipFlop_JK
    PORT(
         clk : IN  std_logic;
         J : IN  std_logic;
         K : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal J : std_logic := '0';
   signal K : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FlipFlop_JK PORT MAP (
          clk => clk,
          J => J,
          K => K,
          Q => Q,
          Qn => Qn
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for clk_period*10;
		J <= '0';
		K <= '1';
		wait for clk_period*10;
		J <= '0';
		K <= '0';
		wait for clk_period*10;
		J <= '1';
		K <= '0';
		wait for clk_period*10;
		J <= '1';
		K <= '1';
      wait;
   end process;

END;
