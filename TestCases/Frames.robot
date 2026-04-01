*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Frame TestCases
        Open Browser    https://rahulshettyacademy.com/AutomationPractice/      chrome
        Select Frame    id:courses-iframe

        Sleep    2s
        Click Link    Courses
        Sleep    2s
        
        Unselect Frame
        Sleep    3s
*** Keywords ***