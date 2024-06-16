library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        LCD_RW          : out    vl_logic;
        iCLK            : in     vl_logic;
        iRST_N          : in     vl_logic;
        iBTN            : in     vl_logic;
        start           : in     vl_logic;
        LCD_EN          : out    vl_logic;
        LCD_ON          : out    vl_logic;
        LCD_RS          : out    vl_logic;
        LCD_DATA        : out    vl_logic_vector(7 downto 0)
    );
end Block1;
