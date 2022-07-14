--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:09:53 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_ContadorCero99.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ContadorCero99
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
 
ENTITY TB_ContadorCero99 IS
END TB_ContadorCero99;
 
ARCHITECTURE behavior OF TB_ContadorCero99 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ContadorCero99
    PORT(
         clk : IN  std_logic;
         D1 : OUT  std_logic_vector(0 to 6);
         D2 : OUT  std_logic_vector(0 to 6);
         salidaA : OUT  std_logic_vector(0 to 3);
         salidaB : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal D1 : std_logic_vector(0 to 6);
   signal D2 : std_logic_vector(0 to 6);
   signal salidaA : std_logic_vector(0 to 3);
   signal salidaB : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ContadorCero99 PORT MAP (
          clk => clk,
          D1 => D1,
          D2 => D2,
          salidaA => salidaA,
          salidaB => salidaB
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
