--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:12:54 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_detectorSecuencia2.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: detectorSecuencia2
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
 
ENTITY TB_detectorSecuencia2 IS
END TB_detectorSecuencia2;
 
ARCHITECTURE behavior OF TB_detectorSecuencia2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT detectorSecuencia2
    PORT(
         clk : IN  std_logic;
         entrada : IN  std_logic;
         salidaZ : OUT  std_logic_vector(0 to 6)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal entrada : std_logic := '0';

 	--Outputs
   signal salidaZ : std_logic_vector(0 to 6);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: detectorSecuencia2 PORT MAP (
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
  entrada <= '0';
      wait for clk_period;
		entrada <= '1';
		wait for clk_period;
		entrada <= '1';
		wait for clk_period;
		entrada <= '0';
		wait for clk_period;
		entrada <= '1';
		wait for clk_period;
		entrada <= '0';
		wait for clk_period;
		entrada <= '1';
		wait for clk_period;
		entrada <= '0';
      wait;
   end process;

END;
