*** Comments ***
This is a test suite for the Saucedemo login page.

*** Settings ***
Resource    ../resources/auth/login.resource
Resource    ../resources/inventory.resource
Resource    ../resources/your_cart.resource
Resource    ../resources/checkout.resource
Resource    ../resources/checkout_overview.resource

*** Variables ***
# ${BROWSER}    chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${WRONG_USERNAME}    invalid_user
${WRONG_PASSWORD}    wrong_password
${MESSAGE_ERROR}    Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Valid Login Test
    [Documentation]   This test case validates a successful login
    [Tags]    Smoke
    [Setup]    Open Login Page   ${BROWSER} 
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Validate Page
    Add to cart
    Go to Shopping cart
    Click Checkout
    Fill Your Information
    Click Finish
    [Teardown]    Close Browser

Invalid Login Test
    [Documentation]   This test case validates an unsuccessful login
    [Tags]    Skip
    [Setup]    Open Login Page   ${BROWSER}
    Login With Credentials    ${WRONG_USERNAME}    ${WRONG_PASSWORD}
    Element Text Should Be    ${LOGIN_ERROR_MSG}    ${MESSAGE_ERROR}
    [Teardown]    Close Browser