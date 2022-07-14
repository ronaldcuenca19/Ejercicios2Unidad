--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:03:01 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_sistemaSecuencial3.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sistemaSecuencial3
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
 
ENTITY TB_sistemaSecuencial3 IS
END TB_sistemaSecuencial3;
 
ARCHITECTURE behavior OF TB_sistemaSecuencial3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sistemaSecuencial3
    PORT(
         clk : IN  std_logic;
         moneda : IN  std_logic_vector(4 downto 0);
         vuelto : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal moneda : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal vuelto : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sistemaSecuencial3 PORT MAP (
          clk => clk,
          moneda => moneda,
          vuelto => vuelto
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
      moneda <= "00101";
      wait for 100 ns;
		moneda <= "01010";
		wait for 100 ns;
		moneda <= "10100";
		wait for 100 ns;
		moneda <= "00000";	
      wait;
   end process;

END;
