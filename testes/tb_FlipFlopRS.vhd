-- file: tb_FlipFlopRS.vhd


library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_FlipFlopRS is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_FlipFlopRS is

component FlipFlopRS is port (
		clock:   in std_logic;
		R:       in std_logic;
		S:       in std_logic;
		Q:       out std_logic;
		Q_barra: out std_logic );
end component; 

	signal inClock : std_logic := '0';
	signal inR : std_logic;
	signal inS : STD_LOGIC;
	signal outQ : STD_LOGIC;
	signal outQb : STD_LOGIC;

begin

	mapping: FlipFlopRS port map(inClock, inR, inS, outQ, outQb);

	inClock <= not inClock after 100 ps;
	
  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    -- Teste: 0
		inR <= '1'; inS <= '0';
    wait until inClock'event and inClock='0';
		assert(outQ = '0' and outQb = '1')  report "Falha" severity error;
		
		inR <= '0'; inS <= '0';
    wait until inClock'event and inClock='0';
		assert(outQ = '0' and outQb = '1')  report "Falha" severity error;
		
		inR <= '0'; inS <= '1';
    wait until inClock'event and inClock='0';
		assert(outQ = '1' and outQb = '0')  report "Falha" severity error;
		
		inR <= '0'; inS <= '0';
    wait until inClock'event and inClock='0';
		assert(outQ = '1' and outQb = '0')   report "Falha" severity error;
		
		inR <= '1'; inS <= '0';
    wait until inClock'event and inClock='0';
		assert(outQ = '0' and outQb = '1')  report "Falha" severity error;
		
		inR <= '0'; inS <= '0';
    wait until inClock'event and inClock='0';
		assert(outQ = '0' and outQb = '1')  report "Falha" severity error;

								
    test_runner_cleanup(runner); -- Simulacao acaba aqui

  end process;
end architecture;
