library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA_Controller_tb is 
end VGA_Controller_tb;

architecture beh of VGA_Controller_tb is

signal CLOCK_50 : std_logic;
signal KEY : std_logic_vector(0 downto 0);
signal VGA_CLK : std_logic;
signal VGA_HS,VGA_VS,VGA_BLANK_N,VGA_SYNC_N : std_logic;
signal VGA_R,VGA_G,VGA_B: std_logic_vector(7 downto 0);

component VGA_Controller
	port( 
			CLOCK_50 : in std_logic;
			KEY : in std_logic_vector(0 downto 0);
			VGA_CLK : out std_logic;
			VGA_HS,VGA_VS,VGA_BLANK_N,VGA_SYNC_N : out std_logic;
			VGA_R,VGA_G,VGA_B: out std_logic_vector(7 downto 0));		
end component;

begin
UnitUnderTesting: VGA_Controller port map
(CLOCK_50, KEY, VGA_CLK, VGA_HS,VGA_VS,VGA_BLANK_N,VGA_SYNC_N,VGA_R,VGA_G,VGA_B);

--------
clock: Process     -- clock generation
 begin
  if (CLOCK_50='U') then
   CLOCK_50<='0';
  else
   CLOCK_50<=not(CLOCK_50);
  end if;
  wait for 20 ns;
 end process;

reset_gen: process      -- async reset
begin 
  KEY(0) <= '0';
  wait for 30 ns;
  KEY(0) <= '1';
  wait;
end process reset_gen;
-----------


end beh;