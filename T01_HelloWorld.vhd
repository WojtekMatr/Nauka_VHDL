entity T01_HelloWorldTb is
end entity;

architecture sim of T01_HelloWorldTb is
begin

		process is
		begin
		
			report " Hi BRO \n";
			
			wait for 10 ns;
			

				-- The process will loop back 
		end process;
		
end architecture;
