*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKOUT_BUTTON}    //a[normalize-space()='CHECKOUT']


*** Keywords ***
Click Checkout
    Click Element    locator=${CHECKOUT_BUTTON}
    Page Should Contain    text=Checkout: Your Information
    Sleep    2s