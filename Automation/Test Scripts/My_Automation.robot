*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources.txt
*** Test Cases ***
Ui Login
    [Documentation]    Ui Login with keyword
    Open Browser    https://www.saucedemo.com/v1/    chrome
    Wait Until Page Contains Element    //div[@class="login_logo"]
    Input Text    xpath://input[@data-test="username"]    standard_user
    Input Text    xpath://input[@data-test="password"]    secret_sauce
    Click Button    xpath://input[@id="login-button"]
    Page Should Contain Element    xpath://div[@class="product_label"]
    Click Button    xpath://button[@style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; margin: 0px; padding: 0px; border: none; opacity: 0; font-size: 8px; cursor: pointer;"]
    Capture Page Screenshot
    Wait Until Page Contains Element    xpath://a[@id="logout_sidebar_link"]
    Click Element    xpath://a[@id="logout_sidebar_link"]
    Comment    Close Browser

Ui Login Using User-Defined Keyword
    Ui Login

Test
    Ui Login
