*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${PAGE_TITLE}    Products
${ONESIE_LOCATION}    //div[contains(text(),'Sauce Labs Onesie')]/ancestor::div[2]//div[@class='pricebar']//button[contains(text(),'ADD TO CART')]
${FLEECE_JACKET_LOCATION}    //div[contains(text(),'Sauce Labs Fleece Jacket')]/ancestor::div[2]//div[@class='pricebar']//button[contains(text(),'ADD TO CART')]
${SHOPPING_CART}    //a[@class='shopping_cart_link fa-layers fa-fw']//*[name()='svg']

*** Keywords ***
Validate Page
    Page Should Contain    text=${PAGE_TITLE}

Add to cart
    Click Element    locator=${ONESIE_LOCATION}
    Click Element    locator=${FLEECE_JACKET_LOCATION} 
    Sleep    2s

Go to Shopping cart
    Click Element    locator=${SHOPPING_CART}
    Sleep    2s
    Page Should Contain    text=Your Cart