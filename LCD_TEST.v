module LCD_TEST (
    // Host Side
    input iCLK,
    input iRST_N,
    input iBTN,         // 暫停按鈕
    input iBTN_START_STOP, // 新增開始/結束按鈕
    // LCD Side
    output [7:0] LCD_DATA,
    output LCD_RW,
    output LCD_EN,
    output LCD_RS,
    output LCD_ON
);
    // Internal Wires/Registers
    reg [5:0] LUT_INDEX;
    reg [8:0] LUT_DATA;
    reg [5:0] mLCD_ST;
    reg [12:0] mDLY; // 減少計數範圍以加快速度
    reg mLCD_Start;
    reg [7:0] mLCD_DATA;
    reg mLCD_RS;
    wire mLCD_Done;
    
    // Additional registers for animation
    reg [4:0] anim_index;
    reg direction;
    reg pause;  // 暫停控制變數
    reg running; // 新增運行控制變數
    reg success_flag; // 成功標誌
    reg show_message; // 顯示訊息標誌
    reg btn_pressed;  // 記錄暫停按鈕按下狀態
    reg start_stop_pressed; // 記錄開始/結束按鈕按下狀態
    reg [7:0] success_score; // 成功分數
    reg [7:0] fail_score; // 失敗分數

    assign LCD_ON = running; // LCD 只有在運行狀態下才打開

    parameter LCD_INTIAL = 0;
    parameter LCD_LINE1 = 5;
    parameter LCD_CH_LINE = LCD_LINE1 + 16;
    parameter LCD_LINE2 = LCD_LINE1 + 16 + 1;
    parameter LUT_SIZE = LCD_LINE1 + 16 + 16; // 修改 LUT_SIZE 的定義以包含兩行（32 個字符）

    always @(posedge iCLK or negedge iRST_N) begin
        if (!iRST_N) begin
            LUT_INDEX <= 0;
            mLCD_ST <= 0;
            mDLY <= 0;
            mLCD_Start <= 0;
            mLCD_DATA <= 0;
            mLCD_RS <= 0;
            anim_index <= 0;
            direction <= 0;
            pause <= 1;  // 初始化暫停控制變數為1
            running <= 0; // 初始化運行控制變數為0
            success_flag <= 0; // 初始化成功標誌
            show_message <= 0; // 初始化顯示訊息標誌
            btn_pressed <= 0;  // 初始化暫停按鈕按下狀態
            start_stop_pressed <= 0; // 初始化開始/結束按鈕按下狀態
            success_score <= 0; // 初始化成功分數
            fail_score <= 0; // 初始化失敗分數
        end else begin
            // 開始/結束按鈕邏輯
            if (iBTN_START_STOP == 0 && !start_stop_pressed) begin
                running <= ~running;  // 切換運行狀態
                start_stop_pressed <= 1; // 設置按鈕按下狀態
            end else if (iBTN_START_STOP == 1) begin
                start_stop_pressed <= 0; // 重置按鈕按下狀態
            end

            if (running) begin
                if (iBTN == 0 && !btn_pressed) begin // 如果暫停按鈕按下並且之前未按下
                    pause <= ~pause;  // 切換暫停狀態
                    btn_pressed <= 1; // 設置按鈕按下狀態
                    if (!pause) begin // 如果剛剛暫停
                        if (anim_index == 7) begin // 檢查是否口在[]中間
                            success_flag <= 1; // 設置成功標誌
                            success_score <= success_score + 1; // 更新成功分數
                        end else begin
                            success_flag <= 0; // 清除成功標誌
                            fail_score <= fail_score + 1; // 更新失敗分數
                        end
                        show_message <= 1; // 設置顯示訊息標誌
                    end else begin
                        show_message <= 0; // 清除顯示訊息標誌
                    end
                end else if (iBTN == 1) begin
                    btn_pressed <= 0; // 重置按鈕按下狀態
                end

                if (!pause || show_message) begin  // 只有在非暫停狀態或顯示訊息狀態下執行
                    if (mDLY < 13'h1FFF) // 減少計數範圍
                        mDLY <= mDLY + 1;
                    else begin
                        mDLY <= 0;
                        if (LUT_INDEX < LUT_SIZE) begin
                            case (mLCD_ST)
                                0: begin
                                    mLCD_DATA <= LUT_DATA[7:0];
                                    mLCD_RS <= LUT_DATA[8];
                                    mLCD_Start <= 1;
                                    mLCD_ST <= 1;
                                end
                                1: begin
                                    if (mLCD_Done) begin
                                        mLCD_Start <= 0;
                                        mLCD_ST <= 2;                    
                                    end
                                end
                                2: begin
                                    mLCD_ST <= 3;
                                end
                                3: begin
                                    LUT_INDEX <= LUT_INDEX + 1;
                                    mLCD_ST <= 0;
                                end
                            endcase
                        end else begin
                            LUT_INDEX <= 0;
                            if (!show_message) begin // 只有在不顯示訊息時執行動畫更新
                                if (direction == 0) begin
                                    if (anim_index < 13)  
                                        anim_index <= anim_index + 1;
                                    else
                                        direction <= 1;
                                end else begin
                                    if (anim_index > 0)
                                        anim_index <= anim_index - 1;
                                    else
                                        direction <= 0;
                                end
                            end
                        end
                    end
                end
            end else begin
                // 當不運行時，清除 LCD 顯示
                LUT_INDEX <= 0;
                mLCD_ST <= 0;
                mLCD_Start <= 0;
                mLCD_DATA <= 0;
                mLCD_RS <= 0;
            end
        end
    end

    always @(*) begin
        if (!running) begin
            // 不顯示任何內容
            LUT_DATA <= 9'h120; // ' ' (space)
        end else if (success_score > 9 || fail_score > 9) begin
            // 顯示 Restart 訊息
            case (LUT_INDEX)
					 LCD_LINE1+0: LUT_DATA <= 9'h080; // Set DDRAM address for the first line (0x80)
                LCD_LINE1+1: LUT_DATA <= 9'h152; // 'R'
                LCD_LINE1+2: LUT_DATA <= 9'h165; // 'e'
                LCD_LINE1+3: LUT_DATA <= 9'h173; // 's'
                LCD_LINE1+4: LUT_DATA <= 9'h174; // 't'
                LCD_LINE1+5: LUT_DATA <= 9'h161; // 'a'
                LCD_LINE1+6: LUT_DATA <= 9'h172; // 'r'
                LCD_LINE1+7: LUT_DATA <= 9'h174; // 't'
                LCD_LINE1+8: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+9: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+10: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+11: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+12: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+13: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+14: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_LINE1+15: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+0: LUT_DATA <= 9'h0C0; // Set DDRAM address for the second line (0xC0)
                LCD_CH_LINE+1: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+2: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+3: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+4: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+5: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+6: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+7: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+8: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+9: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+10: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+11: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+12: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+13: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+14: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+15: LUT_DATA <= 9'h120; // ' ' (space)
                default: LUT_DATA <= 9'h120; // ' ' (space)
            endcase
        end else if (show_message) begin
            // 顯示成功或失敗訊息和成功分數
            case (LUT_INDEX)
                LCD_CH_LINE+0: LUT_DATA <= 9'h0C0; // Set DDRAM address for the second line (0xC0)
                LCD_CH_LINE+1: LUT_DATA <= (success_flag) ? 9'h153 : 9'h146; // 'S' or 'F'
                LCD_CH_LINE+2: LUT_DATA <= (success_flag) ? 9'h175 : 9'h161; // 'u' or 'a'
                LCD_CH_LINE+3: LUT_DATA <= (success_flag) ? 9'h163 : 9'h169; // 'c' or 'i'
                LCD_CH_LINE+4: LUT_DATA <= (success_flag) ? 9'h163 : 9'h16C; // 'c' or 'l'
                LCD_CH_LINE+5: LUT_DATA <= (success_flag) ? 9'h165 : 9'h120; // 'e' or ' '
                LCD_CH_LINE+6: LUT_DATA <= (success_flag) ? 9'h173 : 9'h120; // 's' or ' '
                LCD_CH_LINE+7: LUT_DATA <= (success_flag) ? 9'h173 : 9'h120; // 's' or ' '
                LCD_CH_LINE+8: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+9: LUT_DATA <= 9'h153; // 'S'
                LCD_CH_LINE+10: LUT_DATA <= 9'h13a; // ':'
                LCD_CH_LINE+11: LUT_DATA <= {4'h3, success_score[3:0] + 8'h30}; // 顯示成功分數
                LCD_CH_LINE+12: LUT_DATA <= 9'h120; // ' ' (space)
                LCD_CH_LINE+13: LUT_DATA <= 9'h146; // 'F'
                LCD_CH_LINE+14: LUT_DATA <= 9'h13a; // ':'
                LCD_CH_LINE+15: LUT_DATA <= {4'h3, fail_score[3:0] + 8'h30}; // 顯示失敗分數
                default: LUT_DATA <= 9'h120; // ' ' (space)
            endcase
        end else begin
            // 正常顯示動畫
            case (LUT_INDEX)
                // Initial
                LCD_INTIAL+0: LUT_DATA <= 9'h038;
                LCD_INTIAL+1: LUT_DATA <= 9'h00C;
                LCD_INTIAL+2: LUT_DATA <= 9'h001;
                LCD_INTIAL+3: LUT_DATA <= 9'h006;
                LCD_INTIAL+4: LUT_DATA <= 9'h080;
                // Line 1
                LCD_LINE1+0: LUT_DATA <= (anim_index == 0) ? 9'h1DB : 9'h120;
                LCD_LINE1+1: LUT_DATA <= (anim_index == 1) ? 9'h1DB : 9'h120;
                LCD_LINE1+2: LUT_DATA <= (anim_index == 2) ? 9'h1DB : 9'h120;
                LCD_LINE1+3: LUT_DATA <= (anim_index == 3) ? 9'h1DB : 9'h120;
                LCD_LINE1+4: LUT_DATA <= (anim_index == 4) ? 9'h1DB : 9'h120;
                LCD_LINE1+5: LUT_DATA <= (anim_index == 5) ? 9'h1DB : 9'h120;
                LCD_LINE1+6: LUT_DATA <= (anim_index == 6) ? 9'h1DB : 9'h120;
                LCD_LINE1+7: LUT_DATA <= 9'h15b; // 固定顯示 '['
                LCD_LINE1+8: LUT_DATA <= (anim_index == 7) ? 9'h1DB : 9'h120;  
                LCD_LINE1+9: LUT_DATA <= 9'h15d; // 固定顯示 ']'
                LCD_LINE1+10: LUT_DATA <= (anim_index == 8) ? 9'h1DB : 9'h120; 
                LCD_LINE1+11: LUT_DATA <= (anim_index == 9) ? 9'h1DB : 9'h120;
                LCD_LINE1+12: LUT_DATA <= (anim_index == 10) ? 9'h1DB : 9'h120;
                LCD_LINE1+13: LUT_DATA <= (anim_index == 11) ? 9'h1DB : 9'h120;
                LCD_LINE1+14: LUT_DATA <= (anim_index == 12) ? 9'h1DB : 9'h120;
                LCD_LINE1+15: LUT_DATA <= (anim_index == 13) ? 9'h1DB : 9'h120;
                default: LUT_DATA <= 9'h120;
            endcase
        end
    end

    LCD_Controller u0 (
        // Host Side
        .iDATA(mLCD_DATA),
        .iRS(mLCD_RS),
        .iStart(mLCD_Start),
        .oDone(mLCD_Done),
        .iCLK(iCLK),
        .iRST_N(iRST_N),
        // LCD Interface
        .LCD_DATA(LCD_DATA),
        .LCD_RW(LCD_RW),
        .LCD_EN(LCD_EN),
        .LCD_RS(LCD_RS)
    );

endmodule
