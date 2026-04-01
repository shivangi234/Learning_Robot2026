*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
MouseOperations TestCases
        Open Browser        https://www.qaplayground.com/practice/buttons       chrome
        Maximize Browser Window

        Sleep    2s
#        right click
        Wait Until Element Is Visible    xpath://button[text()='Right Click Me']    5s
        Open Context Menu    xpath://button[text()='Right Click Me']
        Sleep    2s

#        double click
        Wait Until Element Is Visible    //button[text()='Double Click Me']     5s
        Double Click Element        //button[text()='Double Click Me']
        Sleep    3s

#       Drag and Drop
        Go To    https://testautomationpractice.blogspot.com/
        Wait Until Element Is Visible    id:draggable       5s
        Sleep    3s
        Drag And Drop    id:draggable    id:droppable
        Sleep    3s

        Close Browser

*** Keywords ***
