*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${WEBSITE_URL}      https://projects.boundlesstechnologies.net/bss/
${BROWSER}          Chrome
${Contact_Us_tab}   //*[@id="menu-item-1682"]/a


*** Keywords ***
I Open the BSS Website
   Open Browser    ${WEBSITE_URL}    ${BROWSER}
   Maximize Browser Window
   Sleep    3s
   
I Click on the Contact Us Tab
    Click Element    ${Contact_Us_tab}
    Sleep    3s
    Wait Until Element Contains    locator    text