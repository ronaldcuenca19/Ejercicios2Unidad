----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    20:17:02 07/11/2022 
-- Design Name: 
-- Module Name:    cronometro245 - Behavioral 
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
use ieee.std_logic_unsigned.all;

--Ejercicio 3.12
--Ejercicio 3.12
--Ejercicio 3.12

entity cronometro245 is
Port(
		clk, reset, en: in std_logic;
		salida: out std_logic_Vector(3 downto 0));
end cronometro245;

architecture Behavioral of cronometro245 is
signal Q,D : std_logic_vector(3 downto 0);
begin
process(clk)
begin
	if clk ' event and clk = '1' then
	if reset = '1' then 
		Q <= "0000";
		else
		Q <= D;
		end if;
	end if;
	end process;
	D <= "0000" when Q = 245 else
	Q + '1';

	with en select
		salida <= Q when '0',
			"0000" when others;
end Behavioral;

