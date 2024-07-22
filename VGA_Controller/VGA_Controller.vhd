library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA_Controller is
	port( 
			CLOCK_50 : in std_logic;
			KEY : in std_logic_vector(0 downto 0);
			VGA_CLK : out std_logic;
			VGA_HS,VGA_VS,VGA_BLANK_N,VGA_SYNC_N : out std_logic;
			VGA_R,VGA_G,VGA_B: out std_logic_vector(7 downto 0));		
end VGA_Controller;

architecture beh of VGA_Controller is
component mypLL IS
  PORT ( 	refclk : in std_logic := '0'; -- refclk.clk
				rst : in std_logic := '0'; -- reset.reset
				outclk_0 : out std_logic; -- outclk0.clk
				outclk_1 : out std_logic; -- outclk1.clk
				locked : out std_logic ); -- locked.export);
end component;
  
  
signal clkNK, rst, outlocked, realreset : std_logic;
signal CLOCK_25 : std_logic :='0';
 
signal hPos : integer := 0;
signal VPos : integer := 0;
signal videoOn : std_logic :='0';

constant HD : integer := 639;
constant HFP : integer := 16;
constant HBP : integer := 48;
constant HSP : integer := 96;

constant VD : integer := 479;
constant VFP : integer := 10;
constant VBP : integer := 33;
constant VSP : integer := 2;


begin
  rst <= NOT KEY(0);
  CLK0 : mypLL PORT MAP (CLOCK_50,rst,clkNK, clock_25,outlocked);
  realreset <= KEY(0) AND outlocked;
  VGA_BLANK_N <='1';
  VGA_SYNC_N <= '1';
  VGA_CLK <= clock_25;
  
  
Horizontal_position_counter:process (CLOCK_25,realreset,hPos)
begin
	if (realreset='0') then
		hPos <= 0;
		elsif rising_edge(CLOCK_25) then
			if (hPos=(HD+HFP+HBP+HSP)) then
			hPos <= 0;
			else
			 hpos <= hpos + 1;
			end if;
	end if;
end process;


Vertical_position_counter:process (CLOCK_25,realreset,hPos)
begin
	if (realreset='0') then
	vPos <= 0;
	elsif rising_edge(CLOCK_25) then
		if (hPos=(HD+HFP+HBP+HSP)) then
			if (vPos=(VD+VFP+VBP+VSP)) then
				vPos <= 0;
			else
				vpos <= vpos + 1;
			end if;
		end if;
	end if;
end process;


Horizontal_synchronization:process (CLOCK_25,realreset,hPos)
begin
	if (realreset='0') then
		VGA_HS <= '0';
	elsif rising_edge(CLOCK_25) then
		if (hPos<=(HD+HFP) or hPos > (HD+HFP+HSP)) then
				 VGA_HS <= '1';
		else
				VGA_HS <= '0';
		end if;
	end if;
end process;


Vertical_synchronization:process (CLOCK_25,realreset,vPos)
begin
	if (realreset='0') then
		VGA_VS <= '0';
	elsif rising_edge(CLOCK_25) then
		if (vPos<=(VD+VFP) or vPos > (VD+VFP+VSP)) then
				 VGA_VS <= '1';
		else
				VGA_VS <= '0';
		end if;
	end if;
end process;


video_on:process (CLOCK_25,realreset,hPos,vPos)
begin
	if (realreset='0') then
		videoOn <= '0';
	elsif rising_edge(CLOCK_25) then
		if (hpos<= HD and vPos <= VD) then
				 videoOn <= '1';
		else
				 videoOn <= '0';
		end if;
	end if;
end process;


draw:process (CLOCK_25,realreset,hPos,vPos,videoOn)
begin
	if (realreset='0') then
		VGA_R <= (OTHERS => '0');
		VGA_G <= (OTHERS => '0');
		VGA_B <= (OTHERS => '0');
	elsif rising_edge(CLOCK_25) then
		if (videoOn = '1') then
			if((hpos > 0 and hpos < 320) and (vpos > 0 and vpos < 240)) then
					VGA_R <= (OTHERS => '1');
					VGA_G <= (OTHERS => '0');
					VGA_B <= (OTHERS => '0');
			elsif((hpos > 320 and hpos < 640) and (vpos > 0 and vpos < 240))  then
					VGA_R <= (OTHERS => '0');
					VGA_G <= (OTHERS => '1');
					VGA_B <= (OTHERS => '0');
			elsif((hpos > 0 and hpos < 320) and (vpos > 240 and vpos < 480))  then
					VGA_R <= (OTHERS => '0');
					VGA_G <= (OTHERS => '0');
					VGA_B <= (OTHERS => '1');
			else 
					VGA_R <= (OTHERS => '1');
					VGA_G <= (OTHERS => '1');
					VGA_B <= (OTHERS => '1');
			end if;
		else
					VGA_R <= (OTHERS => '0');
					VGA_G <= (OTHERS => '0');
					VGA_B <= (OTHERS => '0');
		end if;
	end if;
end process;
end beh;