
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RE_DFF_SR is
    port(
    Q, notQ : out std_logic;
    CLK, D, SyncReset : in std_logic
    );
end RE_DFF_SR;

architecture Behavioral of RE_DFF_SR is

begin

    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if (SyncReset = '1') then
                Q <= '0';
            else
                Q <= D;
            end if;
        end if;    
    
    end process;

end Behavioral;
