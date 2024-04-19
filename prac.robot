*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Test Cases ***
TC 1: Example Test
    ${Variable}     Set Variable    Hello, Robot
    Log    This is a sample message
    Log    Variable Value: ${Variable}






#*** Settings ***
#Documentation  Looping in Robot Framework
#Library  SeleniumLibrary
#Library  Collections
#
#*** Variables ***
#@{quickLaunchList}  Assign Leave  Leave List  Timesheets  Apply Leave  My Leave  My Timesheet
#
#*** Test Cases ***
#Verify that all the quick launch texts is same as our Text list
#    [documentation]  This test case verifies that the quick launch texts from the webpage matches our Text list.
#    [tags]  Smoke
#    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
#    Wait Until Element Is Visible  name=username  timeout=5
#    Input Text  name=username  Admin
#    Input Password  name=password  admin123
#    Click Element  xpath://button[normalize-space()='Login']
#
#    Element Should Be Visible  xpath:(//h6[normalize-space()='Dashboard'])[1] timeout=5
#    @{elementList}=  Get WebElements  css:div.quickLaunge
#    @{textList}=    Create List
#    FOR  ${element}  IN  @{elementList}
#         ${text}=  Get Text  ${element}
#         Append To List  ${textList}  ${text}
#    END
#    Log To Console  \n List from WebPage:
#    Log To Console  ${textList}
#    Log To Console  Our List:
#    Log To Console  ${quickLaunchList}
#    Lists Should Be Equal  ${textList}  ${quickLaunchList}
#    Close Browser
#
#*** Keywords ***








#*** Variables ***
#${URL}                 https://www.google.com
#${Browser}             Chrome
#${Search Box Locator}  css=input[name="q"]
#${Search Button Locator}  css=input[type="submit"]
#${Search Results Locator}  css=#search div.g
#
##@{search_keywords}    Laptop    Smartphone    Headphones    Keyboard    Mouse
#@{list}    Laptop    Smartphone    Headphones    Keyboard    Mouse



#*** Test Cases ***
#Google Search Example
#    Open Browser    ${URL}    ${Browser}
#    FOR    ${element}    IN    @{search_keywords}
#        Log    ${element}
#        Input Text    ${Search Box Locator}    ${search_keywords}
#        Click Element    ${Search Button Locator}
#        ${results_count} = Get Element Count        ${Search Results Locator}
#        Log    Found ${rresults_count}  results for keyword : ${search_keywords}
#
#    END
#    Close Browser

#
#*** Test Cases ***
#Example Test
#    Open Browser    ${URL}    ${Browser}
#    FOR ${item} IN @{list}
#    Log ${item}
#            # Perform other actions on ${item}
