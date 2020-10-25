library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FE_DFF is
  Port(  
  Q, notQ : out std_logic;
  CLK, D : in std_logic
  );
end FE_DFF;

architecture Behavioral of FE_DFF is

begin
    process(CLK)
    
    begin
    
        if(falling_edge(CLK)) then
            Q <= D;
        end if;
           
    end process;

end Behavioral;
