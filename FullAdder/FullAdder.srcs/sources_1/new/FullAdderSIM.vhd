library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdderSIM is

end FullAdderSIM;

architecture Behavioral of FullAdderSIM is
    component FullAdder is 
      Port ( A, B, Cin : in std_logic;
             Cout, Sum : out std_logic);
     end component;
     
     signal A, B, Cin, Cout, Sum : std_logic;
begin
    uut : FullAdder port map(A=>A, B=>B, Cin=>Cin, Cout=>Cout, Sum=>Sum);
    stim : process
    begin 
    
        -- First Half
        Cin <= '0';
        
        A <= '0';
        B <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        wait for 10 ns;
               
        A <= '1';
        B <= '0';
        wait for 10 ns;
        
        A <= '1';
        B <= '1';
        wait for 10 ns;
        
        -- Second Half
        Cin <= '1';
 
        A <= '0';
        B <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        wait for 10 ns;
           
        A <= '1';
        B <= '0';
        wait for 10 ns;
        
        A <= '1';
        B <= '1';   
        wait for 10 ns;
        
        wait for 10 ns;
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;
        
    end process;
end Behavioral;
