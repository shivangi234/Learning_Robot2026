*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
BrowserNavigation Testcases
        Open Browser    https://www.google.com/     chrome
        Maximize Browser Window
        ${loc} =    Get Location
        Log To Console    ${loc}
        Sleep    2s

        Go To    https://www.bing.com/
        ${loc} =    Get Location
        Log To Console    ${loc}
        Sleep    2s

        Go Back
        ${loc} =    Get Location
        Log To Console    ${loc}
        Sleep    2s

        Close Browser
        


*** Keywords ***
