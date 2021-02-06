library ieee; 
use ieee.std_logic_1164.all; 

entity DEMUX_SUM is
	port(
		-- Entradas
		
		IN_REG     : in std_logic_vector(7 downto 0);
		S3         : in std_logic;
		enable     : in std_logic;
		
		-- Saídas
		
		REG_ADD : out std_logic_vector(7 downto 0);
		REG_SUB : out std_logic_vector(7 downto 0)
	);
end DEMUX_SUM;

architecture ckt of DEMUX_SUM is

begin
	-- saida '0' (SOMA)
	
	REG_ADD(7) <= enable and (not(s3)) and IN_REG(7);
	REG_ADD(6) <= enable and (not(s3)) and IN_REG(6);
	REG_ADD(5) <= enable and (not(s3)) and IN_REG(5);
	REG_ADD(4) <= enable and (not(s3)) and IN_REG(4);
	REG_ADD(3) <= enable and (not(s3)) and IN_REG(3);
	REG_ADD(2) <= enable and (not(s3)) and IN_REG(2);
	REG_ADD(1) <= enable and (not(s3)) and IN_REG(1);
	REG_ADD(0) <= enable and (not(s3)) and IN_REG(0);
	
	-- saida '1' (SUBTRAÇÃO)
	
	REG_SUB(7) <= enable and ((s3)) and IN_REG(7);
	REG_SUB(6) <= enable and ((s3)) and IN_REG(6);
	REG_SUB(5) <= enable and ((s3)) and IN_REG(5);
	REG_SUB(4) <= enable and ((s3)) and IN_REG(4);
	REG_SUB(3) <= enable and ((s3)) and IN_REG(3);
	REG_SUB(2) <= enable and ((s3)) and IN_REG(2);
	REG_SUB(1) <= enable and ((s3)) and IN_REG(1);
	REG_SUB(0) <= enable and ((s3)) and IN_REG(0);

end ckt;
	
