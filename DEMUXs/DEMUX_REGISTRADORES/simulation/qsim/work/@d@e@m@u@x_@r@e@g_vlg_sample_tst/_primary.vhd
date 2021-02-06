library verilog;
use verilog.vl_types.all;
entity DEMUX_REG_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        IN_REG          : in     vl_logic_vector(7 downto 0);
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DEMUX_REG_vlg_sample_tst;
