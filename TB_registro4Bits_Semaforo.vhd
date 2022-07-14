--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:05:33 07/14/2022
-- Design Name:   
-- Module Name:   D:/ejercicios2U/TB_registro4Bits_Semaforo.vhd
-- Project Name:  ejercicios2U
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro4Bits_Semaforo
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
 
ENTITY TB_registro4Bits_Semaforo IS
END TB_registro4Bits_Semaforo;
 
ARCHITECTURE behavior OF TB_registro4Bits_Semaforo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro4Bits_Semaforo
    PORT(
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         SN : INOUT  std_logic_vector(0 to 2);
         EO : INOUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

	--BiDirs
   signal SN : std_logic_vector(0 to 2);
   signal EO : std_logic_vector(0 to 2);

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro4Bits_Semaforo PORT MAP (
          clk => clk,
          Q => Q,
          SN => SN,
          EO => EO
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
		if(Q = "1000") then
			wait for 20 sec;
		elsif (Q = "0100") then
			wait for 5 sec;
		elsif (Q = "0010") then
			wait for 20 sec;
		elsif (Q = "0001") then
			wait for 5 sec;
		end if;
      wait;
   end process;

END;
