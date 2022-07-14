--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:00:03 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_Semaforo3_15.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Semaforo3_15
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
 
ENTITY TB_Semaforo3_15 IS
END TB_Semaforo3_15;
 
ARCHITECTURE behavior OF TB_Semaforo3_15 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Semaforo3_15
    PORT(
         sens : IN  std_logic;
         clk : IN  std_logic;
         OE : OUT  std_logic_vector(0 to 2);
         SN : OUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal sens : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal OE : std_logic_vector(0 to 2);
   signal SN : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Semaforo3_15 PORT MAP (
          sens => sens,
          clk => clk,
          OE => OE,
          SN => SN
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
		sens <= '0';
      wait for 100 ns;	
		sens <= '1';
      --wait for clk_period*10;

      -- insert stimulus here 
      wait;
   end process;

END;
