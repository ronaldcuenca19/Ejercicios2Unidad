--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:28:34 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_sistemaSecuencial.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sistemaSecuencial
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
 
ENTITY TB_sistemaSecuencial IS
END TB_sistemaSecuencial;
 
ARCHITECTURE behavior OF TB_sistemaSecuencial IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sistemaSecuencial
    PORT(
         clk : IN  std_logic;
         entrada : IN  std_logic;
         salidaZ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal entrada : std_logic := '0';

 	--Outputs
   signal salidaZ : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sistemaSecuencial PORT MAP (
          clk => clk,
          entrada => entrada,
          salidaZ => salidaZ
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
		entrada <= '0';
      wait for clk_period;
		entrada <= '1';
      wait for clk_period;
		entrada <= '0';
      wait for clk_period;
		entrada <= '0';
      wait for clk_period;
		entrada <= '1';
      wait for clk_period;
		entrada <= '0';		
      wait for clk_period;
		entrada <= '1';				
      -- insert stimulus here 
      wait;
   end process;

END;
