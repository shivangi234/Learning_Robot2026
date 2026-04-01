*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
SwitchToMultipleBrowsers TestCases
        Open Browser    https://www.google.com/     chrome
        Maximize Browser Window
        Sleep    2s

        Open Browser    https://www.bing.com/     chrome
        Maximize Browser Window
        Sleep    2s

        Switch Browser    1
        ${title1} =   get title
        Log To Console    ${title1}

        Switch Browser    2
        ${title2} =   get title
        Log To Console    ${title2}

        Sleep    3s
        Close All Browsers

*** Keywords ***
