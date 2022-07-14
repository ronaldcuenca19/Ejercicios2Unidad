--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:36 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_EjerciciosMemorias.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EjerciciosMemorias
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
 
ENTITY TB_EjerciciosMemorias IS
END TB_EjerciciosMemorias;
 
ARCHITECTURE behavior OF TB_EjerciciosMemorias IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EjerciciosMemorias
    PORT(
         D : IN  std_logic_vector(0 to 3);
         clk : IN  std_logic;
         rst : IN  std_logic;
         L : IN  std_logic;
         R : IN  std_logic;
         S : IN  std_logic_vector(0 to 1);
         Q : INOUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(0 to 3) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal L : std_logic := '0';
   signal R : std_logic := '0';
   signal S : std_logic_vector(0 to 1) := (others => '0');

	--BiDirs
   signal Q : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EjerciciosMemorias PORT MAP (
          D => D,
          clk => clk,
          rst => rst,
          L => L,
          R => R,
          S => S,
          Q => Q
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
