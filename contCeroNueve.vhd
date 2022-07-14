----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:29 07/11/2022 
-- Design Name: 
-- Module Name:    contCeroNueve - Behavioral 
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

--Ejercicio 3.10
--Ejercicio 3.10
--Ejercicio 3.10

entity contCeroNueve is
Port(
		clk: in std_logic;
		rst, C: in std_logic;
		Q: out std_logic_Vector(2 downto 0));
end contCeroNueve;

architecture Behavioral of contCeroNueve is
signal salida: std_logic_vector(2 downto 0);
begin
	process(clk)
begin
	if(clk' event and clk = '1') then
		if(rst = '0') then
		if (salida < 9) then
		if (C = '0') then
		salida <= salida + 1;
		else
		salida <= salida - 1;
		end if;
	end if;
	end if;
	end if;
	end process;
	Q <= salida;
end Behavioral;

