--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:56:20 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_FlipFlop_T.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FlipFlop_T
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
 
ENTITY TB_FlipFlop_T IS
END TB_FlipFlop_T;
 
ARCHITECTURE behavior OF TB_FlipFlop_T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FlipFlop_T
    PORT(
         clk : IN  std_logic;
         T : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal T : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FlipFlop_T PORT MAP (
          clk => clk,
          T => T,
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
      T <= '0';
      wait for clk_period*10;
		T <= '1';
      wait;
   end process;

END;
