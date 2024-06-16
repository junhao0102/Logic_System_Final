library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        iBTN            : in     vl_logic;
        iCLK            : in     vl_logic;
        iRST_N          : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
