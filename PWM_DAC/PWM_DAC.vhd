library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity PWM_DAC is 
generic( N: integer := 255);--max value of duty cycle
port(
   clk,rstn     : in std_logic;
   D            : in integer;--Duty Cycle value coming from nios and sinus.h file
   pwmout       : out std_logic;
	freq 	: in STD_LOGIC_VECTOR (1 DOWNTO 0));--Logical Signal of PWM
end PWM_DAC;

architecture beh of PWM_DAC is

shared variable Dcount : integer range 0 to 255 := D; 
shared variable Ncount : integer range 0 to 255 := N;
signal freq_clk : std_logic; --clock as per given frequency

component clk_divider is
port(
	 clkin : in std_logic;
	 div : in std_logic_vector(1 downto 0);
	 clkout: out std_logic
	 );
end component clk_divider;



begin--architecture

clk_freq : component clk_divider
 port map (
 	clkin 	=> clk,
 	div 		=> freq(1 DOWNTO 0),
	clkout 	=> freq_clk
);

	process(freq_clk,rstn)
	begin--process
		if(rstn = '0') then
			pwmout <= '0';
			Dcount :=  D;
			ncount := N;
		else
			if(freq_clk'event and freq_clk = '1') then--rising edge 
				 if (ncount = 0) then--reset of counters
					 ncount := N;
					 dcount := D;
				 else if(dcount > 0) then --must send 1 for the duty cycle duration 
					 pwmout <= '1';
					 ncount := ncount - 1; 
					 dcount := dcount - 1; 
				 else if(dcount = 0) then
					 pwmout <='0';
					 ncount := ncount - 1;
				 end if;
			 end if;
				 end if;--ncount check 
			end if;--clock
		end if;--reset
	end process;
end beh;

