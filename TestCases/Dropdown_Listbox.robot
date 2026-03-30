*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Dropdown Testcases
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    id:country
#    Select From List By Value    country    india
#    Sleep    2s
#    Select From List By Label    country    India
#    Sleep    2s
    Select From List By Index    country    9
    Sleep    2s
Listbox Testcases
    Wait Until Element Is Visible    id:colors

    Select From List By Value    colors    red  
    Select From List By Value    colors    green
    Sleep    5s
    Close Browser

*** Keywords ***
