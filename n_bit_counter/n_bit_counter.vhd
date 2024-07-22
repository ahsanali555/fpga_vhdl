library ieee;
use ieee.std_logic_1164.all;
use ieee. numeric_std.all;

entity n_bit_counter is
	generic (N: integer := 16); --Nr of bits of the counter
	port (KEYO: IN std_logic; --clock
			SW: IN std_logic_vector (3 downto 0); --synchronous Enable CLEAR and Asynchronous Reset
			HEXO, HEX1, HEX2, HEX3: OUT std_logic_vector (6 downto 0) -- 7-segment displays
			);
end n_bit_counter;

architecture arch of n_bit_counter is

-- defining the decoder component
	component hex_to_seg is
		port (hex: in std_logic_vector (3 downto 0);
			seg: out std_logic_vector(6 downto 0));
	end component;

-- defining the counter component
	component n_bit_counter_test is
		port (cnt_out: OUT std_logic_vector (N-1 downto 0); 
			RST_n, EN, CLK, UDn, CLEAR: in std_logic);
	end component;

-- signal for the counter output
signal count_out: std_logic_vector (N-1 downto 0);

	begin
	CNT_16bit: n_bit_counter_test
	port map (cnt_out => count_out, RST_n => SW (0), CLK => KEYO, EN => SW(2), UDn => SW(3), CLEAR => SW(1)); 
	HEXO_t: hex_to_seg
	port map(hex => count_out (N-1 downto N-4), seg => HEXO); --First 4 MSB shown in display 0
	HEX1_t: hex_to_seg
	port map (hex => count_out (N-5 downto N-8), seg => HEX1);
	HEX2_t: hex_to_seg
	port map(hex => count_out (N-9 downto N-12), seg => HEX2);
	HEX3_t: hex_to_seg
	port map(hex => count_out (N-13 downto 0), seg => HEX3); --The 4 LSB shown in the last display
end arch;