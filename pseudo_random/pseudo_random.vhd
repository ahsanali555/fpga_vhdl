LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY pseudo_random IS
	PORT (clk: IN STD_LOGIC; --clock of 50 MHz CLOCK_50
	-- 100 million cycles or 2 seconds
		KEY0: IN STD_LOGIC; --asynchronous RESET 
		LEDR: OUT std_logic_vector(9 downto 0)
	);
END pseudo_random;

ARCHITECTURE BEHAVIOR OF pseudo_random is

SIGNAL temp: std_logic_vector (9 downto 0) := (OTHERS => '0'); 
SIGNAL Q: std_logic_vector (26 downto 0) :=(OTHERS => '0'); -- comparator for count 100 million

BEGIN
	PROCESS (clk, KEY0)
	BEGIN
		IF (KEY0='1') THEN -- reset 
			Q<= (OTHERS => '0'); 
			temp<="1111111111"; --Initialize all flip-flops in LFSR at ‘1’
		ELSIF (rising_edge(clk)) THEN 
			Q <= Q+1;
			IF (Q= "101111101011110000100000000") THEN  --
			-- equivalent binary value for 100 million cycles or 2 seconds
				Q<= (OTHERS => '0');
				IF temp="0000000000" THEN 
					temp<="1111111111"; 
				else
					temp (0)<=temp (1);
					temp (1)<=temp (2); 
					temp (2)<=temp (3);
					temp (3)<=temp (4);
					temp (4)<=temp (5); 
					temp (5)<=temp (6);
					temp (6)<=temp (7); 
					temp (7)<=temp (8) XOR temp(0);
					temp (8)<=temp (9);
					temp (9)<=temp (0);
				END IF; 
		END IF;
	END IF;
	END PROCESS; 
	LEDR<= temp;
END BEHAVIOR;
