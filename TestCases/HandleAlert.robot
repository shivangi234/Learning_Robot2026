*** Settings ***
Library     SeleniumLibrary
Library    XML
*** Variables ***
*** Test Cases ***
AlertTestCases
        Open Browser    https://testautomationpractice.blogspot.com/    chrome
        Click Button    id:alertBtn
        Sleep    3s
        Handle Alert    accept

        Sleep    5s
        Click Button    id:confirmBtn
        Handle Alert    dismiss



*** Keywords ***
