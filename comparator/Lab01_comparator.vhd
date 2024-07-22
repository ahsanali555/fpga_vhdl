library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity Lab01_comparator is
	port(SW: in std_logic_vector(7 downto 0); 
		HEX0, HEX1: out std_logic_vector (6 downto 0); 
		LEDR: out std_logic_vector (5 downto 0));
end Lab01_comparator;

architecture beh of Lab01_comparator is

component unsigned_comparator generic (n: positive); 
		port(X,Y: in unsigned (n-1 downto 0); 
			lt, eq,gt: out std_logic
			);
end component;

component signed_comparator generic (n: positive); 
	port(X,Y: in signed (n-1 downto 0); 
		lt, eq,gt: out std_logic
		);
end component;

component hex_to_seg
	port(hex: in std_logic_vector (3 downto 0); 
			seg: out std_logic_vector (6 downto 0));
end component;

begin
	compute_unsigned: unsigned_comparator generic map (n => 4) 
	port map (X => unsigned (SW (7 downto 4)), 
	Y => unsigned (SW (3 downto 0)),
	lt=> LEDR(0),eq=> LEDR(1),gt=>  LEDR(2));
	
	compute_signed: signed_comparator generic map (n => 4) 
	port map (X => signed (SW (7 downto 4)), 
	Y => signed (SW (3 downto 0)),
	lt=> LEDR(3),eq=> LEDR(4),gt=>  LEDR(5));
	
	X_hex_to_seg: hex_to_seg port map (hex => SW(7 downto 4), seg => HEX1);
	Y_hex_to_seg: hex_to_seg port map (hex => SW(3 downto 0), seg => HEX0);
end beh;
