*** Settings ***
Library     SeleniumLibrary
Resource    Open_and_Login_Locators.resource
Resource    Open_and_Login_keywords.resource


*** Variables ***
${Website_URL}                  https://demo.nopcommerce.com/
${Browser}                      Chrome
${Register_Personal_Detail}     xpath://strong[contains(text(),'Your Personal Details')]
${Register}                     xpath://a[contains(text(),'Register')]
${Gender}                       xpath://input[@id='gender-male']
${First_Name}                   xpath://input[@id='FirstName']
${Last_Name}                    xpath://input[@id='LastName']
${DOB_Date}                     xpath://select[@name='DateOfBirthDay']
${DOB_Month}                    xpath://select[@name='DateOfBirthMonth']
${DOB_Year}                     xpath://select[@name='DateOfBirthYear']
${Select_Date}                  xpath://option[normalize-space()='2']
${Select_Month}                 xpath://option[normalize-space()='April']
${Select_Year}                  xpath://option[contains(text(),'2000')]
${Email_path}                   xpath://input[@id='Email']
${Company_Path}                 xpath://input[@id='Company']
${Company_Name}                 MobileShop



*** Keywords ***

I want to Register my Account
    Click Element    ${Register}
    Wait Until Page Contains Element    ${Register_Personal_Detail}
    Click Element    ${Gender}
    Input Text    ${First_Name}    Abdullah
    Input Text    ${Last_Name}    Test
    Click Element    ${DOB_Date}
    Click Element    ${Select_Date}
    Click Element    ${DOB_Month}
    Click Element    ${Select_Month}
    Click Element    ${DOB_Year}
    Click Element    ${Select_Year}
    Input Text    ${Email_path}    abdullahsqa12@gmail.com
    Input Text    ${Company_Path}    ${Company_Name}
    Input Password    ${Password}    ${Password_Text}
    Input Password    ${Confirm_password}    ${Password_Text}
    Click Element    ${Register_Button}


Open and Register the Account
    I Open the Website URL
    I want to Register my Account