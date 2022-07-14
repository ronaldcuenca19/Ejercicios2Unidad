----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    18:07:43 07/13/2022 
-- Design Name: 
-- Module Name:    contPseudoAleatorios - Behavioral 
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

--Ejercicio 3.19
--Ejercicio 3.19
--Ejercicio 3.19

entity contPseudoAleatorios is
Port (clk, entrada : in  STD_LOGIC;
           salidaZ : out  STD_LOGIC_VECTOR (2 downto 0));
end contPseudoAleatorios;

architecture Behavioral of contPseudoAleatorios is
type estados is (num0,num1,num2,num3,num4,num5,num6,num7);
signal presente, futuro : estados;
begin
	proceso1 : process(presente, entrada) begin
		case presente is
			when num0 =>
				if entrada = '0' then
					futuro <= num1;
				end if;
			when num1 =>
				if entrada = '0' then 
					futuro <= num2;
				else
					futuro <= num4;
				end if;
			when num2 =>
				if entrada = '0' then
					futuro <= num3;
				else
					futuro <= num5;
				end if;
			when num3 =>
				if entrada = '0' then
					futuro <= num4;
				else
					futuro <= num1;
				end if;
			when num4 => 
				if entrada = '0' then 
					futuro <= num5;
				else
					futuro <= num2;
				end if;
			when num5 => futuro <= num6;
			when num6 => futuro <= num7;
			when num7 =>
				if entrada = '0' then
					futuro <= num0;
				else
					futuro <= num3;
				end if;
		end case;
	end process proceso1;
	
	proceso2 : process(presente) begin
		case presente is
			when num0 => salidaZ <= "000";
			when num1 => salidaZ <= "001";
			when num2 => salidaZ <= "010";
			when num3 => salidaZ <= "011";
			when num4 => salidaZ <= "100";
			when num5 => salidaZ <= "101";
			when num6 => salidaZ <= "110";
			when num7 => salidaZ <= "111";
		end case;
	end process proceso2;
	
	proceso3 : process(clk) begin	
		if clk'event and clk = '1' then
			presente <= futuro;
		end if;
	end process proceso3;
end Behavioral;

