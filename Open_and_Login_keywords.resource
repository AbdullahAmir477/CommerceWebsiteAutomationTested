*** Settings ***
Library     SeleniumLibrary
Resource    Open_and_Login_Locators.resource
Resource    Register.resource
Resource    Single_Product.resource

*** Keywords ***
I Open the Website URL
    Open Browser    ${Website_URL}      ${Browser}
    Maximize Browser Window

I want to Login the Account
    Click Element    ${Login}
    Wait Until Page Contains Element    ${Login_Button}
    Input Text    ${Email_path}    ${Email_id}
    Input Password    ${Password}    ${Password_Text}
    Click Element    ${Remember_Me_Checkbox}
    Click Element    ${Login_Button}
    Sleep    5s



#I hover the Electronics tab and select the Camera & Photo
#    Mouse Over    ${Hover_Tab}
#    Click Element    ${Camera&Photo}
#    Wait Until Page Contains Element    ${Select_Camera}
#    Click Element    ${Select_Camera}
#    Click Element    ${Add_to_Cart_Button}


I open the Shopping cart page
    Click Element    ${Shopping_Cart}
    Click Element    ${Terms_of_Service}
    Click Element    ${Checkout_Button}
    Sleep    5s




# Test Suit 1 for login
Open and Login the Account
    I Open the Website URL
    I want to Login the Account

# Test Suit 2 for register
#Open and Register the Account
#    I Open the Website URL
#    I want to Register my Account