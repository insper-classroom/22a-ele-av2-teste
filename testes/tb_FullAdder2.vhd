-- teste FullAdder2

library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_FullAdder2 is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_FullAdder2 is

component FullAdder2 is
	port(
		X,Y:      in STD_LOGIC_VECTOR(1 downto 0);
		Saida:    out STD_LOGIC_VECTOR(1 downto 0);
		Carry:    out STD_LOGIC
	);
end component; 

signal  inX, inY, outS : STD_LOGIC_VECTOR(1 downto 0);
signal  outC : std_logic;

begin

	mapping: FullAdder2 port map(inX, inY, outS, outC);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    inX <= "00"; inY<= "00";
    wait for 200 ps;
    assert(outS = "00" and outC = '0')  report "Falha em teste" severity error;
    
    inX <= "01"; inY<= "00";
    wait for 200 ps;
    assert(outS = "01" and outC = '0')  report "Falha em teste" severity error;
    
    inX <= "01"; inY<= "01";
    wait for 200 ps;
    assert(outS = "10" and outC = '0')  report "Falha em teste" severity error;
    
    inX <= "10"; inY<= "01";
    wait for 200 ps;
    assert(outS = "11" and outC = '0')  report "Falha em teste" severity error;
    
    inX <= "10"; inY<= "10";
    wait for 200 ps;
    assert(outS = "00" and outC = '1')  report "Falha em teste" severity error;
    
    inX <= "11"; inY<= "10";
    wait for 200 ps;
    assert(outS = "01" and outC = '1')  report "Falha em teste" severity error;
    
    inX <= "11"; inY<= "11";
    wait for 200 ps;
    assert(outS = "10" and outC = '1')  report "Falha em teste" severity error;

    test_runner_cleanup(runner); -- Simulacao acaba aqui

  end process;
end architecture;
