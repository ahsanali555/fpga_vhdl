LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_assign IS
PORT ( SW : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); -- red LEDs
END mux_assign;

ARCHITECTURE Behavior OF mux_assign IS
component multiplexer is
Port(S : IN STD_LOGIC; 
X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end component;
BEGIN
mux: multiplexer port map (SW(8), SW(3 DOWNTO 0), SW(7 DOWNTO 4), LEDR);
END Behavior;