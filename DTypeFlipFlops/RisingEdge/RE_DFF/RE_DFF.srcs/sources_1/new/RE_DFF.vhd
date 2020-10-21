library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RE_DFF is
    port(
    Q, notQ : out std_logic; 
    CLK, D : in std_logic
    );

end RE_DFF;

architecture Behavioral of RE_DFF is

begin

    process(CLK)
    begin
        
        if(rising_edge(CLK)) then
            Q <= D;
        end if; 
    end process; 
 
end Behavioral;
