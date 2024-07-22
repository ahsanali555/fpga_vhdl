
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity n_bit_counter_test is
	generic (N: integer := 16); --Number of bits of the counter 
	port (cnt_out: OUT std_logic_vector (N-1 downto 0);
	RST_n, EN, CLK, UDn, CLEAR: in std_logic); --UDN-0 up, UDn =1 down);
end n_bit_counter_test;

architecture behaviour of n_bit_counter_test is
	begin
	process (CLK, RST_n)
		variable Q: integer range 0 to 2**N-1; -- 16 bits correspond to 65536 integers 
		begin
		if RST_n= '0' then --check the asynchronous reset
			Q := 0; -- Reset the counter to 0
			elsif (rising_edge(CLK)) then --when having a rising edge of the clock
			if (CLEAR= '1') then
				Q := 0;
				elsif (CLEAR = '0') then
				if EN= '1' then --If the synchronous enable is 1 then begin counting 
					if UDn = '0' then -- Increasing direction of counting
						if Q<2**N-1 then
							Q := Q + 1; -- Increment the counter
						else
							Q := 0; -- Taking care of the overflow problem 
						end if;
					elsif UDn = '1' then -- Decreasing direction of counting
							if Q>0 then
								Q := Q-1; -- Decrement the counter
							else
								Q := 2**N-1;--when it reaches 0, the next digit should be 2AN 1
							end if; 
					end if;
				end if;
			end if;
		end if;
	cnt_out <= std_logic_vector (to_unsigned (Q, N)); --Store the counter output to cnt_out 
end process;
end behaviour;