----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    18:03:29 07/13/2022 
-- Design Name: 
-- Module Name:    sistemaSecuencial - Behavioral 
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

--Ejercicio 3.18
--Ejercicio 3.18
--Ejercicio 3.18

entity sistemaSecuencial is
Port (clk, entrada : in  STD_LOGIC;
           salidaZ : out  STD_LOGIC);
end sistemaSecuencial;

architecture Behavioral of sistemaSecuencial is
type estados is (A, B, C, D, E);
signal presente, futuro : estados;
begin
proceso1 : process(presente, entrada) begin
	case presente is
		when A => salidaZ <= '0';
			if entrada = '0' then
				futuro <= B;
			else
				futuro <= E;
			end if;
		when B => salidaZ <= '1';
			if entrada = '0' then
				futuro <= A;
			else
				futuro <= C;
			end if;
		when C =>
			if entrada = '0' then
				futuro <= B;
				salidaZ <= '0';
			else
				futuro <= C;
				salidaZ <= '1';
			end if;
		when D => salidaZ <= '0'; 
			if entrada = '0' then
				futuro <= C;
			else
				futuro <= E;
			end if;
		when E => 
			if entrada = '0' then 
				futuro <= D;
				salidaZ <= '1';
			else
				futuro <= A;
				salidaZ <= '0';
			end if;
	end case;
end process proceso1;

proceso2 : process (clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
end process proceso2;
end Behavioral;

