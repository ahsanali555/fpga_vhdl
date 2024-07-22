LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
--use work.Conversions.all;

ENTITY programmable_timer IS
	PORT (CLOCK_50: IN STD_LOGIC; --clock of 50 MHz CLOCK_50
		SW: IN std_logic_vector(2 downto 0);
		KEY : IN STD_LOGIC_VECTOR (3 downto 0); --asynchronous RESET
		HEX0, HEX1, HEX2: OUT std_logic_vector (6 downto 0); -- 7-segment displays
		LEDR: OUT std_logic_vector(7 downto 0) --debugging LEDs
	);
END programmable_timer;

ARCHITECTURE BEHAVIOR OF programmable_timer is
 
SIGNAL counter_value: std_logic_vector (34 downto 0) := (OTHERS => '0') ;
--SIGNAL seconds_counter: integer range 0 to 21000000000:= 0;  -- Counters value for 7min at 50MHz
SIGNAL seconds_counter: integer range 0 to 420:= 0;  -- Counters value for 7min or 420sec
SIGNAL ticks: integer range 0 to 50000000:= 0;  -- 1 second counter
SIGNAL timer_enabled: boolean ;

SIGNAL mins: integer range 0 to 7:= 0;  
SIGNAL secs_tens: integer range 0 to 5:= 0;
SIGNAL secs_ones: integer range 0 to 9:= 0;

SIGNAL int2hex_mins: std_logic_vector(3 downto 0) := (others => '0'); -- store hex equivalent of 0-7
SIGNAL int2hex_secs_tens: std_logic_vector(3 downto 0) := (others => '0'); -- store hex equivalent of 0-5
SIGNAL int2hex_secs_ones: std_logic_vector(3 downto 0) := (others => '0'); -- store hex equivalent of 0-9

--component for hex 2 seg representation
component hex_to_seg
port(hex: in std_logic_vector (3 downto 0); 
		seg: out std_logic_vector (6 downto 0));
end component;

BEGIN
	PROCESS (CLOCK_50, KEY)
	BEGIN
		IF (KEY(0)='1') THEN -- reset
			seconds_counter <= 0;
			timer_enabled <= false;
			--counter_value <= "00000000000000000000000000000000000"; 		
		ELSIF (KEY(1)='1') THEN
				IF (SW="111") THEN
					seconds_counter <= 420;
					--seconds_counter <= 21000000000;
					--counter_value <= "10011100011101100101001001000000000";
					--Value for 7min or 420s or 2.1e10 cycles
				ELSIF (SW="110") THEN
					seconds_counter <= 360;
					--seconds_counter <= 18000000000;
					--counter_value <= "10000110000111000100011010000000000"; 
					--Value for 6min or 360s or 1.8e10 cycles
				ELSIF (SW="101") THEN
					seconds_counter <= 300;
					--seconds_counter <= 15000000000;
					--counter_value <= "01101111110000100011101011000000000"; 
					--Value for 5min or 300s or 1.5e10 cycles
				ELSIF (SW="100") THEN
					seconds_counter <= 240;
					--seconds_counter <= 12000000000;
					--counter_value <= "01011001011010000010111100000000000"; 
					--Value for 4min or 240s or 1.2e10 cycles
				ELSIF (SW="011") THEN
					seconds_counter <= 180;
					--seconds_counter <= 9000000000;
					--counter_value <= "01000011000011100010001101000000000"; 
					--Value for 3min or 180s or 0.9e10 cycles
				ELSIF (SW="010") THEN
					seconds_counter <= 120;
					--seconds_counter <= 6000000000;
					--counter_value <= "00101100101101000001011110000000000"; 
					--Value for 2min or 120s or 0.6e10 cycles
				ELSIF (SW="001") THEN
					seconds_counter <= 60;
					--seconds_counter <= 3000000000;
					--counter_value <= "00010110010110100000101111000000000";
					--Value for 1min or 60s or 0.3e10 cycles
				ELSIF (SW="000") THEN
					seconds_counter <= 0;
					--seconds_counter <= 0;
					--counter_value <= "00000000000000000000000000000000000"; 
					--Value for 0min or 0s or 0e10 cycles
				END IF;
		--END IF;
		
		ELSIF (KEY(2)='1') THEN
			timer_enabled <= true;
		ELSIF (rising_edge(CLOCK_50)) THEN
			ticks <= ticks + 1;
			IF (ticks = 50000000) THEN
				ticks <= 0;
				IF (seconds_counter > 0) THEN
					seconds_counter <= seconds_counter - 1;
					
					mins <= seconds_counter/60;
					secs_tens <= (seconds_counter mod 60)/10;
					secs_ones <= (seconds_counter mod 60) mod 10;
					
					int2hex_mins <= std_logic_vector(to_unsigned(mins, int2hex_mins'length));
					int2hex_secs_tens <= std_logic_vector(to_unsigned(secs_tens, int2hex_secs_tens'length));
					int2hex_secs_ones <= std_logic_vector(to_unsigned(secs_ones, int2hex_secs_ones'length));
				END IF;
			END IF;
		END IF;
		
	END PROCESS;
	mins_hex_to_seg: hex_to_seg port map (hex => int2hex_mins(3 downto 0), seg => HEX2);
	secs_tens_hex_to_seg: hex_to_seg port map (hex => int2hex_secs_tens(3 downto 0), seg => HEX1);
	secs_ones_hex_to_seg: hex_to_seg port map (hex => int2hex_secs_ones(3 downto 0), seg => HEX0);
END BEHAVIOR;
