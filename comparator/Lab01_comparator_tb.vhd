library ieee;
use ieee.std_logic_1164.all;

entity Lab01_comparator_tb is 
end Lab01_comparator_tb;

architecture beh of Lab01_comparator_tb is

signal SW_tb: std_logic_vector(7 downto 0);
signal HEX0_tb, HEX1_tb: std_logic_vector (6 downto 0); 
signal LEDR_tb: std_logic_vector (5 downto 0);

component Lab01_comparator
	port( SW: in std_logic_vector (7 downto 0);
			HEX0, HEX1: out std_logic_vector (6 downto 0); 
			LEDR: out std_logic_vector (5 downto 0)); 
end component;

begin
UnitUnderTesting: Lab01_comparator port map
(SW => SW_tb, HEX0 => HEX0_tb, HEX1 => HEX1_tb, LEDR => LEDR_tb);
process
begin
	SW_tb <= "01001100"; 
	wait for 5 ns;
	SW_tb <= "00001111"; 
	wait for 5 ns; 
	SW_tb <= "10110011"; 
	wait for 5 ns;
	wait;
end process;
end beh;