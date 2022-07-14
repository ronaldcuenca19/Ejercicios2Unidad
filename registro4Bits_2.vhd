----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:06 07/02/2022 
-- Design Name: 
-- Module Name:    registro4Bits_2 - Behavioral 
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

--Ejercicio 3.4
--Ejercicio 3.4
--Ejercicio 3.4

entity registro4Bits_2 is
port(
	clk, serie: in std_logic;
	control: inout std_logic;
	Q: out std_logic_vector (3 downto 0));
end registro4Bits_2;

architecture Behavioral of registro4Bits_2 is
signal serie_bus: std_logic;
signal Q_bus: std_logic_vector (3 downto 0);
begin
process (clk, control, serie)
begin
	if	control='0' then
	if	clk' event and clk='0' then
	Q_bus <= "0000";
	serie_bus <= '1';
	Q_bus(3) <= '1';
	Q_bus(2) <= Q_bus(3);
	Q_bus(1) <= Q_bus(2);
	Q_bus(0) <= Q_bus(1);
	if	(Q_bus(3) = '1' and Q_bus(2) = '0' and Q_bus(1) = '0') then
	serie_bus <= '0';
	Q_bus(3) <= '0';
	Q_bus(2) <= Q_bus(3);
	Q_bus(1) <= Q_bus(2);
	Q_bus(0) <= Q_bus(1);
	end if;
	end if;
	end if;
end process;
Q <= Q_bus;
end Behavioral;

