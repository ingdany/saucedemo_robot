*** Comments ***
This is a test suite for the Saucedemo login page.

*** Settings ***
Resource    ../resources/auth/login.resource

*** Variables ***
${BROWSER}    chrome
${TAGGING}    smoke
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${WRONG_USERNAME}    invalid_user
${WRONG_PASSWORD}    wrong_password
${MESSAGE_ERROR}    Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Valid Login Test
    [Documentation]   This test case validates a successful login
    [Tags]    ${TAGGING}
    [Setup]    Open Login Page
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    [Teardown]    Close Browser

Invalid Login Test
    [Documentation]   This test case validates an unsuccessful login
    [Tags]    ${TAGGING}
    [Setup]    Open Login Page
    Login With Credentials    ${WRONG_USERNAME}    ${WRONG_PASSWORD}
    Element Text Should Be    ${LOGIN_ERROR_MSG}    ${MESSAGE_ERROR}
    [Teardown]    Close Browser