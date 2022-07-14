----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    17:58:45 07/13/2022 
-- Design Name: 
-- Module Name:    detectorSecuencia2 - Behavioral 
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

--Ejercicio 3.17
--Ejercicio 3.17
--Ejercicio 3.17

entity detectorSecuencia2 is
Port (clk, entrada : in  STD_LOGIC;
           salidaZ : out  STD_LOGIC_VECTOR(0 to 6));
end detectorSecuencia2;

architecture Behavioral of detectorSecuencia2 is
type estados is (A,B,C,D,E,F,G,H);
signal presente, futuro : estados;
begin
proceso1 : process (presente, entrada) begin
	case presente is
		when A => salidaZ <= "0000000";
			if entrada = '0' then
				futuro <= B;
			end if;
		when B => salidaZ <= "0000000";
			if entrada = '1' then
				futuro <= C;
			end if;
		when C => salidaZ <= "0000000";
			if entrada = '1' then
				futuro <= D;
			end if;
		when D => salidaZ <= "0000000";
			if entrada = '0' then
				futuro <= E;
			end if;
		when E => salidaZ <= "0000000";
			if entrada = '1' then
				futuro <= F;
			end if;
		when F => salidaZ <= "0000000";
			if entrada = '0' then
				futuro <= G;
			end if;
		when G => salidaZ <= "0000000";
			if  entrada = '1' then
				futuro <= H;
			end if;
		when H =>
			if entrada = '0' then 
				futuro <= A;
				salidaZ <= "1101111";
			else
				salidaZ <= "0000000";
			end if;
	end case;
end process proceso1;

proceso2 : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
end process proceso2;
end Behavioral;

