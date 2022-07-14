----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ronald Cuenca
-- 
-- Create Date:    18:20:49 07/13/2022 
-- Design Name: 
-- Module Name:    sistemaSecuencial3 - Behavioral 
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

--Ejercicio 3.20
--Ejercicio 3.20
--Ejercicio 3.20

entity sistemaSecuencial3 is
Port (clk: in  std_logic;
           moneda: in  std_logic_vector(4 downto 0);
           vuelto: out  STD_LOGIC_VECTOR(3 downto 0));
end sistemaSecuencial3;

architecture Behavioral of sistemaSecuencial3 is
type estados is (comienzo, Dolar5, Dolar10, Dolar20);
signal presente, futuro : estados;
begin
 proceso1 : process(presente, moneda) begin
	case presente is
		when comienzo => vuelto <= "0000";
			if moneda = "00101" then
				futuro <= Dolar5;
			elsif moneda = "01010" then
				futuro <= Dolar10;
			elsif moneda = "10100" then
				futuro <= Dolar20;
			else
				futuro <= comienzo;
			end if;
		when Dolar5 => vuelto <= "0000";
			futuro<= comienzo;
		when Dolar10 => vuelto <= "0101";
			futuro<= comienzo;
		when Dolar20 => vuelto <= "1111";
			futuro<= comienzo;
	end case;
 end process proceso1;

 proceso2 : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
 end process proceso2;
end Behavioral;

