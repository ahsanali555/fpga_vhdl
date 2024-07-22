LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
PORT ( S : IN STD_LOGIC; 
X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
Y : IN STD_LOGIC_VECTOR(7 DOWNTO 4);
LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); -- red LEDs
END mux;

ARCHITECTURE Behavior OF mux IS
begin
LEDR <= X  when (S ='0') else Y;
END Behavior;