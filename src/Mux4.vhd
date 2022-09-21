library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4 is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux4 is
begin
	with sel select
		q <= a when "00",
		     b when "01",
		     c when "10",
		     d when "11",
			 '0' when others;

end architecture;
