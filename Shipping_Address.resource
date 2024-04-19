*** Settings ***
Library     SeleniumLibrary




*** Variables ***

${F_Name_Shipping}          xpath://input[@id='BillingNewAddress_FirstName']
${L_Name_Shipping}          xpath://input[@id='BillingNewAddress_LastName']
${Email_Shipping}           xpath://input[@id='BillingNewAddress_Email']
${Company_Shipping}         xpath://input[@id='BillingNewAddress_Company']
${Country_Shipping}         xpath://select[@id='BillingNewAddress_CountryId']
${Country_Select}           xpath://option[contains(text(),'Pakistan')]
${City_Shipping}            xpath://input[@id='BillingNewAddress_City']
${Address_Shipping}         xpath://input[@id='BillingNewAddress_Address1']
${Zip_Shipping}             xpath://input[@id='BillingNewAddress_ZipPostalCode']
${Phone_Shipping}           xpath://input[@id='BillingNewAddress_PhoneNumber']
${Cont_Btn_Shipping}        xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[1]/div[2]/div[1]/button[4]
${Cont_Btn_SM}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[3]/div[2]/form[1]/div[2]/button[1]
${CreditCard_Select}        xpath://input[@id='paymentmethod_1']
${Cont_Btn_PM}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[4]/div[2]/div[1]/button[1]
${Cart_Type}                xpath://select[@id='CreditCardType']
${MasterCard_Select}        xpath://option[contains(text(),'Master card')]
${Cardholder_Shipping}      xpath://input[@id='CardholderName']
${CardNumber_Shipping}      xpath://input[@id='CardNumber']
${ExpiryMonth_Shipping}     xpath://select[@id='ExpireMonth']
${Select_Month_Shipping}    xpath://option[contains(text(),'11')]
${ExpiryYear_Shipping}      xpath://select[@id='ExpireYear']
${Select_Year_Shipping}     xpath://option[contains(text(),'2027')]
${Card_Code}                xpath://input[@id='CardCode']
${Card_Number}              5555555555554444
${Cont_Btn_PI}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[5]/div[2]/div[1]/button[1]
${Confirm_Btn}              xpath://button[contains(text(),'Confirm')]
${Page_Contain}             xpath://h1[contains(text(),'Thank you')]
${Continue_Last_Btn}        xpath://button[contains(text(),'Continue')]




*** Keywords ***
I Enter the Shipping Address and Place Order
    Input Text    ${F_Name_Shipping}    tester
    Input Text    ${L_Name_Shipping}    QA
    Input Text    ${Email_Shipping}    abdullahsqa12@gmail.com
    Input Text    ${Company_Shipping}    xyz
    Click Element    ${Country_Shipping}
    Sleep    3s
    #Select From List By Index    ${Country_Select}
    Click Element    ${Country_Select}
    Sleep    3s
    Input Text    ${City_Shipping}    Lahore
    Input Text    ${Address_Shipping}    Johar Town
    Input Text    ${Zip_Shipping}    540000
    Input Text    ${Phone_Shipping}    03335577999
    Click Element    ${Cont_Btn_Shipping}
    Sleep    3s
    Click Element    ${Cont_Btn_SM}
    Sleep    3s
    Click Element    ${CreditCard_Select}
    Click Element    ${Cont_Btn_PM}
    Sleep    3s
    Click Element    ${Cart_Type}
    #Select From List By Index    ${MasterCard_Select}
    Click Element    ${MasterCard_Select}
    Input Text    ${Cardholder_Shipping}    tester
    Input Text    ${CardNumber_Shipping}    5555555555554444
    Click Element    ${ExpiryMonth_Shipping}
    #Select From List By Index    ${Select_Month}
    Click Element    ${Select_Month_Shipping}
    Click Element    ${ExpiryYear_Shipping}
    #Select From List By Index    ${Select_Year_Shipping}
    Click Element    ${Select_Year_Shipping}
    Click Element    ${Card_Code}
    Input Text    ${Card_Code}    234

    Click Element    ${Cont_Btn_PI}
    Sleep    2s
    Click Element    ${Confirm_Btn}
    Wait Until Page Contains Element    ${Page_Contain}
    Click Element    ${Continue_Last_Btn}