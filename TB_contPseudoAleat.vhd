--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:59:28 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_contPseudoAleat.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contPseudoAleatorios
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
 
ENTITY TB_contPseudoAleat IS
END TB_contPseudoAleat;
 
ARCHITECTURE behavior OF TB_contPseudoAleat IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contPseudoAleatorios
    PORT(
         clk : IN  std_logic;
         entrada : IN  std_logic;
         salidaZ : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal entrada : std_logic := '0';

 	--Outputs
   signal salidaZ : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contPseudoAleatorios PORT MAP (
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
		wait for 100 ns;
		entrada <= '1';
		wait for 100 ns;
		entrada <= '0';
		wait for 100 ns;
		entrada <= '1';
      wait;
   end process;

END;
