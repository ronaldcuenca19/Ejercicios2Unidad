----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    16:39:30 07/12/2022 
-- Design Name: 
-- Module Name:    DiagramEstados1 - Behavioral 
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

--Ejercicio 3.13
--Ejercicio 3.13
--Ejercicio 3.13

entity DiagramEstados1 is
Port(
	clk, x: in std_logic;
	z: out std_logic);
end DiagramEstados1;

architecture Behavioral of DiagramEstados1 is
type estados is (A,B,C,D);
signal edo_pres, edo_fut: estados;
begin
proceso1: process (edo_pres, x)
begin
case edo_pres is
	when A => z <= '0';
		if x='0' then
			edo_fut <= D;
		else
		edo_fut<=A;
		end if;
	when B => z <= '0';
		if x='0' then
			edo_fut <= D;
		else
		edo_fut<=C;
		end if;
	when C => z <= '0';
		if x='0' then
			edo_fut <= B;
		else
		edo_fut<=D;
		end if;
	when D => z <= '0';
		if x='0' then
			edo_fut <= D;
		else
		edo_fut<=A;
		end if;
	end case;
	end process proceso1;
	
	proceso2: process(clk) 
	begin
	if	(clk' event and clk='1') then
		edo_pres <= edo_fut;
		end if;
		end process proceso2;
end Behavioral;

