library verilog;
use verilog.vl_types.all;
entity MUX_SUM_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        REG_ADD         : in     vl_logic_vector(7 downto 0);
        REG_SUB         : in     vl_logic_vector(7 downto 0);
        S3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUX_SUM_vlg_sample_tst;
