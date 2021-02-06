library ieee; 
use ieee.std_logic_1164.all; 

entity DEMUX_REG is
	port(
		-- Entradas
		
		IN_REG     : in std_logic_vector(7 downto 0);
		s0, s1, s2 : in std_logic;
		enable     : in std_logic;
		
		-- Saídas
		
		REG_ADD : out std_logic_vector(7 downto 0);
		REG_SUB : out std_logic_vector(7 downto 0);
		REG_AND : out std_logic_vector(7 downto 0);
		REG_OR  : out std_logic_vector(7 downto 0);
		REG_NOT : out std_logic_vector(7 downto 0);
		REG_XOR : out std_logic_vector(7 downto 0);
		REG_CMP : out std_logic_vector(7 downto 0)
	);
end DEMUX_REG;

architecture ckt of DEMUX_REG is

begin
	-- saida '000' (SOMA)
	
	REG_ADD(7) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(7);
	REG_ADD(6) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(6);
	REG_ADD(5) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(5);
	REG_ADD(4) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(4);
	REG_ADD(3) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(3);
	REG_ADD(2) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(2);
	REG_ADD(1) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(1);
	REG_ADD(0) <= enable and (not(s2) and not(s1) and not(s0)) and IN_REG(0);
	
	-- saida '001' (SUBTRAÇÃO)
	
	REG_SUB(7) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(7);
	REG_SUB(6) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(6);
	REG_SUB(5) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(5);
	REG_SUB(4) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(4);
	REG_SUB(3) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(3);
	REG_SUB(2) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(2);
	REG_SUB(1) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(1);
	REG_SUB(0) <= enable and (not(s2) and not(s1) and (s0)) and IN_REG(0);

	-- saida '010' (AND)
	
	REG_AND(7) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(7);
	REG_AND(6) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(6);
	REG_AND(5) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(5);
	REG_AND(4) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(4);
	REG_AND(3) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(3);
	REG_AND(2) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(2);
	REG_AND(1) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(1);
	REG_AND(0) <= enable and (not(s2) and (s1) and not(s0)) and IN_REG(0);
	
	-- saida '011' (OR)
	
	REG_OR(7) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(7);
	REG_OR(6) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(6);
	REG_OR(5) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(5);
	REG_OR(4) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(4);
	REG_OR(3) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(3);
	REG_OR(2) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(2);
	REG_OR(1) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(1);
	REG_OR(0) <= enable and (not(s2) and (s1) and (s0)) and IN_REG(0);
	
	
	-- saida '100' (NOT)

	REG_NOT(7) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(7);
	REG_NOT(6) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(6);
	REG_NOT(5) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(5);
	REG_NOT(4) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(4);
	REG_NOT(3) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(3);
	REG_NOT(2) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(2);
	REG_NOT(1) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(1);
	REG_NOT(0) <= enable and ((s2) and not(s1) and not(s0)) and IN_REG(0);
	
	-- saida '101' (XOR)
	
	REG_XOR(7) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(7);
	REG_XOR(6) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(6);
	REG_XOR(5) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(5);
	REG_XOR(4) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(4);
	REG_XOR(3) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(3);
	REG_XOR(2) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(2);
	REG_XOR(1) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(1);
	REG_XOR(0) <= enable and ((s2) and not(s1) and (s0)) and IN_REG(0);
	
	-- saida '110' (CMP)
	
	REG_CMP(7) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(7);
	REG_CMP(6) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(6);
	REG_CMP(5) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(5);
	REG_CMP(4) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(4);
	REG_CMP(3) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(3);
	REG_CMP(2) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(2);
	REG_CMP(1) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(1);
	REG_CMP(0) <= enable and ((s2) and (s1) and not(s0)) and IN_REG(0);

end ckt;
	
