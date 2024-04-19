*** Settings ***
Library     SeleniumLibrary
Resource    Wishlist.resource





*** Variables ***
${Hover_Tab}                xpath://ul[@class='top-menu notmobile']//a[normalize-space()='Electronics']
${Camera&Photo}             xpath://ul[@class='top-menu notmobile']//a[normalize-space()='Camera & photo']
${Select_Camera}            xpath://a[contains(text(),'Nikon D5500 DSLR')]
${Add_to_Cart_Button}       xpath://button[@id='add-to-cart-button-14']
${Shopping_Cart}            xpath://span[contains(text(),'Shopping cart')]
${Terms_of_Service}         xpath://input[@id='termsofservice']
${Checkout_Button}          xpath://button[@id='checkout']




*** Keywords ***
I hover the Electronics tab and select the Camera & Photo
    Sleep    5s
    Click Element    ${NopeLogo}
    Mouse Over    ${Hover_Tab}
    Click Element    ${Camera&Photo}
    Wait Until Page Contains Element    ${Select_Camera}
    Click Element    ${Select_Camera}
    Click Element    ${Add_to_Cart_Button}
