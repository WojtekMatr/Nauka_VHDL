entity T04_ForLoopTB is
end entity;

architecture sim of T04_ForLoopTB is
begin

		process is
		begin
		
			for i in 1 to 10 loop
				report "i-" & integer'image(i);
			end loop;
			wait for 10 ps;
				-- The process will loop back 
		end process;
		
end architecture;