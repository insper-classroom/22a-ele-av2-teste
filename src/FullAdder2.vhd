-- FullAdder2.vhd

-- Implementa Full Adder2

Library ieee;
use ieee.std_logic_1164.all;

entity FullAdder2 is
	port(
		X,Y:      in STD_LOGIC_VECTOR(1 downto 0);
		Saida:    out STD_LOGIC_VECTOR(1 downto 0);
		Carry:    out STD_LOGIC
	);
end entity;

architecture rtl of FullAdder2 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!


end architecture;
