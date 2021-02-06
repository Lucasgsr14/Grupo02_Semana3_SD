library verilog;
use verilog.vl_types.all;
entity DEMUX_REG_vlg_check_tst is
    port(
        REG_ADD         : in     vl_logic_vector(7 downto 0);
        REG_AND         : in     vl_logic_vector(7 downto 0);
        REG_CMP         : in     vl_logic_vector(7 downto 0);
        REG_NOT         : in     vl_logic_vector(7 downto 0);
        REG_OR          : in     vl_logic_vector(7 downto 0);
        REG_SUB         : in     vl_logic_vector(7 downto 0);
        REG_XOR         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end DEMUX_REG_vlg_check_tst;
