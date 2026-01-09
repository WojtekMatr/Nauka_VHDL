entity T02WaitForTS is
end entity;

architecture sim of T02WaitForTS is
begin

		process is
		begin
		
			report "Peekaboo!";
			
			wait for 10 ps;
			


				-- The process will loop back 
		end process;
		
end architecture;