library ieee;use ieee.std_logic_1164.all;use ieee.numeric_std.all;
entity MorseEA is
 port (X : in unsigned(5 downto 0):=(others=>'0'); --CDEF
 Y, STOP : out std_logic:='0');
end entity;
architecture behavioral of MorseEA is
signal a,b,c,d,e,f : std_logic:='0';
begin
 f<=X(0); e<=X(1); d<=X(2); c<=X(3); b<=X(4); a<=X(5);
 y <= (e and f) or (not c and not d and f) or (c and d and (e or f)) when (a xor b)='1' 
 else (not c and e) or (f and not c) or (f and e) or (d and c and not e);
 STOP <= a and b and c and f;


end architecture;