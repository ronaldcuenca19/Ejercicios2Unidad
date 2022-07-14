----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    18:39:13 07/13/2022 
-- Design Name: 
-- Module Name:    Flip-Flop_JK - Behavioral 
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

--Ejercicio 3.1
--Ejercicio 3.1
--Ejercicio 3.1

entity FlipFlop_JK is
Port(clk: in STD_LOGIC;
		  J, K: in STD_LOGIC;
		  Q, Qn: out STD_LOGIC);
end FlipFlop_JK;

architecture Behavioral of Flip-Flop_JK is
signal aux : std_logic;
begin
process (clk, J, K)  --Se activa en FF en ambos flancos
	begin
	if	clk'event and clk='1' then  --Activa el FF en el flanco de subida
			if J = '0' and K='0' then
				aux <= aux;
			elsif J='0' and K='1' then
				aux <= '0';
			elsif J = '1' and K='0' then
				aux <= '1';
			else
				aux <= not aux;
			end if;
				end if;
	end process;
	Q <= aux;
	Qn<= not aux;
end Behavioral;

