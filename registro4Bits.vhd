----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:26 07/02/2022 
-- Design Name: 
-- Module Name:    EjerciciosMemorias - Behavioral 
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

--Ejercicio 3.3
--Ejercicio 3.3
--Ejercicio 3.3

entity EjerciciosMemorias is
	port(
	D: in std_logic_vector (0 to 3);
	clk,rst: in std_logic;
	L,R: in std_logic;
	S: in std_logic_vector (0 to 1);
	Q: inout std_logic_vector (0 to 3));
end EjerciciosMemorias;

architecture Behavioral of EjerciciosMemorias is
signal aux: std_logic_vector (0 to 3);
begin
Q <= aux;
process (clk, rst,S)
begin
if	clk'event and clk='1' then
		if rst='1' then
		aux <= "0000";
			else if	(S(0)='0' AND S(1)='1') then
				aux <= aux(1 to 3) & L;
				else if (S(0)='0' AND S(1)='0') then
				aux <= aux;
				else if (S(0)='1' AND S(1)='1') then
				aux <= R & aux(0 to 2);
				else if	(S(0)='1' AND S(1)='0') then
				aux <= D;
				end if;
			end if;
		end if;
	end if;
end if;
end if;
end process;
end Behavioral;

