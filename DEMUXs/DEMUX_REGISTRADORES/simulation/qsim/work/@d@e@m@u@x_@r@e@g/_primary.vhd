library verilog;
use verilog.vl_types.all;
entity DEMUX_REG is
    port(
        IN_REG          : in     vl_logic_vector(7 downto 0);
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        enable          : in     vl_logic;
        REG_ADD         : out    vl_logic_vector(7 downto 0);
        REG_SUB         : out    vl_logic_vector(7 downto 0);
        REG_AND         : out    vl_logic_vector(7 downto 0);
        REG_OR          : out    vl_logic_vector(7 downto 0);
        REG_NOT         : out    vl_logic_vector(7 downto 0);
        REG_XOR         : out    vl_logic_vector(7 downto 0);
        REG_CMP         : out    vl_logic_vector(7 downto 0)
    );
end DEMUX_REG;
