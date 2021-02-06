library verilog;
use verilog.vl_types.all;
entity DEMUX_SUM is
    port(
        IN_REG          : in     vl_logic_vector(7 downto 0);
        S3              : in     vl_logic;
        enable          : in     vl_logic;
        REG_ADD         : out    vl_logic_vector(7 downto 0);
        REG_SUB         : out    vl_logic_vector(7 downto 0)
    );
end DEMUX_SUM;
