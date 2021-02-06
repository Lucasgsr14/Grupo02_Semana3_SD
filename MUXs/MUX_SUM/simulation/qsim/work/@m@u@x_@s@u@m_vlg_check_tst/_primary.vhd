library verilog;
use verilog.vl_types.all;
entity MUX_SUM_vlg_check_tst is
    port(
        OUT_REG         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUX_SUM_vlg_check_tst;
