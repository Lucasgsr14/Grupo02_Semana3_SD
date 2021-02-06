library verilog;
use verilog.vl_types.all;
entity DEMUX_SUM_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        IN_REG          : in     vl_logic_vector(7 downto 0);
        S3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DEMUX_SUM_vlg_sample_tst;
