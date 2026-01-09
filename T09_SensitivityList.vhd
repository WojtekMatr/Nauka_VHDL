entity T09_SensitivityList is
end entity;

architecture sim of T09_SensitivityList is

	signal CountUp : integer := 0;
	signal CountDown : integer := 10;
begin

	process is
	begin
		CountUp <= CountUp +1;
		CountDown <= CountDown -1;
		wait for 10 ps;
		
	end process;
	
	process is
	begin 
		wait on CountUp, CountDown;
		--report "Count UP= " & integer'image(CountUp) & ", CountDown= " & integer'image(CountDown);
	end process;
	process is
	begin 
		if CountUp = CountDown then
			report "Process A: Jackpot!";
		end if;
		
		wait on CountUp, CountDown;
		
		
	end process;
	
	process(CountUp, CountDown) is
	begin 
		if CountUp = CountDown then
			report "Process B: Jackpot";
		end if;
	end process;
		
end architecture;