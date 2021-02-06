library verilog;
use verilog.vl_types.all;
entity DEMUX_SUM_vlg_check_tst is
    port(
        REG_ADD         : in     vl_logic_vector(7 downto 0);
        REG_SUB         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end DEMUX_SUM_vlg_check_tst;
