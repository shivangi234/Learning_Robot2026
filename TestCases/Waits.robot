*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
WaitTestCases
#    To check the speed by default
#    ${speed} =      get selenium speed
#    Log To Console  ${speed}

    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

#   Waits 4 types,
#   1️⃣ Sleep  2️⃣ Set Selenium Speed 3️⃣ set selenium timeout 4️⃣ set selenium implicit wait


#    Sleep    3s
#    [it only waits for 3s after maximizing the window ,then the process goes faster]

#    Set Selenium Speed    3s
#   ⬇️⬇️⬇️Set Selenium Speed - This will wait all the elements for 3 sec...


#    Set Selenium Timeout    10 seconds
#    Wait Until Page Contains    Registration    # automatically wait for 5seconds

#   set selenium timeout
#   wait for only one element


#    Set Selenium Implicit Wait    10 seconds
#   set selenium implicit wait - it will wait as per specified time,
#    but if the element is visible it will immediately returns the output



    Select Radio Button    Gender    F
    Input Text    id:FirstName    Shivangi
    Input Text    id:LastName    Sahu
    Input Text    id:Email    shivangi23@gmail.com
    Input Text    id:Password    Shivangi@123
    Input Text    id:ConfirmPassword    Shivangi@123



    Close Browser


*** Keywords ***
