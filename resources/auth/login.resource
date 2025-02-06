# resources/pages# 
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}          https://www.saucedemo.com/v1/index.html
${USERNAME_INPUT}     id:user-name
${PASSWORD_INPUT}     id:password
${LOGIN_BUTTON}       id:login-button
${LOGIN_ERROR_MSG}    css:h3[data-test='error']

*** Keywords ***
Open Login Page
    [Arguments]    ${BROWSER}
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_INPUT}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button