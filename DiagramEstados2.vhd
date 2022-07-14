----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    16:39:50 07/12/2022 
-- Design Name: 
-- Module Name:    DiagramEstados2 - Behavioral 
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

--Ejercicio 3.14
--Ejercicio 3.14
--Ejercicio 3.14

entity DiagramEstados2 is
Port(
	clk, x: in std_logic;
	z: out std_logic);
end DiagramEstados2;

architecture Behavioral of DiagramEstados2 is
type estados is (cero,uno,dos,tres,cuatro,cinco,seis,siete);
signal edo_pres, edo_fut: estados;
begin
proceso1: process (edo_pres, x)
begin
case edo_pres is
	when cero => z <= '0';
		if x='0' then
			edo_fut <= siete;
		else
		edo_fut<=uno;
		end if;
	when uno => z <= '0';
		if x='0' then
			edo_fut <= cero;
		else
		edo_fut<=dos;
		end if;
	when dos => z <= '0';
		if x='0' then
			edo_fut <= uno;
		else
		edo_fut<=tres;
		end if;
	when tres => z <= '0';
		if x='0' then
			edo_fut <= dos;
		else
		edo_fut<=cuatro;
		end if;
		when cuatro => z <= '0';
		if x='0' then
			edo_fut <= tres;
		else
		edo_fut<=cinco;
		end if;
		when cinco => z <= '0';
		if x='0' then
			edo_fut <= cuatro;
		else
		edo_fut<=seis;
		end if;
		when seis => z <= '0';
		if x='0' then
			edo_fut <= cinco;
		else
		edo_fut<=siete;
		end if;
		when siete => z <= '0';
		if x='0' then
			edo_fut <= seis;
		else
		edo_fut<=cero;
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

