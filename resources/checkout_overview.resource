*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FINISH_BUTTON}    //a[normalize-space()='FINISH']

*** Keywords ***
Click Finish
    Click Element    locator=${FINISH_BUTTON}
    Page Should Contain    text=Finish
    Sleep    2s