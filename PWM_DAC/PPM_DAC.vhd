library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_std_unsigned.all;
	
entity PPM_DAC is 
	port(
		 clk, rstn : in std_logic;
		 D_in         : in std_logic_vector(7 downto 0);--To be Input
		 ppmout    : out std_logic;
		freq 	: in STD_LOGIC_VECTOR (1 DOWNTO 0));
end PPM_DAC;


architecture beh of PPM_DAC is
	constant b : integer := 1;--Additional Bits
	constant n : integer := 8;--Normal Size of Incoming Data
	--constant conc : std_logic_vector(0 downto 0) := "0";
	signal acc_in : std_logic_vector(n+b-1 downto 0); --N+1 Size Word
	signal acc_out : std_logic_vector(n+b-1 downto 0);
	signal adder : std_logic_vector(n+b-1 downto 0);
	signal feedback : std_logic_vector(7 downto 0);
	signal msb : std_logic; --MSB of acc_out
	signal freq_clk : std_logic; --clock as per given frequency
	
	
	component clk_divider is
	port(
		 clkin : in std_logic;
		 div : in std_logic_vector(1 downto 0);
		 clkout: out std_logic
		 );
	end component clk_divider;

	begin
	
		clk_freq : component clk_divider
	 port map (
		clkin 	=> clk,
		div 		=> freq(1 DOWNTO 0),
		clkout 	=> freq_clk
	);
	
	
	process(freq_clk,rstn) 
	begin--process
	  if(rstn = '0') then
		 ppmout <= '0';
		else
		 if(freq_clk'event and freq_clk = '1') then
			--adder <= D_in - feedback;
			adder <= std_logic_vector(unsigned(D_in(7 downto 0)) - unsigned(feedback(7 downto 0)));
			acc_in <= std_logic_vector(unsigned(adder(n+b-1 downto 0)) - unsigned(acc_out(n+b-1 downto 0)));
			 acc_out <= acc_in; 
			 msb <= acc_out(n+b-1);--taking the msb 
			 ppmout <= msb;
		 end if;--clock
	  end if;--reset check
	end process;

	with msb select 
	feedback <= "10000000" when '1', -- equal to -128 when signed;
	  "01111111" when others;-- equal to +127
end beh;

