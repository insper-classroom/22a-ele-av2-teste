-- Elementos de Sistemas
-- by Luciano Soares
-- FlipFlopRS.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopRS is
	port(
		clock:   in std_logic;
		R:       in std_logic;
		S:       in std_logic;
		Q:       out std_logic;
		Q_barra: out std_logic
	);
end entity;

architecture arch of FlipFlopRS is

begin

	process(clock) begin
	

  	end process;

end architecture;
