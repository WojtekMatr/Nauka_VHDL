entity T05_WhileLoopTS is
end entity;

architecture sim of T05_WhileLoopTS is
begin

		process is
		variable i : integer := 1;
		begin
		
			while i<10 loop
				report "i-" & integer'image(i);
				i := i +1;
			end loop;
			wait;

				-- The process will loop back 
		end process;
		
end architecture;