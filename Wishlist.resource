*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${NopeLogo}                 xpath://body/div[6]/div[1]/div[2]/div[1]
${Jewelry_Tab}              xpath://body/div[6]/div[2]/ul[1]/li[6]/a[1]
${Necklace_Select}          xpath://a[contains(text(),'Elegant Gemstone Necklace (rental)')]
${Necklace_Title_Name}      xpath://h1[contains(text(),'Elegant Gemstone Necklace (rental)')]
#${Click_Start_Date}         xpath:/html[1]/body[1]/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[5]/div[1]/div[2]/input[1]
${Click_Start_Date}         id:rental_start_date_40
${Enter_Start_Date}         xpath://a[contains(text(),'30')]
#${Click_End_Date}           xpath:/html[1]/body[1]/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[5]/div[2]/div[2]/input[1]
${Click_End_Date}           id:rental_end_date_40
${Enter_End_Date}           xpath://a[contains(text(),'31')]
${Add_to_Wishlist}          id:add-to-wishlist-button-40
#${Add_to_Wishlist}          xpath:/html[1]/body[1]/div[6]/div[3]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[9]/div[1]/button[1]





*** Keywords ***

I Add Product in Wishlist
    Click Element    ${NopeLogo}
    Click Element    ${Jewelry_Tab}
    Sleep    3s
    Click Element    ${Necklace_Select}
    Wait Until Page Contains Element    ${Necklace_Title_Name}
    Click Element    ${Click_Start_Date}
    Click Element    ${Enter_Start_Date}
    Sleep    2s
    Click Element    ${Click_End_Date}
    Click Element    ${Enter_End_Date}
    Click Element    ${Add_to_Wishlist}
    Sleep    2s
    #Click Element    ${NopeLogo}






