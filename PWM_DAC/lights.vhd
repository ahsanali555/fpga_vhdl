-- Implements a simple Nios II system for the DE-series board.
-- Inputs: SW7-0 are parallel port inputs to the Nios II system
-- CLOCK_50 is the system clock
-- KEY0 is the active-low system reset
-- Outputs: LEDR7-0 are parallel port outputs from the Nios II system

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY lights IS
PORT (
CLOCK_50 : IN STD_LOGIC;
KEY : IN STD_LOGIC_VECTOR (0 DOWNTO 0);
HEX1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
HEX2 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
--frequency : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
LEDR : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
DRAM_DQ                          : inout std_logic_vector (15 downto 0);
DRAM_ADDR                        : out   std_logic_vector (12 downto 0);
DRAM_BA                          : out   std_logic_vector (1 downto 0);
DRAM_CAS_N, DRAM_RAS_N, DRAM_CLK : out   std_logic;
DRAM_CKE, DRAM_CS_N, DRAM_WE_N   : out   std_logic;
DRAM_UDQM, DRAM_LDQM             : out   std_logic
);
END lights;
 
ARCHITECTURE lights_rtl OF lights IS

signal frequency : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal ppm_out : std_logic;
signal pwm_out : std_logic;
signal hex_1_sig : STD_LOGIC_VECTOR (7 DOWNTO 0);
signal hex_2_sig : STD_LOGIC_VECTOR (7 DOWNTO 0);

----------------------------------------

component nios_system is
	port (
			clk_clk          : in    std_logic                     := 'X';             -- clk
			hex1_export      : out   std_logic_vector(7 downto 0);                     -- export
			hex2_export      : out   std_logic_vector(7 downto 0);                     -- export
			reset_reset      : in    std_logic                     := 'X';             -- reset
			sdram_clk_clk    : out   std_logic;                                        -- clk
			sdram_wire_addr  : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n : out   std_logic;                                        -- cas_n
			sdram_wire_cke   : out   std_logic;                                        -- cke
			sdram_wire_cs_n  : out   std_logic;                                        -- cs_n
			sdram_wire_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n : out   std_logic;                                        -- ras_n
			sdram_wire_we_n  : out   std_logic;                                        -- we_n
			frequency_export : out   std_logic_vector(1 downto 0)                      -- export
		);
end component nios_system;



component PPM_DAC is 
	port(
		 clk, rstn : in std_logic;
		 D_in      : in std_logic_vector(7 downto 0);--To be Input
		 ppmout    : out std_logic;
		 freq 	: in STD_LOGIC_VECTOR (1 DOWNTO 0)
		);
end component PPM_DAC;


component PWM_DAC is 
generic( N: integer := 255);--max value of duty cycle
port(
   clk,rstn     : in std_logic;
   D            : in integer;--Duty Cycle value coming from nios and sinus.h file
   pwmout       : out std_logic;
	freq 	: in STD_LOGIC_VECTOR (1 DOWNTO 0));--Logical Signal of PWM
end component PWM_DAC;


----------------------------------------

BEGIN

LEDR <= frequency;
HEX1 <= hex_1_sig;
HEX2 <= hex_2_sig;

NiosII : component nios_system
 port map (
 	clk_clk 				=> CLOCK_50,
 	hex1_export 		=> hex_1_sig(7 DOWNTO 0),
	hex2_export			=> hex_2_sig(7 DOWNTO 0),
	reset_reset       => not KEY(0),
	sdram_clk_clk     => DRAM_CLK,
	sdram_wire_addr   => DRAM_ADDR,
	sdram_wire_ba     => DRAM_BA,
	sdram_wire_cas_n  => DRAM_CAS_N,
	sdram_wire_cke    => DRAM_CKE,
	sdram_wire_cs_n   => DRAM_CS_N,
	sdram_wire_dq     => DRAM_DQ, 
	sdram_wire_dqm(1) => DRAM_UDQM,
	sdram_wire_dqm(0) => DRAM_LDQM,
	sdram_wire_ras_n  => DRAM_RAS_N,
	sdram_wire_we_n   => DRAM_WE_N,
	frequency_export 	=> frequency(1 DOWNTO 0)
);

PPM : component PPM_DAC
	port map(
		 clk 		=> CLOCK_50,
		 rstn 	=> not KEY(0),
		 D_in    => hex_1_sig(7 DOWNTO 0),
		 ppmout  => ppm_out,
		 freq 	=> frequency(1 DOWNTO 0)
);

PWM : component PWM_DAC
	port map(
		 clk 		=> CLOCK_50,
		 rstn 	=> not KEY(0),
		 D    	=> hex_2_sig(7 DOWNTO 0),
		 pwmout  => pwm_out,
		 freq 	=> frequency(1 DOWNTO 0)
);

----------------------------------------


END lights_rtl; 