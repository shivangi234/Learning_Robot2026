*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
RadioButtonTestCases
        open browser        https://testautomationpractice.blogspot.com/    chrome
        maximize browser window
        input text    id:name    Shivangi Sahu
        input text    id:email    shivangi23@gmail.com
        input text    id:phone    9348978623
        input text    id:textarea    Aundh,Pune
        Sleep    5
#        for radio button keyword - select radio button     [name of radio button]      [value]
        select radio button     gender      female
#        for checkbox

CheckBoxTestcases
        select checkbox         sunday



*** Keywords ***