----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:01 07/11/2022 
-- Design Name: 
-- Module Name:    contASC_DESC - Behavioral 
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

--Ejercicio 3.8
--Ejercicio 3.8
--Ejercicio 3.8

entity contASC_DESC is
Port(
		clk: in std_logic;
		X: in std_logic;
		Q: out std_logic_Vector(2 downto 0));
end contASC_DESC;

architecture Behavioral of contASC_DESC is
signal salida: std_logic_vector(2 downto 0);
begin
	process(clk)
begin
	if clk' event and clk = '1' then
		if (X = '0') then
		salida <= salida + 1;
		else
		salida <= salida - 1;
		end if;
	end if;
	end process;
	Q <= salida;
end Behavioral;

