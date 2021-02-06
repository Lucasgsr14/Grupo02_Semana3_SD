library verilog;
use verilog.vl_types.all;
entity MUX_SUM is
    port(
        REG_ADD         : in     vl_logic_vector(7 downto 0);
        REG_SUB         : in     vl_logic_vector(7 downto 0);
        S3              : in     vl_logic;
        enable          : in     vl_logic;
        OUT_REG         : out    vl_logic_vector(7 downto 0)
    );
end MUX_SUM;
