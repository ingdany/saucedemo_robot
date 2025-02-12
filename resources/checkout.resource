*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_NAME_LOCATOR}    //input[@id='first-name']
${LAST_NAME_LOCATOR}    //input[@id='last-name']
${POSTAL_CODE_LOCATOR}    //input[@id='postal-code']
${CONTINUE_BUTTON_LOCATOR}    //input[@value='CONTINUE']

*** Keywords ***
Fill Your Information
    Input Text   locator=${FIRST_NAME_LOCATOR}    text=John
    Input Text   locator=${LAST_NAME_LOCATOR}    text=Doe
    Input Text   locator=${POSTAL_CODE_LOCATOR}    text=12345
    Click Element    locator=${CONTINUE_BUTTON_LOCATOR}
    Page Should Contain    text=Checkout: Overview
    Sleep    2s
