----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    20:06:26 07/11/2022 
-- Design Name: 
-- Module Name:    contUnoQuince - Behavioral 
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

--Ejercicio 3.9
--Ejercicio 3.9
--Ejercicio 3.9

entity contUnoQuince is
Port(
		clk: in std_logic;
		rst, X: in std_logic;
		Q: out std_logic_Vector(2 downto 0));
end contUnoQuince;

architecture Behavioral of contUnoQuince is
signal salida: std_logic_vector(2 downto 0);
begin
	process(clk)
begin
	if(clk' event and clk = '1') then
		if (X = '0') then
		salida <= salida + 1;
		else
		salida <= salida - 1;
	end if;
	end if;
	end process;
	Q <= salida;
end Behavioral;

