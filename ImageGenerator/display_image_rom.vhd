library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity display_image_rom is
	port( 
			CLOCK_50 : in std_logic;
			
			KEY : in std_logic_vector(0 downto 0);
			
			VGA_CLK : out std_logic ;
			
			VGA_HS,VGA_VS,VGA_SYNC_N,VGA_BLANK_N : out std_logic;
		
			VGA_R,VGA_G,VGA_B: out std_logic_vector(7 downto 0));
end display_image_rom;


architecture beh of display_image_rom is

COMPONENT img_rom_r IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

COMPONENT img_rom_g IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

COMPONENT img_rom_b IS
    PORT
    (
        aclr        : IN STD_LOGIC  := '0';
        address     : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        rden        : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;


signal CLOCK_25 : std_logic := '0';

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




SIGNAL qr, qg, qb : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL rdenveri : STD_LOGIC;
-- SIGNAL addressgen : STD_LOGIC_VECTOR (14 DOWNTO 0);
SIGNAL cnt : INTEGER;


begin

  ROM0:  img_rom_r PORT MAP (not KEY(0),std_logic_vector(to_unsigned(cnt,8)),CLOCK_25,rdenveri,qr);
  ROM1:  img_rom_g PORT MAP (not KEY(0),std_logic_vector(to_unsigned(cnt,8)),CLOCK_25,rdenveri,qg);
  ROM2:  img_rom_b PORT MAP (not KEY(0),std_logic_vector(to_unsigned(cnt,8)),CLOCK_25,rdenveri,qb);






VGA_SYNC_N <='1';
VGA_BLANK_N <= '1';
rdenveri <= '1';

clockdiv:process (CLOCK_50)

	begin

		if rising_edge(CLOCK_50) then

			CLOCK_25 <= not CLOCK_25;

		end if;

end process;

VGA_CLK <= CLOCK_25 ;


counter:process (CLOCK_25,KEY(0))

	begin

		if (KEY(0) = '0') then

			cnt <= 0;

		elsif rising_edge(CLOCK_25) then
		
			

			if (cnt > 25344) then

				cnt <= 0;

			else 

				cnt <= cnt + 1;

			end if;


		end if;

end process;













Horizontal_position_counter:process (CLOCK_25,KEY(0))

begin

if (KEY(0)='0') then

hPos <= 0;

elsif rising_edge(CLOCK_25) then

if (hPos=(HD+HFP+HBP+HSP)) then
hPos <= 0;

else
 hpos <= hpos + 1;
 
end if;

end if;

end process;


Vertical_position_counter:process (CLOCK_25,KEY(0),hPos)

begin

if (KEY(0)='0') then

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


Horizontal_synchronization:process (CLOCK_25,KEY(0),hPos)

begin

if (KEY(0)='0') then

	VGA_HS <= '0';

elsif rising_edge(CLOCK_25) then

	if (hPos<=(HD+HFP) or hPos > (HD+HFP+HSP)) then
			
			 VGA_HS <= '1';

	else
			VGA_HS <= '0';
 
	end if;

end if;

end process;


Vertical_synchronization:process (CLOCK_25,KEY(0),vPos)

begin

if (KEY(0)='0') then

	VGA_VS <= '0';

elsif rising_edge(CLOCK_25) then

	if (vPos<=(VD+VFP) or vPos > (VD+VFP+VSP)) then
			
			 VGA_VS <= '1';

	else
			VGA_VS <= '0';
 
	end if;

end if;

end process;


video_on:process (CLOCK_25,KEY(0),hPos,vPos)

begin

if (KEY(0)='0') then

	videoOn <= '0';

elsif rising_edge(CLOCK_25) then

	if (hpos<= HD and vPos <= VD) then
			
			 videoOn <= '1';

	else
			 videoOn <= '0';
 
	end if;

end if;

end process;


draw:process (CLOCK_25,KEY(0),hPos,vPos,videoOn)

begin

if (KEY(0)='0') then

	VGA_R <= (OTHERS => '0');
	VGA_G <= (OTHERS => '0');
	VGA_B <= (OTHERS => '0');

elsif rising_edge(CLOCK_25) then

	if (videoOn = '1') then
	
		if(hpos < 176 and vpos < 144  ) then
			
			
			VGA_R <= qr;
			VGA_G  <= qg;
			VGA_B <= qb;

		
		 
		 else		
				
			 	VGA_R <= (OTHERS => '0');
				VGA_G <= (OTHERS => '0');
				VGA_B <= (OTHERS => '0');
				
		 end if;

	else		
				
			 	VGA_R <= (OTHERS => '0');
				VGA_G <= (OTHERS => '0');
				VGA_B <= (OTHERS => '0');
 
	end if;

end if;

end process;


end beh;


