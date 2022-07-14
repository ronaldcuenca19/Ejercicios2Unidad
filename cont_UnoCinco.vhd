----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:08 07/11/2022 
-- Design Name: 
-- Module Name:    cont_UnoCinco - Behavioral 
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

--Ejercicio 3.6
--Ejercicio 3.6
--Ejercicio 3.6

entity cont_UnoCinco is
Port(
		clk: in std_logic;
		rst: in std_logic;
		Q: out std_logic_Vector(2 downto 0));
end cont_UnoCinco;

architecture Behavioral of cont_UnoCinco is
signal salida: std_logic_vector(2 downto 0);
begin
	process(clk, rst)
begin
	if clk' event and clk = '1' then
		if rst = '0' then
		if salida > "001" then
		salida <= salida + 2;
		else
		salida <= salida + 1;
		if salida = "101" then
		salida <= "000";
		end if;
	end if;
	end if;
	end if;
	end process;
	Q <= salida;
end Behavioral;

