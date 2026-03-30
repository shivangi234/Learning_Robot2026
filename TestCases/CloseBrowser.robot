*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
CloseBrowser Testcases
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    Open Browser    https://demowebshop.tricentis.com/    chrome
    Maximize Browser Window

#    only close the previous browser
#    Close Browser

#    close all browsers
    Close All Browsers

*** Keywords ***
