*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${Email_id}                 abdullahsqa12@gmail.com
${Password}                 xpath://input[@id='Password']
${Confirm_password}         xpath://input[@id='ConfirmPassword']
${Password_Text}            123456789
${Register_Button}          xpath://button[@id='register-button']
${Continue_Button}          xpath://a[contains(text(),'Continue')]

${Already_registered}       xpath://li[contains(text(),'The specified email already exists')]
${Registered_Text_msg}      The specified email already exists

${Login}                    xpath://a[contains(text(),'Log in')]
${Login_Button}             xpath://button[contains(text(),'Log in')]
${Remember_Me_Checkbox}     xpath://input[@id='RememberMe']
${New_Email}                abdullahsqa12@gmail.com



#${Hover_Tab}                xpath://body/div[6]/div[2]/ul[1]/li[2]/a[1]
#${Camera&Photo}             xpath:/html/body/div[6]/div[2]/ul[1]/li[2]/ul/li[1]/a
#${Select_Camera}            xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/h2/a
#${Add_to_Cart_Button}       xpath://button[@id='add-to-cart-button-14']
#${Shopping_Cart}            xpath://span[contains(text(),'Shopping cart')]
#${Terms_of_Service}         xpath://input[@id='termsofservice']
#${Checkout_Button}          xpath://button[@id='checkout']




## Shipping Address
#${F_Name_Shipping}          xpath://input[@id='BillingNewAddress_FirstName']
#${L_Name_Shipping}          xpath://input[@id='BillingNewAddress_LastName']
#${Email_Shipping}           xpath://input[@id='BillingNewAddress_Email']
#${Company_Shipping}         xpath://input[@id='BillingNewAddress_Company']
#${Country_Shipping}         xpath://select[@id='BillingNewAddress_CountryId']
#${Country_Select}           xpath://option[contains(text(),'Pakistan')]
#${City_Shipping}            xpath://input[@id='BillingNewAddress_City']
#${Address_Shipping}         xpath://input[@id='BillingNewAddress_Address1']
#${Zip_Shipping}             xpath://input[@id='BillingNewAddress_ZipPostalCode']
#${Phone_Shipping}           xpath://input[@id='BillingNewAddress_PhoneNumber']
#${Cont_Btn_Shipping}        xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[1]/div[2]/div[1]/button[4]
#${Cont_Btn_SM}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[3]/div[2]/form[1]/div[2]/button[1]
#${CreditCard_Select}        xpath://input[@id='paymentmethod_1']
#${Cont_Btn_PM}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[4]/div[2]/div[1]/button[1]
#${Cart_Type}                xpath://select[@id='CreditCardType']
#${MasterCard_Select}        xpath://option[contains(text(),'Master card')]
#${Cardholder_Shipping}      xpath://input[@id='CardholderName']
#${CardNumber_Shipping}      xpath://input[@id='CardNumber']
#${ExpiryMonth_Shipping}     xpath://select[@id='ExpireMonth']
#${Select_Month}             xpath://option[contains(text(),'11')]
#${ExpiryYear_Shipping}      xpath://select[@id='ExpireYear']
#${Select_Year_Shipping}     xpath://option[contains(text(),'2027')]
##${Card_Code}                xapth://input[@id='CardCode']
#${Card_Number}              5555555555554444
#${Cont_Btn_PI}              xpath://body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/ol[1]/li[5]/div[2]/div[1]/button[1]
#${Confirm_Btn}              xpath://button[contains(text(),'Confirm')]
#${Page_Contain}             xpath://h1[contains(text(),'Thank you')]
#${Continue_Last_Btn}        xpath://button[contains(text(),'Continue')]


##   Compare product/Compare list
#${NopeLogo}                 xpath://body/div[6]/div[1]/div[2]/div[1]
#${Hover1}                   xpath://body/div[6]/div[2]/ul[1]/li[3]/a[1]
#${Shoes_Select}             xpath://body/div[6]/div[2]/ul[1]/li[3]/ul[1]/li[1]/a[1]
#${Add_Compare_List}         xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[2]/button[2]
#${Add_Compare_List_2}       xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[2]/button[2]
#${Product_Compare}          xpath://a[contains(text(),'product comparison')]
#${Compare_TitleName}        xpath://h1[contains(text(),'Compare products')]
#${Shoe_Name_1}              xpath://tbody/tr[3]/td[2]/a[1]
#
#${Size_Dropdown}            xpath://select[@id='product_attribute_6']
#${Size_Select}              xpath://option[contains(text(),'10')]
#${Color_Dropdown}           xpath://select[@id='product_attribute_7']
#${Color_Select}             xpath://option[contains(text(),'White/Blue')]
#${Print_Select}             xpath://body/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[6]/dl[1]/dd[3]/ul[1]/li[1]/label[1]/span[1]/span[1]
#${Add_Cart_Shoe_1}          xpath://button[@id='add-to-cart-button-24']
#${Compare_Product_list}     xpath://a[contains(text(),'Compare products list')]
#${Shoe_Name_2}              xpath://tbody/tr[3]/td[3]/a[1]
#${Size_Dropdown_2}          xpath://select[@id='product_attribute_9']
#${Size_Select_2}            xpath://option[contains(text(),'9')]
#${Color_Select_2}           xpath://body/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[5]/dl[1]/dd[2]/ul[1]/li[2]/label[1]/span[1]/span[1]
#${Add_Cart_Shoe_2}          xpath://button[@id='add-to-cart-button-25']
#${Shopping_Cart_2}          xpath://a[contains(text(),'shopping cart')]
#${Shopping_Cart_2_Title}    xpath://h1[contains(text(),'Shopping cart')]
#${Input_Qty}                xpath:/html[1]/body[1]/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/table[1]/tbody[1]/tr[2]/td[5]/input[1]       #xpath://input[@id='itemquantity11231']
#${Update_Cart_Button}       xpath://button[@id='updatecart']



