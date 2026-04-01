*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
TabbedWindow TestCaess
        Open Browser    https://demo.automationtesting.in/Windows.html  chrome
        Maximize Browser Window
        Sleep    2s

        Click Element    xpath://div[@id="Tabbed"]/a/button
        Sleep    2s

        Switch Window   title:Selenium
        Sleep    2s

        Click Link    Downloads
        Sleep    4s
        Close All Browsers
*** Keywords ***
