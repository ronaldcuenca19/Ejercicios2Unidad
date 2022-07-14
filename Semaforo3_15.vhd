----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    15:45:47 07/13/2022 
-- Design Name: 
-- Module Name:    Semaforo3_15 - Behavioral 
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

--Ejercicio 3.15
--Ejercicio 3.15
--Ejercicio 3.15

entity Semaforo3_15 is
Port (sens, clk : in  std_logic;
            OE, SN: out  std_logic_vector(0 to 2));
end Semaforo3_15;

architecture Behavioral of Semaforo3_15 is
type estados is (ambarEO, ambarNS, comienzo, inicio);
	
	signal verde: STD_LOGIC_VECTOR(0 to 2):="001";
	signal rojo: STD_LOGIC_VECTOR(0 to 2):="100";
	signal ambar: STD_LOGIC_VECTOR(0 to 2):="010";
	signal presente, futuro: estados:= comienzo;
	
begin

	
proceso2: process(presente) 
begin
	case presente is
		when comienzo =>
			SN <= rojo;
			OE <= verde;
		when ambarEO =>
			SN <= rojo;
			OE <= ambar;
		when inicio =>
			SN <= verde;
			OE <= rojo;
		when ambarNS =>
			SN <= ambar;
			OE <= rojo;
	end case;
end process proceso2;

proceso3: process(clk) 
begin
	if clk'event and clk='1' then
		presente <= futuro;
	end if;
end process proceso3;
end Behavioral;

