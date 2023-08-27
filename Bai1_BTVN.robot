*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[TC_01] - Login and verify
    [Documentation]    Login and verify
    [Tags]    bai1_btvn_guru99
    Visit the page    https://demo.guru99.com/test/login.html    chrome
    Input Email    //input[@id='email']    vietphuonghihi@gmail.com
    Input Password    //input[@id='passwd']    ABbc@1234
    Sleep     3s
    Click button Singin    //button[@id='SubmitLogin']
    Screen contains word    Successfully Logged in..
    Sleep     3s
*** Keywords ***
Visit the page    
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Input Email 
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
Input Password 
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
Click button Singin
    [Arguments]    ${sing_in_btn}
    Click Button    ${sing_in_btn}

Screen contains word
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h3[contains(text(), "${text}")]    3s
