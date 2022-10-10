; ##PAPAGO SHORTCUTS##

#SingleInstance force

; Translate
F1::
    ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\TL_bt.png
    if ErrorLevel = 0
    {
            MouseClick, left, %px%, %py%
    } else {
        MsgBox, 파파고 웹 페이지를 클릭 후 다시 시도해주세요.
    } return

; Languages switch
F2::
    ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\LS_bt.png
    if ErrorLevel = 0
    {
            MouseClick, left, %px%, %py%
    } else {
        MsgBox, 파파고 웹 페이지를 클릭 후 다시 시도해주세요.
    } return

; Retype
F3::
    ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\DL_bt.png
    if ErrorLevel = 0
    {
            MouseClick, left, %px%, %py%
    } else {
        MsgBox, 파파고 웹 페이지를 클릭 후 다시 시도해주세요.
    } return

; Text listening(1)
F6::
    ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\LN_bt.png
    if ErrorLevel = 0
    {
            MouseClick, left, %px%, %py%
    } else {
        ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\LN2_bt.png
        if ErrorLevel = 0
        {
            px := px - 1
            py := py + 41
            MouseClick, left, %px%, %py%
        } else {
            MsgBox, 파파고 웹 페이지를 클릭 후 다시 시도해주세요.
        }
    } return

; Text listening(2)
F7::
    ImageSearch, px, py, 1, 1, A_ScreenWidth, A_ScreenHeight, c:\TL_bt.png
    if ErrorLevel = 0
    {
            px := px + 117
            MouseClick, left, %px%, %py%
    } else {
        MsgBox, 파파고 웹 페이지를 클릭 후 다시 시도해주세요.
    } return

F4::
    MsgBox, 프로그램 종료
    ExitApp