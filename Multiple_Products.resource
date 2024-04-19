*** Settings ***
Library     SeleniumLibrary
Resource    Shipping_Address.resource
Resource    Open_and_Login_keywords.resource


*** Variables ***
#   Compare product/Compare list
${NopeLogo}                 xpath://body/div[6]/div[1]/div[2]/div[1]
${Hover1}                   xpath://body/div[6]/div[2]/ul[1]/li[3]/a[1]
${Shoes_Select}             xpath://body/div[6]/div[2]/ul[1]/li[3]/ul[1]/li[1]/a[1]
${Add_Compare_List}         xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[2]/button[2]
${Add_Compare_List_2}       xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[2]/button[2]
${Product_Compare}          xpath://a[contains(text(),'product comparison')]
${Compare_TitleName}        xpath://h1[contains(text(),'Compare products')]
${Shoe_Name_1}              xpath://tbody/tr[3]/td[2]/a[1]


${Size_Dropdown}            xpath://select[@id='product_attribute_6']
${Size_Select}              xpath://option[contains(text(),'10')]
${Color_Dropdown}           xpath://select[@id='product_attribute_7']
${Color_Select}             xpath://option[contains(text(),'White/Blue')]
${Print_Select}             xpath://body/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[6]/dl[1]/dd[3]/ul[1]/li[1]/label[1]/span[1]/span[1]
${Add_Cart_Shoe_1}          xpath://button[@id='add-to-cart-button-24']
${Compare_Product_list}     xpath://a[contains(text(),'Compare products list')]
${Shoe_Name_2}              xpath://tbody/tr[3]/td[3]/a[1]
${Size_Dropdown_2}          xpath://select[@id='product_attribute_9']
${Size_Select_2}            xpath://option[contains(text(),'9')]
${Color_Select_2}           xpath://body/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[5]/dl[1]/dd[2]/ul[1]/li[2]/label[1]/span[1]/span[1]
${Add_Cart_Shoe_2}          xpath://button[@id='add-to-cart-button-25']
${Shopping_Cart_2}          xpath://a[contains(text(),'shopping cart')]
${Shopping_Cart_2_Title}    xpath://h1[contains(text(),'Shopping cart')]
${Input_Qty}                xpath:/html[1]/body[1]/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/table[1]/tbody[1]/tr[2]/td[5]/input[1]       #xpath://input[@id='itemquantity11231']
${Update_Cart_Button}       xpath://button[@id='updatecart']
${Terms_of_Service}         xpath://input[@id='termsofservice']
${Checkout_Button}          xpath://button[@id='checkout']



*** Keywords ***
I Ordering Multiple Products
    Click Element    ${NopeLogo}
    Sleep    3s
    Mouse Over    ${Hover1}
    Click Element    ${Shoes_Select}
    Click Element    ${Add_Compare_List}
    Sleep    3s
    Click Element    ${Add_Compare_List_2}
    Sleep    3s
    Click Element    ${Product_Compare}
    Wait Until Page Contains Element    ${Compare_TitleName}
    Click Element    ${Shoe_Name_1}
    Sleep    3s
    Click Element    ${Size_Dropdown}
    Click Element    ${Size_Select}
    Click Element    ${Color_Dropdown}
    Click Element    ${Color_Select}
    Click Element    ${Print_Select}
    Click Element    ${Add_Cart_Shoe_1}
    Click Element    ${Compare_Product_list}
    Click Element    ${Shoe_Name_2}
    Sleep    3s
    Click Element    ${Size_Dropdown_2}
    Click Element    ${Size_Select_2}
    Click Element    ${Color_Select_2}
    Click Element    ${Add_Cart_Shoe_2}
    Sleep    4s
    Click Element    ${Shopping_Cart_2}
    Wait Until Page Contains Element    ${Shopping_Cart_2_Title}
    Click Element    ${Input_Qty}
    Clear Element Text    ${Input_Qty}
    Input Text    ${Input_Qty}    2
    Click Element    ${Update_Cart_Button}
    Click Element    ${Terms_of_Service}
    Click Element    ${Checkout_Button}
    Sleep    3s
    #I Enter the Shipping Address and Place Order