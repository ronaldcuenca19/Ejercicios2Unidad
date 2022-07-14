----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:51 07/11/2022 
-- Design Name: 
-- Module Name:    contador1_7 - Behavioral 
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

--Ejercicio 3.7
--Ejercicio 3.7
--Ejercicio 3.7

entity contador1_7 is
	Port(
		clk: in std_logic;
		rst: in std_logic;
		Q: out std_logic_Vector(2 downto 0));
end contador1_7;

architecture Behavioral of contador1_7 is
signal salida: std_logic_vector(2 downto 0);
begin
	process(clk, rst)
begin
	if(clk' event and clk = '1') then
		if(rst = '0') then
		salida <= salida+1;
		if(salida = "101")then
		salida <= "000";
	end if;
	end if;
	end if;
	end process;
	Q <= salida;
end Behavioral;

