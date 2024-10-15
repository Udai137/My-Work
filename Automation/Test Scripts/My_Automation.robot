*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources.txt
Library           SSHLibrary
*** Variables ***
${Cli_Username}    #####
${Cli_Password}    #####
${Cli_Hostname}    #####
*** Test Cases ***
Ui Login
    [Documentation]    Ui Login with keyword
    Open Browser    https://www.saucedemo.com/v1/    chrome
    Wait Until Page Contains Element    //div[@class="login_logo"]
    Title Should Be    Swag Labs
    Maximize Browser Window
    Input Text    xpath://input[@data-test="username"]    standard_user
    Input Text    xpath://input[@data-test="password"]    secret_sauce
    Click Button    xpath://input[@id="login-button"]
    Page Should Contain Element    xpath://div[@class="product_label"]
    Scroll Element Into View    xpath://img[@class="footer_robot"]
    Scroll Element Into View    xpath://div[@class="app_logo"]
    Click Button    xpath://button[@style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; margin: 0px; padding: 0px; border: none; opacity: 0; font-size: 8px; cursor: pointer;"]
    Capture Page Screenshot
    Wait Until Page Contains Element    xpath://a[@id="logout_sidebar_link"]
    Click Element    xpath://a[@id="logout_sidebar_link"]
    Close Browser

Ui Login Using User-Defined Keyword
    Ui Login

Cli Login
    Open Connection    ####    port=####
    ${LoginStatus}    Set Variable    False
    FOR    ${Index}    IN RANGE    0    5
        ${LoginStatus}    Run Keyword and Return Status    Login    ${Cli_Username}    ${Cli_Password}
        Run Keyword If    '${LoginStatus}' == 'True'    Exit For Loop
        Sleep    5s
    END
    Run Keyword If    '${LoginStatus}' == 'False'    Fail    SSH Connect Issue
    Write    hostname
    ${Hostname}    Read    delay=2s
    Should Contain    ${Hostname}    ${Cli_Hostname}
    Put File    D:/s.txt    /home/udai
