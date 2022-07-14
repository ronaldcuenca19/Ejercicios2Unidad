----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    18:49:29 07/13/2022 
-- Design Name: 
-- Module Name:    FlipFlop_T - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Ejercicio 3.2
--Ejercicio 3.2
--Ejercicio 3.2

entity FlipFlop_T is
Port (clk,T : in  std_logic;
           Q, Qn : out  std_logic);
end FlipFlop_T;

architecture Behavioral of FlipFlop_T is
signal aux: std_logic := '0';
begin
	Q <= aux;
	Qn <= not aux;
	process(clk, T)
	begin
		if clk'event and clk = '1' then
			if (T = '1') then
				aux <= not aux;
			end if;
		end if;
	end process;
end Behavioral;

