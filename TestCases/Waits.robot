*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
WaitTestCases
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
#    Sleep    3s [it only waits for 3s after maximizing the window ,then the process goes faster]

#   ⬇️⬇️⬇️Set Selenium Speed - This will wait all the elements for 3 sec...
#    Set Selenium Speed    3s



    Select Radio Button    Gender    F
    Input Text    id:FirstName    Shivangi
    Input Text    id:LastName    Sahu
    Input Text    id:Email    shivangi23@gmail.com
    Input Text    id:Password    Shivangi@123
    Input Text    id:ConfirmPassword    Shivangi@123



    Close Browser


*** Keywords ***
