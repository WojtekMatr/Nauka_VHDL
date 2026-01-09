entity T03LoopTB is
end entity;

architecture sim of T03LoopTB is
begin

		process is
		begin
		
			loop
				report "Peekaboo!";	
				wait for 10 ps;
			end loop;
			
			report "Goodbye";
			wait;


				-- The process will loop back 
		end process;
		
end architecture;