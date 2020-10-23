
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RE_DFF_ARH is
 Port (
    Q, notQ : out std_logic;
    CLK, SyncReset, D : in std_logic
 );
end RE_DFF_ARH;


architecture Behavioral of RE_DFF_ARH is
    
begin

    process(CLK,SyncReset)
    begin 
        if(SyncReset='1') then 
            Q <= '0';
        elsif (rising_edge(CLK)) then
            Q <= D;
            notQ <= not D;
        end if;
        
    end process;

end Behavioral;
