*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[TC_01] - Tìm kiếm MSB trên google
    [Documentation]    Tìm kiếm MSB trên google
    [Tags]    bai2_btvn_google
    Truy cập vào trang    https://www.google.com/    chrome
    Nhập vào ô tìm kiếm    //textarea[@id='APjFqb']    MSB
    Sleep    2s
    Ấn button Tìm trên Google    //div[@jsname="VlcLAe"]//input[@class="gNO89b"]
    Sleep     2s
    Click kết quả tìm kiếm đầu tiên    //div[@class="tF2Cxc"]//h3[@class="LC20lb MBeuO DKV0Md"]
    Sleep    4s
    Đóng popup    //*[@id="fragment-34202-joci"]/div[1]/div[1]/div[1]/span[1]
    Sleep    2s
    Xác nhận popup chứa text    Chọn thẻ phù hợp với bạn
*** Keywords ***
Truy cập vào trang     
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Ấn button Tìm trên Google
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}
Click kết quả tìm kiếm đầu tiên
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}    
Đóng popup
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}
Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //*[contains(text(), "${text}")]    7s