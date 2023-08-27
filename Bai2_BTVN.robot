*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[TC_01] - Mua nồi chiên Tiki
    [Documentation]    Mua nồi chiên Tiki
    [Tags]    bai2_btvn_tiki
    Truy cập vào trang    https://tiki.vn/    chrome
    Nhập vào ô tìm kiếm    //input[@data-view-id='main_search_form_input']    nồi chiên
    Sleep    2s
    Chọn gợi ý 'nồi chiên không dầu'     //div[@class="style__StyledSuggestion-sc-1y3xjh6-0 gyELMq"]//a[@data-view-index="0"]
    Sleep    2s
    Nhấn vào sản phẩm thứ 4 ở ds kết quả    //div[@data-view-id="product_list_container"]//div[4]
    Ấn Button Chọn mua    //button[contains(text(),'Chọn mua')]
    Sleep    5s   
    Xác nhận popup chứa text     Xin chào
*** Keywords ***
Truy cập vào trang     
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Chọn gợi ý 'nồi chiên không dầu'
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}
Nhấn vào sản phẩm thứ 4 ở ds kết quả
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}
Ấn Button Chọn mua 
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}   
Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[contains(text(), "${text}")]    7s
